# all_point_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2999b79-1ae1-8b46-ee93-ed33971f98af",
  "kind": "theorem",
  "lexical_name": "all_point_margin",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "all-point-margin--c78082b2633b128c3fa67ee5",
  "source": {
    "blob": "3c37bb480b329df6cb264ec9566937c1eb44ad69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c78082b2633b128c3fa67ee5f38e42d07df41bc781f86ac09c92710ff7c0de71",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2999b79-1ae1-8b46-ee93-ed33971f98af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_point_margin {s : ℂ} (hs : s ∈ certificate.carrier) (hoff : s.re ≠ 1/2) :
    (3233/14400 : ℝ) ≤ energy config.polynomial (MirrorChannels.center s) (MirrorChannels.offset s)-
      ((1/5 : ℝ)^2+‖MirrorChannels.offset s‖^2*(2/3 : ℝ)^2) := by
  have h := certificate.channel_bounds hs hoff
  have hf : certificate.model=config.polynomial := funext source_binding
  rw [hf] at h
  have he : (3/5 : ℝ) ≤ ‖even config.polynomial (MirrorChannels.center s) (MirrorChannels.offset s)‖ :=
    (by exact_mod_cast even_lower).trans h.1
  have ho : (1/4 : ℝ) ≤ ‖odd config.polynomial (MirrorChannels.center s) (MirrorChannels.offset s)‖ :=
    (by exact_mod_cast odd_lower).trans h.2
  have he2 := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 3/5) he 2
  have ho2 := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 1/4) ho 2
  have hd : ‖MirrorChannels.offset s‖^2 ≤ (1/4 : ℝ) := by
    rw [MirrorChannels.offset_norm]
    have hx : |s.re-1/2| ≤ (1/2 : ℝ) := hs.1
    nlinarith [abs_nonneg (s.re-1/2)]
  have hp := mul_le_mul_of_nonneg_left ho2 (sq_nonneg ‖MirrorChannels.offset s‖)
  unfold energy
  nlinarith

/-- An actual continuum classification, not a new height or zero-count result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairRegion.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c37bb480b329df6cb264ec9566937c1eb44ad69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

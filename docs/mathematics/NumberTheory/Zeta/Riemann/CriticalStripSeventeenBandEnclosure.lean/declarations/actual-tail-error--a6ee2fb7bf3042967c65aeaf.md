# actual_tail_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79511480-a51e-89f6-b844-5a21bf06f8e3",
  "kind": "lemma",
  "lexical_name": "actual_tail_error",
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
  "slug": "actual-tail-error--a6ee2fb7bf3042967c65aeaf",
  "source": {
    "blob": "02dbef260f6bc08ed237b835c7522210e175ad4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 146,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6ee2fb7bf3042967c65aeaf82fc38ce4d28e0bb64eb7bc656a4b93be0e35f6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79511480-a51e-89f6-b844-5a21bf06f8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma actual_tail_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) :
    ‖poleNormalizedZeta s-SexticPrimitive.finiteModel 8 s‖ ≤
      (18^6*19 : ℝ)/(30240*(11/2)*65536) := by
  have hp := (parameter_products hx hx1 ht ht1).2.2.2.2
  have he := SexticPrimitive.finiteModel_error (N := 8) (σ := (1/2 : ℝ))
    (by decide) (by norm_num) hx
  norm_num only [Nat.cast_ofNat] at he
  apply he.trans
  have hm := mul_le_mul hp (div_le_div_of_nonneg_right CutoffEightJet.cutoff_weight_bound (by norm_num))
    (by positivity : 0 ≤ (8 : ℝ)^(-(1/2+5 : ℝ))/(30240*(1/2+5))) (by positivity)
  convert hm using 1 <;> ring

/-- The complete uniform source enclosure; every error has its own supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02dbef260f6bc08ed237b835c7522210e175ad4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

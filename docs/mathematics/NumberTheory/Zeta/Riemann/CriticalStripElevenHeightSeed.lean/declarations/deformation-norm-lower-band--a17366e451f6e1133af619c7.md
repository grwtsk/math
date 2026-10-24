# deformation_norm_lower_band

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c9aa39d-5408-9c6c-25dd-c0173d58671c",
  "kind": "theorem",
  "lexical_name": "deformation_norm_lower_band",
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
  "slug": "deformation-norm-lower-band--a17366e451f6e1133af619c7",
  "source": {
    "blob": "73bfb3df3acd33a26689a28edb1bbfe2c80d40a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 194,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17366e451f6e1133af619c7cb704528dd27d794fe3eca2e23207a9f78b33fe3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c9aa39d-5408-9c6c-25dd-c0173d58671c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deformation_norm_lower_band {s : ℂ} {t : ℝ}
    (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hlo : (10 : ℝ) ≤ |s.im|)
    (hhi : |s.im| ≤ (11 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (1/1000 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_of_band_enclosure hlo
  have he : deformation t s-(s-1) = (t : ℂ)*(poleNormalizedZeta s-(s-1)) := by
    unfold deformation; ring
  rw [he, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (band_source_error hx hx1 hlo hhi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bfb3df3acd33a26689a28edb1bbfe2c80d40a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

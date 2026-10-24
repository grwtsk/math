# Gammaℝ_one_sub_mul_Gammaℝ_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80a49e26-1d1a-ea41-fb3c-085a47c95822",
  "kind": "lemma",
  "lexical_name": "Gammaℝ_one_sub_mul_Gammaℝ_one_add",
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
  "slug": "gamma-one-sub-mul-gamma-one-add--4923a2c0dd24a7b09e0a5ae6",
  "source": {
    "blob": "0e75ce814687bb1dc1b9068489e29ce055015adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 148,
    "path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant3aff948f7b8f1974e8d1414cfaf9b2cdd2316e961bbd323d051cd0f80d74c18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4923a2c0dd24a7b09e0a5ae63c44c37c0ea6aed17f293792372d3df6f6367b1e",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Deligne/Variant3aff948f7b8f1974e8d1414cfaf9b2cdd2316e961bbd323d051cd0f80d74c18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a49e26-1d1a-ea41-fb3c-085a47c95822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gammaℝ_one_sub_mul_Gammaℝ_one_add (s : ℂ) :
    Gammaℝ (1 - s) * Gammaℝ (1 + s) = (cos (π * s / 2))⁻¹ :=
  calc Gammaℝ (1 - s) * Gammaℝ (1 + s)
  _ = (π ^ ((s - 1) / 2) * π ^ ((-1 - s) / 2)) *
        (Gamma ((1 - s) / 2) * Gamma (1 - (1 - s) / 2)) := by
    simp only [Gammaℝ_def]
    ring_nf
  _ = (π ^ ((s - 1) / 2) * π ^ ((-1 - s) / 2) * π ^ (1 : ℂ)) / sin (π / 2 - π * s / 2) := by
    rw [Complex.Gamma_mul_Gamma_one_sub, cpow_one]
    ring_nf
  _ = _ := by
    simp_rw [← cpow_add _ _ (ofReal_ne_zero.mpr pi_ne_zero),
      Complex.sin_pi_div_two_sub]
    ring_nf
    rw [cpow_zero, one_mul]

/-- Another formulation of the reflection formula in terms of `Gammaℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Deligne/Variant3aff948f7b8f1974e8d1414cfaf9b2cdd2316e961bbd323d051cd0f80d74c18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Deligne/Variant3aff948f7b8f1974e8d1414cfaf9b2cdd2316e961bbd323d051cd0f80d74c18c.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e75ce814687bb1dc1b9068489e29ce055015adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

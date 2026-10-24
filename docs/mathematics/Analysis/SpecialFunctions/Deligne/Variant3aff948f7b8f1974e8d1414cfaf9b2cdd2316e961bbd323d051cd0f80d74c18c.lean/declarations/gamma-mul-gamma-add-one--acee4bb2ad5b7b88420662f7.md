# Gammaℝ_mul_Gammaℝ_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:073e0247-cb05-5b20-819c-89d9344abc56",
  "kind": "lemma",
  "lexical_name": "Gammaℝ_mul_Gammaℝ_add_one",
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
  "slug": "gamma-mul-gamma-add-one--acee4bb2ad5b7b88420662f7",
  "source": {
    "blob": "0e75ce814687bb1dc1b9068489e29ce055015adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 132,
    "path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant3aff948f7b8f1974e8d1414cfaf9b2cdd2316e961bbd323d051cd0f80d74c18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acee4bb2ad5b7b88420662f773738b4614c587cb4b49b94e53f18b303540775a",
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

Occurrence: `result:073e0247-cb05-5b20-819c-89d9344abc56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gammaℝ_mul_Gammaℝ_add_one (s : ℂ) : Gammaℝ s * Gammaℝ (s + 1) = Gammaℂ s := by
  simp only [Gammaℝ_def, Gammaℂ_def]
  calc
  _ = (π ^ (-s / 2) * π ^ (-(s + 1) / 2)) * (Gamma (s / 2) * Gamma (s / 2 + 1 / 2)) := by ring_nf
  _ = 2 ^ (1 - s) * (π ^ (-1 / 2 - s) * π ^ (1 / 2 : ℂ)) * Gamma s := by
    rw [← cpow_add _ _ (ofReal_ne_zero.mpr pi_ne_zero), Complex.Gamma_mul_Gamma_add_half,
      sqrt_eq_rpow, ofReal_cpow pi_pos.le, ofReal_div, ofReal_one, ofReal_ofNat]
    ring_nf
  _ = 2 * ((2 : ℝ) ^ (-s) * π ^ (-s)) * Gamma s := by
    rw [sub_eq_add_neg, cpow_add _ _ two_ne_zero, cpow_one,
      ← cpow_add _ _ (ofReal_ne_zero.mpr pi_ne_zero), ofReal_ofNat]
    ring_nf
  _ = 2 * (2 * π) ^ (-s) * Gamma s := by
    rw [← mul_cpow_ofReal_nonneg two_pos.le pi_pos.le, ofReal_ofNat]

/-- Reformulation of the reflection formula in terms of `Gammaℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Deligne/Variant3aff948f7b8f1974e8d1414cfaf9b2cdd2316e961bbd323d051cd0f80d74c18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Deligne/Variant3aff948f7b8f1974e8d1414cfaf9b2cdd2316e961bbd323d051cd0f80d74c18c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e75ce814687bb1dc1b9068489e29ce055015adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

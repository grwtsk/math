# single_defect_square_eq_neg_discriminant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac5b7534-5823-6e5a-8c60-ad2d113b141b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88cb6380-a58d-f30f-9efa-330e7dc5c542",
  "kind": "theorem",
  "lexical_name": "single_defect_square_eq_neg_discriminant",
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
  "slug": "single-defect-square-eq-neg-discriminant--a89d9b8b4534d875b2cab460",
  "source": {
    "blob": "accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a89d9b8b4534d875b2cab460f9985110744657fbc19f7948dc76c33799fcfd18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88cb6380-a58d-f30f-9efa-330e7dc5c542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_defect_square_eq_neg_discriminant (ξ x : ℝ) :
    Complex.normSq (1 - chi ξ (x ^ 2)) = -phaseDiscriminant ξ x := by
  rw [normSq_one_sub_chi, Real.log_pow]
  norm_num only [Nat.cast_ofNat]
  rw [show ξ * (2 * Real.log x) = 2 * (ξ * Real.log x) by ring, Real.cos_two_mul]
  rw [phaseDiscriminant, phaseTrace, chi_re]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# finrank_eq_of_finiteIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ecd0078-0ad8-9bee-693b-4d074c6194b2",
  "kind": "lemma",
  "lexical_name": "finrank_eq_of_finiteIndex",
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
  "slug": "finrank-eq-of-finiteindex--853949d38ab047c527566fd1",
  "source": {
    "blob": "b265510e0eae62cccf7cb9140bb0d9a4aefa2717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:853949d38ab047c527566fd145806c7db554b1c35e65d24b64edd5d412d452c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ecd0078-0ad8-9bee-693b-4d074c6194b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_eq_of_finiteIndex [Module.Finite ℤ M] [IsTorsionFree ℤ M] (A : AddSubgroup M)
    [A.FiniteIndex] :
    finrank ℤ A = finrank ℤ M := by
  refine le_antisymm A.toIntSubmodule.finrank_le ?_
  have : finrank ℤ (DistribSMul.toLinearMap ℤ M A.index).range = finrank ℤ M :=
    (DistribSMul.toLinearMap ..).finrank_range_of_inj <|
      distribSMulToLinearMap_injective_of_isTorsionFree FiniteIndex.index_ne_zero
  rw [← this]
  refine Submodule.finrank_mono <| (OrderIso.symm_apply_le toIntSubmodule).mp fun m hm ↦ ?_
  obtain ⟨x, rfl⟩ : ∃ x, A.index • x = m := by simpa using hm
  exact A.nsmul_index_mem x

/-- If `A ≤ B` are subgroups of an additive group `M` such that `A` has finite relative index
in `B`, where `B` is finitely generated and torsion-free as a `ℤ`-module, then `A` and `B`
have the same rank. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b265510e0eae62cccf7cb9140bb0d9a4aefa2717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

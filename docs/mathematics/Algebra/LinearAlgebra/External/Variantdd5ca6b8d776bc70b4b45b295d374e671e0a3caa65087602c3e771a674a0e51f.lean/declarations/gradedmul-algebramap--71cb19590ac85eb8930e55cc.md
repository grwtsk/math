# gradedMul_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "211f269a90fb27ed9f21b1f73cc890de4be5491d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72bc011f-2db5-435a-de7c-123732ee6509",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94639dd3-b609-fde5-2f5c-31b4f025dafa",
  "kind": "theorem",
  "lexical_name": "gradedMul_algebraMap",
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
  "slug": "gradedmul-algebramap--71cb19590ac85eb8930e55cc",
  "source": {
    "blob": "211f269a90fb27ed9f21b1f73cc890de4be5491d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71cb19590ac85eb8930e55cce78f46869176b4b35c4520b467587efc34bb4b8c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94639dd3-b609-fde5-2f5c-31b4f025dafa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedMul_algebraMap (x : (⨁ i, 𝒜 i) ⊗[R] (⨁ i, ℬ i)) (r : R) :
    gradedMul R 𝒜 ℬ x (algebraMap R _ r ⊗ₜ 1) = r • x := by
  suffices (gradedMul R 𝒜 ℬ).flip (algebraMap R _ r ⊗ₜ 1) = DistribMulAction.toLinearMap R _ r by
    exact DFunLike.congr_fun this x
  ext
  dsimp
  erw [tmul_of_gradedMul_of_tmul]
  rw [mul_zero, uzpow_zero, one_smul, smul_tmul',
      mul_one, _root_.Algebra.smul_def, Algebra.commutes]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211f269a90fb27ed9f21b1f73cc890de4be5491d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

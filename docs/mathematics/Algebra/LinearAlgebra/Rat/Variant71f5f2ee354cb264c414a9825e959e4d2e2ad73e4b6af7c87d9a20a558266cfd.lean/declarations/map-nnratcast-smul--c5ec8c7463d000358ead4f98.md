# map_nnratCast_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f426d29c-0837-8f80-37b6-9082bc2d9d97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e4e5500-7aa9-6c0c-16f7-8f344c352675",
  "kind": "theorem",
  "lexical_name": "map_nnratCast_smul",
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
  "slug": "map-nnratcast-smul--c5ec8c7463d000358ead4f98",
  "source": {
    "blob": "d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 18,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ec8c7463d000358ead4f989bcf163391ba6ae04ebf21194ef31cd6ede66baa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e4e5500-7aa9-6c0c-16f7-8f344c352675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_nnratCast_smul [AddCommMonoid M] [AddCommMonoid M₂] {F : Type*} [FunLike F M M₂]
    [AddMonoidHomClass F M M₂] (f : F) (R S : Type*) [DivisionSemiring R] [DivisionSemiring S]
    [Module R M] [Module S M₂] (c : ℚ≥0) (x : M) :
    f ((c : R) • x) = (c : S) • f x := by
  rw [NNRat.cast_def, NNRat.cast_def, div_eq_mul_inv, div_eq_mul_inv, mul_smul, mul_smul,
    map_natCast_smul f R S, map_inv_natCast_smul f R S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

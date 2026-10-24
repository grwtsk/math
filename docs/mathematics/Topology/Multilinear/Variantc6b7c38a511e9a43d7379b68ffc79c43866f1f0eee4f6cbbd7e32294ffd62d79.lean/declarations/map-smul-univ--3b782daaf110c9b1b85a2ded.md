# map_smul_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35baa053296e6cf3aea9a582d8852fcb1cd52995",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ffd80bc-cbfc-0192-35e5-d5e39acecb24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0853198-9267-ec5d-bb4e-2eb3f3fb6985",
  "kind": "theorem",
  "lexical_name": "map_smul_univ",
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
  "slug": "map-smul-univ--3b782daaf110c9b1b85a2ded",
  "source": {
    "blob": "35baa053296e6cf3aea9a582d8852fcb1cd52995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 503,
    "path": "GRWTSK/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b782daaf110c9b1b85a2ded0342242f7b70820c54c241bbcdb5c2e3f6462342",
  "verification": {
    "reference": "docs/verification/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0853198-9267-ec5d-bb4e-2eb3f3fb6985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_smul_univ [Fintype ι] (c : ι → R) (m : ∀ i, M₁ i) :
    (f fun i => c i • m i) = (∏ i, c i) • f m :=
  f.toMultilinearMap.map_smul_univ _ _
#align continuous_multilinear_map.map_smul_univ ContinuousMultilinearMap.map_smul_univ

end CommSemiring

section DistribMulAction

variable {R' R'' A : Type*} [Monoid R'] [Monoid R''] [Semiring A] [∀ i, AddCommMonoid (M₁ i)]
  [AddCommMonoid M₂] [∀ i, TopologicalSpace (M₁ i)] [TopologicalSpace M₂] [∀ i, Module A (M₁ i)]
  [Module A M₂] [DistribMulAction R' M₂] [ContinuousConstSMul R' M₂] [SMulCommClass A R' M₂]
  [DistribMulAction R'' M₂] [ContinuousConstSMul R'' M₂] [SMulCommClass A R'' M₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35baa053296e6cf3aea9a582d8852fcb1cd52995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

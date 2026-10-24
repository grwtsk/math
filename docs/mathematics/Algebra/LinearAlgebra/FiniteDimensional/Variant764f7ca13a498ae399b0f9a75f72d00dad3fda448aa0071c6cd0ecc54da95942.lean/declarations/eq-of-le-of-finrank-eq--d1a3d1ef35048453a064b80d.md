# eq_of_le_of_finrank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9bd4711528e02e48be1c10bb6d7a39467adff0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 854,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16edf978-1f63-0fa6-2913-5a6563901836",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dff1274-ca75-8a50-05ef-6e6e374aea10",
  "kind": "theorem",
  "lexical_name": "eq_of_le_of_finrank_eq",
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
  "slug": "eq-of-le-of-finrank-eq--d1a3d1ef35048453a064b80d",
  "source": {
    "blob": "a9bd4711528e02e48be1c10bb6d7a39467adff0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 854,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1a3d1ef35048453a064b80db3479b8179d67f19f1aa61bf3ba41de0f2b1bbbb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dff1274-ca75-8a50-05ef-6e6e374aea10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 854–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_le_of_finrank_eq {S₁ S₂ : Submodule K V} [FiniteDimensional K S₂] (hle : S₁ ≤ S₂)
    (hd : finrank K S₁ = finrank K S₂) : S₁ = S₂ :=
  eq_of_le_of_finrank_le hle hd.ge
#align finite_dimensional.eq_of_le_of_finrank_eq FiniteDimensional.eq_of_le_of_finrank_eq

variable [FiniteDimensional K V] [FiniteDimensional K V₂]

/-- Given isomorphic subspaces `p q` of vector spaces `V` and `V₁` respectively,
  `p.quotient` is isomorphic to `q.quotient`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean#L854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bd4711528e02e48be1c10bb6d7a39467adff0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

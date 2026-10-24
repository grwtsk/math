# LinearMap.toMatrixAlgEquiv_reindexRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07a31869-cba2-57ac-9b40-c807d024314a",
  "kind": "theorem",
  "lexical_name": "LinearMap.toMatrixAlgEquiv_reindexRange",
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
  "slug": "linearmap-tomatrixalgequiv-reindexrange--281bdba6bc1520929732e15b",
  "source": {
    "blob": "2a9b105417221d0ae3ae5afb6342870aff58f0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 738,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant33dd88e6c2fb14fb24c0d7f5a883e560c7ae31b954807430182c54cb79ed2f78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281bdba6bc1520929732e15b67bc84d35fc62e1a3623d1fa1ae4bc85e17d8a5a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant33dd88e6c2fb14fb24c0d7f5a883e560c7ae31b954807430182c54cb79ed2f78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07a31869-cba2-57ac-9b40-c807d024314a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.toMatrixAlgEquiv_reindexRange [DecidableEq M₁] (f : M₁ →ₗ[R] M₁) (k i : n) :
    LinearMap.toMatrixAlgEquiv v₁.reindexRange f
        ⟨v₁ k, Set.mem_range_self k⟩ ⟨v₁ i, Set.mem_range_self i⟩ =
      LinearMap.toMatrixAlgEquiv v₁ f k i := by
  simp_rw [LinearMap.toMatrixAlgEquiv_apply, Basis.reindexRange_self, Basis.reindexRange_repr]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant33dd88e6c2fb14fb24c0d7f5a883e560c7ae31b954807430182c54cb79ed2f78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant33dd88e6c2fb14fb24c0d7f5a883e560c7ae31b954807430182c54cb79ed2f78.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9b105417221d0ae3ae5afb6342870aff58f0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

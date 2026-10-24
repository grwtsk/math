# innerAnodyneExtensions_eq_retracts_transfiniteCompositionsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c899c8-9413-02a2-f933-33ce5c3b79d7",
  "kind": "lemma",
  "lexical_name": "innerAnodyneExtensions_eq_retracts_transfiniteCompositionsOfShape",
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
  "slug": "inneranodyneextensions-eq-retracts-transfinitecompositionsofshape--cd13edb46e05d70e3040a33e",
  "source": {
    "blob": "3b2f80905fccfb59c5ab4b0b68f50fdfe832393b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variant37d927e8afa8f0400d15beaf4edf818bbc01e7bc8672ee47918118ab4a3fc1c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd13edb46e05d70e3040a33e45df492748d271419b41cfe734fde539bba421bd",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variant37d927e8afa8f0400d15beaf4edf818bbc01e7bc8672ee47918118ab4a3fc1c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c899c8-9413-02a2-f933-33ce5c3b79d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma innerAnodyneExtensions_eq_retracts_transfiniteCompositionsOfShape :
    innerAnodyneExtensions = (transfiniteCompositionsOfShape
      (coproducts.{u} innerHornInclusions.{u}).pushouts ℕ).retracts := by
  rw [innerAnodyneExtensions_eq_llp_rlp,
    SmallObject.llp_rlp_of_isCardinalForSmallObjectArgument_aleph0]

/-- In the category of simplicial sets, a strong *inner* anodyne extension is a morphism
which belongs to the closure of *inner* horn inclusions by pushouts, coproducts,
transfinite compositions (but not by retracts). We define this class here
by saying that `f : X ⟶ Y` is a strong inner anodyne extension if `f` is a monomorphism
and there exists a regular, *inner* pairing (in the sense of Moss) for the subcomplex
`Subcomplex.range f` of `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variant37d927e8afa8f0400d15beaf4edf818bbc01e7bc8672ee47918118ab4a3fc1c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variant37d927e8afa8f0400d15beaf4edf818bbc01e7bc8672ee47918118ab4a3fc1c1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b2f80905fccfb59c5ab4b0b68f50fdfe832393b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

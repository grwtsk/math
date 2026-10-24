# finsubgraphHomFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31c1097d965483084ab202dd3cf567f3d924077104d74f8e3d3ceda6a961b923",
  "kind": "def",
  "lexical_name": "finsubgraphHomFunctor",
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
  "slug": "finsubgraphhomfunctor--cf97f55fe0b1fd555a422a1e",
  "source": {
    "blob": "ba1eabb77752d47729a14f8da2e3b77f54e64db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf97f55fe0b1fd555a422a1e918c3f90a82066b34c9d9ae197b372dafb2479a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31c1097d965483084ab202dd3cf567f3d924077104d74f8e3d3ceda6a961b923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finsubgraphHomFunctor (G : SimpleGraph V) (F : SimpleGraph W) :
    G.Finsubgraphᵒᵖ ⥤ Type max u v where
  obj G' := G'.unop →fg F
  map g f := f.restrict (CategoryTheory.leOfHom g.unop)

/-- If every finite subgraph of a graph `G` has a homomorphism to a finite graph `F`, then there is
a homomorphism from the whole of `G` to `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1eabb77752d47729a14f8da2e3b77f54e64db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mapPullbackAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1750542b924d03206c7fb27ad1ed132b87cdddc7082b9ebc58e2757051661b40",
  "kind": "def",
  "lexical_name": "mapPullbackAdj",
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
  "slug": "mappullbackadj--435a773931ec79bbd7a308a1",
  "source": {
    "blob": "ee2d084bebf3dc65e40cfac6712752264b4632f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 406,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:435a773931ec79bbd7a308a190d8f04418215ea92dd22c4740f02b2455900acd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1750542b924d03206c7fb27ad1ed132b87cdddc7082b9ebc58e2757051661b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapPullbackAdj (f : X ⟶ Y) [Mono f] : map f ⊣ pullback f :=
  (Over.mapPullbackAdj f).restrictFullyFaithful (fullyFaithfulForget X) (fullyFaithfulForget Y)
    (Iso.refl _) (Iso.refl _)

/-- `MonoOver.map f` followed by `MonoOver.pullback f` is the identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant499d4e07c7eb65c162c0be22dad9656bfa8b33581d90d00b355793225363a7d2.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2d084bebf3dc65e40cfac6712752264b4632f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

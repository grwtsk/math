# plusFunctorWhiskerRightIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65e480497dee60c438842bbff5f3ba8174e4dcacd3742e37f275093e95ca50e6",
  "kind": "def",
  "lexical_name": "plusFunctorWhiskerRightIso",
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
  "slug": "plusfunctorwhiskerrightiso--a9e68c432a158f3efd634b0f",
  "source": {
    "blob": "5ec34a3d4e6a5c4db08d297273268bb65f3e5fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9e68c432a158f3efd634b0f8ea55cc35f6c64f592e26222c1876da99e63bcd3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65e480497dee60c438842bbff5f3ba8174e4dcacd3742e37f275093e95ca50e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def plusFunctorWhiskerRightIso :
    J.plusFunctor D ⋙ (whiskeringRight _ _ _).obj F ≅
      (whiskeringRight _ _ _).obj F ⋙ J.plusFunctor E :=
  NatIso.ofComponents (fun _ => J.plusCompIso _ _) @fun _ _ _ => plusCompIso_whiskerRight _ _ _

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec34a3d4e6a5c4db08d297273268bb65f3e5fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Arrow.base

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:211e692ef536be19e7b8e5344046aab9b4d800517b7b96611e5f9694d30336f9",
  "kind": "def",
  "lexical_name": "Arrow.base",
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
  "slug": "arrow-base--cc120f68f9c0b358f433af31",
  "source": {
    "blob": "590dff98c5359301585851e2d2fe7a5a073c01c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 564,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc120f68f9c0b358f433af318db28043007a172d51b36c309f6701aaa4a9b288",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:211e692ef536be19e7b8e5344046aab9b4d800517b7b96611e5f9694d30336f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Arrow.base {f : Y ⟶ X} {S : J.Cover X} (I : (S.pullback f).Arrow) : S.Arrow :=
  ⟨I.Y, I.f ≫ f, I.hf⟩
#align category_theory.grothendieck_topology.cover.arrow.base CategoryTheory.GrothendieckTopology.Cover.Arrow.base

/-- A relation of `S.pullback f` gives rise to a relation of `S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590dff98c5359301585851e2d2fe7a5a073c01c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

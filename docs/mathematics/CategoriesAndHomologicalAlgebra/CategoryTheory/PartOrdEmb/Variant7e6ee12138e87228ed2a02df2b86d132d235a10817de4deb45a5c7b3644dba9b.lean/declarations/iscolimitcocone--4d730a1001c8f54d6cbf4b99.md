# isColimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fea7e5863ec26b08890353884b3cb1189ac2e70220f2d63348731aa65c11751",
  "kind": "def",
  "lexical_name": "isColimitCocone",
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
  "slug": "iscolimitcocone--4d730a1001c8f54d6cbf4b99",
  "source": {
    "blob": "a627535aa5b615540ad5e83f60791c029000e78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 324,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d730a1001c8f54d6cbf4b99f0a62880375d354715f55bc5856d7a8f58d8a1be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fea7e5863ec26b08890353884b3cb1189ac2e70220f2d63348731aa65c11751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCocone : IsColimit (cocone hc) where
  desc s := ofHom (CoconePt.desc hc s)
  fac s j := by
    ext x
    exact ConcreteCategory.congr_hom (hc.fac ((forget _).mapCocone s) j) x
  uniq s m hm := by
    ext x
    obtain ⟨j, x, rfl⟩ := Types.jointly_surjective_of_isColimit hc x
    exact ((ConcreteCategory.congr_hom (hm j)) x).trans (CoconePt.fac_apply hc s j x).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variant7e6ee12138e87228ed2a02df2b86d132d235a10817de4deb45a5c7b3644dba9b.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a627535aa5b615540ad5e83f60791c029000e78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

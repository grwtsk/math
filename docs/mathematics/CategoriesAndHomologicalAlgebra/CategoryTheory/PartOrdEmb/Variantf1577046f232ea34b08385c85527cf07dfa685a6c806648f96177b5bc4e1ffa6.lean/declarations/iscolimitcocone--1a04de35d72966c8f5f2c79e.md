# isColimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9be51cd734d7a0a57bf042a875078b7ee7259c4dc882c5ac0e7c56c2ab3d78c4",
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
  "slug": "iscolimitcocone--1a04de35d72966c8f5f2c79e",
  "source": {
    "blob": "2fd0d922f6f8d4abc498c89f6a390e3b25d7fbac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a04de35d72966c8f5f2c79eaad15defb982b5543f4a6b730f95871516c5b647",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9be51cd734d7a0a57bf042a875078b7ee7259c4dc882c5ac0e7c56c2ab3d78c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–341.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd0d922f6f8d4abc498c89f6a390e3b25d7fbac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

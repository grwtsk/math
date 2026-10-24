# isColimitCoconeFiberwiseColimitOfCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30379bea42fa3356f03fcc396e7a6e980758b3c0540e12b75aa7afb34350b0dc",
  "kind": "def",
  "lexical_name": "isColimitCoconeFiberwiseColimitOfCocone",
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
  "slug": "iscolimitcoconefiberwisecolimitofcocone--4039ebc12cca15b668103309",
  "source": {
    "blob": "1ea3eeef05b0c26383bec89cef39d2017bd00a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4039ebc12cca15b668103309880bb4ab298e41eca2274a980b93a6788fb7ab06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30379bea42fa3356f03fcc396e7a6e980758b3c0540e12b75aa7afb34350b0dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoconeFiberwiseColimitOfCocone {c : Cocone G} (hc : IsColimit c) :
    IsColimit (coconeFiberwiseColimitOfCocone c) where
  desc s := hc.desc <| Cocone.mk s.pt <| natTransIntoForgetCompFiberwiseColimit G ≫
    whiskerLeft (Grothendieck.forget F) s.ι
  fac s c := by dsimp; ext; simp
  uniq s m hm := hc.hom_ext fun X => by
    have := hm X.base
    simp only [Functor.const_obj_obj, IsColimit.fac, NatTrans.comp_app, Functor.comp_obj,
      Grothendieck.forget_obj, natTransIntoForgetCompFiberwiseColimit_app,
      whiskerLeft_app]
    simp only [coconeFiberwiseColimitOfCocone_pt, coconeFiberwiseColimitOfCocone_ι_app] at this
    simp [← this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3ad0c3af7df49185ee9a5d2c02fbe17b5470bfc0597425200d3e0a4e86003966.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea3eeef05b0c26383bec89cef39d2017bd00a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

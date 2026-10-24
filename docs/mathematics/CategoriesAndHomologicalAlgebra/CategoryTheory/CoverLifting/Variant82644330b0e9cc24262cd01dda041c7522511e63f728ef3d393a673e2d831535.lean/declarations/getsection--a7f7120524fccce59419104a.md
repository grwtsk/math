# getSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2450b3ad3c9ebf36992323536759cfa0893c4c8b21076eaa251d1180ab2d8bf7",
  "kind": "def",
  "lexical_name": "getSection",
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
  "slug": "getsection--a7f7120524fccce59419104a",
  "source": {
    "blob": "c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7f7120524fccce59419104a350f97681f3cdd497d53a8e74c40ce377ea6760f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2450b3ad3c9ebf36992323536759cfa0893c4c8b21076eaa251d1180ab2d8bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getSection (Y : StructuredArrow (op U) G.op) : X ⟶ ℱ.val.obj Y.right := by
  letI hom_sh := whiskerRight ((Ran.adjunction A G.op).counit.app ℱ.val) (coyoneda.obj (op X))
  haveI S' := K.pullback_stable Y.hom.unop hS
  haveI hs' := ((hx.pullback Y.3.unop).functorPullback G).compPresheafMap hom_sh
  exact (ℱ.2 X _ (hu.cover_lift S')).amalgamate _ hs'
set_option linter.uppercaseLean3 false in
#align category_theory.Ran_is_sheaf_of_cover_lifting.get_section CategoryTheory.RanIsSheafOfCoverLifting.getSection

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

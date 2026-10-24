# ιCompGrothendieckPrecompFunctorToCommaCompFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b36f6e7e75e48c048e896fb2a09e142a2339d3d7656b38418b365526e038a328",
  "kind": "def",
  "lexical_name": "ιCompGrothendieckPrecompFunctorToCommaCompFst",
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
  "slug": "compgrothendieckprecompfunctortocommacompfst--83de1f030f4a2ee90cf0c9c6",
  "source": {
    "blob": "551c20bb4cd9932ea52a92e9c75b7f8b8991b94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83de1f030f4a2ee90cf0c9c65dcff415dba96bac34750b1763e0ad21d302359a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b36f6e7e75e48c048e896fb2a09e142a2339d3d7656b38418b365526e038a328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ιCompGrothendieckPrecompFunctorToCommaCompFst (X : E) :
    Grothendieck.ι (R ⋙ functor L) X ⋙ grothendieckPrecompFunctorToComma L R ⋙ Comma.fst _ _ ≅
    proj L (R.obj X) :=
  NatIso.ofComponents (fun X => Iso.refl _) (fun _ => by simp)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The inverse functor used to establish the equivalence `grothendieckPrecompFunctorEquivalence`
between the Grothendieck construction on `CostructuredArrow.functor` and the comma category. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551c20bb4cd9932ea52a92e9c75b7f8b8991b94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

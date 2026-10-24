# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:531d265fd3293c761df2b928be1cc192f4fe1b5da8d2a1bb6384260ed9318b89",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--0b03a684ac461fffa297a9e8",
  "source": {
    "blob": "006de4dd0fd34be57dea8dd4a685658ed1c1c01c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b03a684ac461fffa297a9e892ecfa32893d6c62dce9affd205506ced13121c6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:531d265fd3293c761df2b928be1cc192f4fe1b5da8d2a1bb6384260ed9318b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : RigidCategory (FDRep k G) := by infer_instance

end FDRep

namespace FDRep

-- The variables in this section are slightly weird, living half in `Representation` and half in
-- `FDRep`. When we have a better API for general monoidal closed and rigid categories and these
-- structures on `FDRep`, we should remove the dependency of statements about `FDRep` on
-- `Representation.linHom` and `Representation.dual`. The isomorphism `dualTensorIsoLinHom`
-- below should then just be obtained from general results about rigid categories.
open Representation

variable {k G V : Type u} [Field k] [Group G]
variable [AddCommGroup V] [Module k V]
variable [FiniteDimensional k V]
variable (ρV : Representation k G V) (W : FDRep k G)

open scoped MonoidalCategory

/-- Auxiliary definition for `FDRep.dualTensorIsoLinHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006de4dd0fd34be57dea8dd4a685658ed1c1c01c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

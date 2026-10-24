# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0b3aa3852bcdaf213f3665d164aefd1c9bb9755adf2cff0c8f8e74d7007a246",
  "kind": "instance",
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
  "slug": "instance--044e133e083fe7ed440da07f",
  "source": {
    "blob": "ed2010d84e8f8ade917dc8119d829eb2a7ea71e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:044e133e083fe7ed440da07f8580e07253488d58c159812db7c925ffc135947d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0b3aa3852bcdaf213f3665d164aefd1c9bb9755adf2cff0c8f8e74d7007a246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (forget₂ (FDRep R G) (Rep R G)).Faithful := by
  dsimp [forget₂, HasForget₂.forget₂]
  infer_instance

end FDRep

namespace FDRep

-- The variables in this section are slightly weird, living half in `Representation` and half in
-- `FDRep`. When we have a better API for general monoidal closed and rigid categories and these
-- structures on `FDRep`, we should remove the dependency of statements about `FDRep` on
-- `Representation.linHom` and `Representation.dual`. The isomorphism `dualTensorIsoLinHom`
-- below should then just be obtained from general results about rigid categories.
open Representation

variable {k : Type u} {G : Type v} {V : Type u} [Field k] [Group G]
variable [AddCommGroup V] [Module k V]
variable [FiniteDimensional k V]
variable (ρV : Representation k G V) (W : FDRep k G)

open scoped MonoidalCategory

/-- Auxiliary definition for `FDRep.dualTensorIsoLinHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed2010d84e8f8ade917dc8119d829eb2a7ea71e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

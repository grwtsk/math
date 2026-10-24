# MulCharClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e5fff0b0e6a169d42deb97651414aba5852eca3dbe0cc3abef05de6fa1bc7c9",
  "kind": "class",
  "lexical_name": "MulCharClass",
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
  "slug": "mulcharclass--4c2e0aec0e2375498dd2bb46",
  "source": {
    "blob": "44c24736cb73bfb179e93247f6f130dd15bf26ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c2e0aec0e2375498dd2bb463995c231465a6fe5de7d7fa91166ce96d432679b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e5fff0b0e6a169d42deb97651414aba5852eca3dbe0cc3abef05de6fa1bc7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MulCharClass (F : Type*) (R R' : outParam <| Type*) [CommMonoid R]
  [CommMonoidWithZero R'] extends MonoidHomClass F R R' where
  map_nonunit : ∀ (χ : F) {a : R} (_ : ¬IsUnit a), χ a = 0
#align mul_char_class MulCharClass

initialize_simps_projections MulChar (toFun → apply, -toMonoidHom)

attribute [simp] MulCharClass.map_nonunit

end Defi

section Group

namespace MulChar

-- The domain of our multiplicative characters
variable {R : Type u} [CommMonoid R]

-- The target
variable {R' : Type v} [CommMonoidWithZero R']

section trivial

variable (R R')

/-- The trivial multiplicative character. It takes the value `0` on non-units and
the value `1` on units. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c24736cb73bfb179e93247f6f130dd15bf26ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

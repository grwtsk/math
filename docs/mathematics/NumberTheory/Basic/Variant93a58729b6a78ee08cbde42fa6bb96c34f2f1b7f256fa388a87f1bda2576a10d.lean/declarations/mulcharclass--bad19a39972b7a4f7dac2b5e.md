# MulCharClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edf8050b7e0e1db47699c27354ea6754d4be46538ba9e63454921883f8e5b21a",
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
  "slug": "mulcharclass--bad19a39972b7a4f7dac2b5e",
  "source": {
    "blob": "b1946164d82bcbd41f15e053d24ac92b20fa6411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bad19a39972b7a4f7dac2b5ea60743b14e3d739d3bb2419569485363a4560f09",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edf8050b7e0e1db47699c27354ea6754d4be46538ba9e63454921883f8e5b21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MulCharClass (F : Type*) (R R' : outParam Type*) [CommMonoid R]
    [CommMonoidWithZero R'] [FunLike F R R'] : Prop extends MonoidHomClass F R R' where
  map_nonunit : ∀ (χ : F) {a : R} (_ : ¬IsUnit a), χ a = 0

initialize_simps_projections MulChar (toFun → apply, -toMonoidHom)

end Defi

namespace MulChar

attribute [scoped simp] MulCharClass.map_nonunit

section Group

-- The domain of our multiplicative characters
variable {R : Type*} [CommMonoid R]

-- The target
variable {R' : Type*} [CommMonoidWithZero R']

variable (R R') in
/-- The trivial multiplicative character. It takes the value `0` on non-units and
the value `1` on units. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1946164d82bcbd41f15e053d24ac92b20fa6411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

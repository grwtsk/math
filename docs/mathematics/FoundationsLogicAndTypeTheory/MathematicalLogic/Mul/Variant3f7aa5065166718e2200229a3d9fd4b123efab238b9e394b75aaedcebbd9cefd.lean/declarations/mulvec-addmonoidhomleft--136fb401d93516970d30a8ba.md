# mulVec.addMonoidHomLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2388721afc3bda62f0df780b5856494fcde9fb0f7a3d37727bf1ed0ca1f6cf23",
  "kind": "def",
  "lexical_name": "mulVec.addMonoidHomLeft",
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
  "slug": "mulvec-addmonoidhomleft--136fb401d93516970d30a8ba",
  "source": {
    "blob": "1f6575ea6c83c743e9281d990dc8e1d8542cc479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 632,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:136fb401d93516970d30a8ba053314c58c112bc705160aa54cab6d415aa5de7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2388721afc3bda62f0df780b5856494fcde9fb0f7a3d37727bf1ed0ca1f6cf23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulVec.addMonoidHomLeft [Fintype n] (v : n → α) : Matrix m n α →+ m → α where
  toFun M := M *ᵥ v
  map_zero' := by
    ext
    simp [mulVec]
  map_add' x y := by
    ext m
    apply add_dotProduct

/-- The `i`th row of the multiplication is the same as the `vecMul` with the `i`th row of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f6575ea6c83c743e9281d990dc8e1d8542cc479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

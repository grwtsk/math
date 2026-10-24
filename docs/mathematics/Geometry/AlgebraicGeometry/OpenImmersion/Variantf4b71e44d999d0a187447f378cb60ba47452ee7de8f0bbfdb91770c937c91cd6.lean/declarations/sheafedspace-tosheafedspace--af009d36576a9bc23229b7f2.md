# sheafedSpace_toSheafedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14171dee-dd6c-dc00-5fa4-ffe11e275e32",
  "kind": "theorem",
  "lexical_name": "sheafedSpace_toSheafedSpace",
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
  "slug": "sheafedspace-tosheafedspace--af009d36576a9bc23229b7f2",
  "source": {
    "blob": "7b5cad5c5347d96072ffac32f1c447d094d643a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 577,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af009d36576a9bc23229b7f23d9424eae52b4dc78c3dc5c6aec52ee3c186128a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14171dee-dd6c-dc00-5fa4-ffe11e275e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sheafedSpace_toSheafedSpace {X Y : SheafedSpace C} (f : X ⟶ Y)
    [SheafedSpace.IsOpenImmersion f] :
    toSheafedSpace Y f.hom = X := by cases X; rfl

end ToSheafedSpace

section ToLocallyRingedSpace

variable {X : PresheafedSpace CommRingCat} (Y : LocallyRingedSpace)
variable (f : X ⟶ Y.toPresheafedSpace) [H : IsOpenImmersion f]

set_option backward.isDefEq.respectTransparency.types false in
/-- If `X ⟶ Y` is an open immersion, and `Y` is a LocallyRingedSpace, then so is `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5cad5c5347d96072ffac32f1c447d094d643a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# unitsLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:803ca003c32136c9557fab9eeb13bdab5f4de592dcf1e66fad7cf05afd7450c2",
  "kind": "def",
  "lexical_name": "unitsLift",
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
  "slug": "unitslift--3df6d46d590e164ff6b17121",
  "source": {
    "blob": "48f36b02ad5331409f9a76d0f00eddac5c6decf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3df6d46d590e164ff6b17121b0c02b0a1b1b109fed4e127107f0a6a2556066c5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:803ca003c32136c9557fab9eeb13bdab5f4de592dcf1e66fad7cf05afd7450c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitsLift : C(X, Mˣ) ≃ C(X, M)ˣ where
  toFun f :=
    { val := ⟨fun x => f x, Units.continuous_val.comp f.continuous⟩
      inv := ⟨fun x => ↑(f x)⁻¹, Units.continuous_val.comp (continuous_inv.comp f.continuous)⟩
      val_inv := ext fun x => Units.mul_inv _
      inv_val := ext fun x => Units.inv_mul _ }
  invFun f :=
    { toFun := fun x =>
        ⟨(f : C(X, M)) x, (↑f⁻¹ : C(X, M)) x,
          ContinuousMap.congr_fun f.mul_inv x, ContinuousMap.congr_fun f.inv_mul x⟩
      continuous_toFun := continuous_induced_rng.2 <|
        (f : C(X, M)).continuous.prod_mk <|
        MulOpposite.continuous_op.comp (↑f⁻¹ : C(X, M)).continuous }
  left_inv f := by ext; rfl
  right_inv f := by ext; rfl
#align continuous_map.units_lift ContinuousMap.unitsLift
#align continuous_map.add_units_lift ContinuousMap.addUnitsLift

-- porting note: add manually because `simps` used `inv` and `simpNF` complained
@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f36b02ad5331409f9a76d0f00eddac5c6decf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# MeasurableEquiv.shearMulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bee098340c5bae33141ee84de66f5d025a8cc4a0a2a493b5c535da7baa46f9f",
  "kind": "def",
  "lexical_name": "MeasurableEquiv.shearMulRight",
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
  "slug": "measurableequiv-shearmulright--3eb225166fe3513e9335e10a",
  "source": {
    "blob": "6235d063a20206fcf20a4db10f60203df6b95d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3eb225166fe3513e9335e10a6d5a5c36259b74a1fe65e60bed5aa92d7aae4503",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bee098340c5bae33141ee84de66f5d025a8cc4a0a2a493b5c535da7baa46f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def MeasurableEquiv.shearMulRight [MeasurableInv G] : G × G ≃ᵐ G × G :=
  { Equiv.prodShear (Equiv.refl _) Equiv.mulLeft with
    measurable_toFun := measurable_fst.prod_mk measurable_mul
    measurable_invFun := measurable_fst.prod_mk <| measurable_fst.inv.mul measurable_snd }
#align measurable_equiv.shear_mul_right MeasurableEquiv.shearMulRight
#align measurable_equiv.shear_add_right MeasurableEquiv.shearAddRight

/-- The map `(x, y) ↦ (x, y / x)` as a `MeasurableEquiv` with as inverse `(x, y) ↦ (x, yx)` -/
@[to_additive
"The map `(x, y) ↦ (x, y - x)` as a `MeasurableEquiv` with as inverse `(x, y) ↦ (x, y + x)`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6235d063a20206fcf20a4db10f60203df6b95d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

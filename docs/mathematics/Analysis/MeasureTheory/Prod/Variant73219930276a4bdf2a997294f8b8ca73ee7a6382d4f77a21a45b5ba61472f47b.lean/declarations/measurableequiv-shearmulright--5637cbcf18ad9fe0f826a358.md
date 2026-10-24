# MeasurableEquiv.shearMulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea3bd81f06184f6e22b087c29bb5995a435d6f30832fe2d9f1378ab7bb0fb965",
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
  "slug": "measurableequiv-shearmulright--5637cbcf18ad9fe0f826a358",
  "source": {
    "blob": "16a4065bfb41689e592b6a16c2146123b88df3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5637cbcf18ad9fe0f826a35878db0e79bd278597f2e83e6403bee5258ff6f560",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea3bd81f06184f6e22b087c29bb5995a435d6f30832fe2d9f1378ab7bb0fb965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a4065bfb41689e592b6a16c2146123b88df3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

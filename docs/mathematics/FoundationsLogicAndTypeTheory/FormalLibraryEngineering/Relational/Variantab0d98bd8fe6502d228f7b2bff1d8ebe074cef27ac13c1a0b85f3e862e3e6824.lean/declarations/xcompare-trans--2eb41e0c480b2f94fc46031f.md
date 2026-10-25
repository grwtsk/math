# xCompare_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3082ca26-ee33-9cfb-7e98-53ea34cf6e12",
  "kind": "theorem",
  "lexical_name": "xCompare_trans",
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
  "slug": "xcompare-trans--2eb41e0c480b2f94fc46031f",
  "source": {
    "blob": "c9d32b0e3dabc780d607f55675e04d4b981c7eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1441,
    "line": 1412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb41e0c480b2f94fc46031f486d7118c6f0177e8d039b49fdb841fe5debf787",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3082ca26-ee33-9cfb-7e98-53ea34cf6e12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1412–1441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xCompare_trans {x y z : Expr S}
    (hx : HasType P Γ x (R.channel.logicalType R.probe.carrier)) (mx : WellModed γ x .data)
    (hy : HasType P Γ y (R.channel.logicalType R.probe.carrier)) (my : WellModed γ y .data)
    (hz : HasType P Γ z (R.channel.logicalType R.probe.carrier)) (mz : WellModed γ z .data)
    (he : Proves P Γ γ (R.xCompare L.code KY.code KP.code x y))
    (hf : Proves P Γ γ (R.xCompare L.code KY.code KP.code y z)) :
    Proves P Γ γ (R.xCompare L.code KY.code KP.code x z) := by
  apply H.xCompare_intro KY KP hx mx hz mz
  intro Δ δ e i hi mi
  have he' : Proves P Δ δ ((R.rename e.names).xCompare (L.rename e).code
      (KY.rename e).code (KP.rename e).code (x.rename e.names) (y.rename e.names)) := by
    simpa only [xCompare_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using
      he.rename e
  have hf' : Proves P Δ δ ((R.rename e.names).xCompare (L.rename e).code
      (KY.rename e).code (KP.rename e).code (y.rename e.names) (z.rename e.names)) := by
    simpa only [xCompare_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using
      hf.rename e
  have hxy := (H.rename e).xCompare_elim (KY.rename e) (KP.rename e)
    (x_typed_rename (R := R) e hx) (e.moded mx) (x_typed_rename (R := R) e hy) (e.moded my) hi
      mi he'
  have hyz := (H.rename e).xCompare_elim (KY.rename e) (KP.rename e)
    (x_typed_rename (R := R) e hy) (e.moded my) (x_typed_rename (R := R) e hz) (e.moded mz) hi
      mi hf'
  exact ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi mi (x_typed_rename (R := R) e
    hx) (e.moded mx)).equivalent_trans
    ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi mi (x_typed_rename (R := R) e hy)
      (e.moded my))
    ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi mi (x_typed_rename (R := R) e hz)
      (e.moded mz)) hxy hyz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean#L1412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d32b0e3dabc780d607f55675e04d4b981c7eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

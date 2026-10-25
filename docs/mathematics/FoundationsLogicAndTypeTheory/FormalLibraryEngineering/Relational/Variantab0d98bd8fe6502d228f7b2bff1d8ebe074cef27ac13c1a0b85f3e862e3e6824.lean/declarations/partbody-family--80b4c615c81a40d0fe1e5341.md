# partBody_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39f53875-7ad1-5c75-fff4-9af4eb3fbfc6",
  "kind": "theorem",
  "lexical_name": "partBody_family",
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
  "slug": "partbody-family--80b4c615c81a40d0fe1e5341",
  "source": {
    "blob": "c9d32b0e3dabc780d607f55675e04d4b981c7eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 509,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80b4c615c81a40d0fe1e5341f362c64916a458c080508b34410dc70e228bff61",
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

Occurrence: `result:39f53875-7ad1-5c75-fff4-9af4eb3fbfc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partBody_family {A m v : Expr S}
    (hA : HasType P Γ A (.sort R.probe.seed)) (mA : WellModed γ A .data)
    (hm : HasType P Γ m (R.probe.paramType A)) (mm : WellModed γ m .data)
    (hv : HasType P Γ v R.probe.carrier) (mv : WellModed γ v .data) :
    L.Family (R.channel.logicalType (R.baseType A)) (R.partBody L.code A m v) := by
  intro Δ δ e y hy my
  rw [partBody_rename,partBody_instantiate]
  have hA' : HasType P Δ (A.rename e.names) (.sort (R.rename e.names).probe.seed) := by
    simpa only [Expr.rename,RelationalCode.rename,ProbeCode.rename] using e.typing hA
  have hm' : HasType P Δ (m.rename e.names) ((R.rename e.names).probe.paramType (A.rename
    e.names)) := by
    simpa only [ProbeCode.paramType_rename,RelationalCode.rename] using e.typing hm
  have hv' : HasType P Δ (v.rename e.names) (R.rename e.names).probe.carrier := by
    simpa only [ProbeCode.carrier_rename,RelationalCode.rename] using e.typing hv
  have hy' : HasType P Δ y ((R.rename e.names).channel.logicalType ((R.rename
    e.names).baseType (A.rename e.names))) := by
    simpa only [ChannelCode.logicalType_rename,baseType_rename,channel_rename] using hy
  exact (H.rename e).diamond_formula hA' (e.moded mA) hm' (e.moded mm) hv' (e.moded mv) hy' my
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d32b0e3dabc780d607f55675e04d4b981c7eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

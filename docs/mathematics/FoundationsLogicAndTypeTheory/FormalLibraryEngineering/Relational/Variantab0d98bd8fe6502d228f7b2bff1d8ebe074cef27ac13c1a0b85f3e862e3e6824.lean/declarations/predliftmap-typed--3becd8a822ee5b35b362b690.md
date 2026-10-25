# predLiftMap_typed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd6b10a1-19e3-b28c-da75-6a229f8e9558",
  "kind": "theorem",
  "lexical_name": "predLiftMap_typed",
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
  "slug": "predliftmap-typed--3becd8a822ee5b35b362b690",
  "source": {
    "blob": "c9d32b0e3dabc780d607f55675e04d4b981c7eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 928,
    "line": 904,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3becd8a822ee5b35b362b690e5bde8870ac782d2ac1f809fe6a5d310b3b28af8",
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

Occurrence: `result:dd6b10a1-19e3-b28c-da75-6a229f8e9558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 904–928.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem predLiftMap_typed {A i : Expr S}
    (hA : HasType P Γ A (.sort R.probe.seed)) (mA : WellModed γ A .data)
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data) :
    DataMap P Γ γ (R.probe.paramType A) (R.channel.predicateType (R.baseType A))
      (R.predLiftMap L.code KY.code KP.code A i) := by
  obtain ⟨s,hs⟩ := H.probe.funTriple.domain.1
  let e : Embedding P Γ γ (R.probe.paramType A :: Γ) (modeCons .data γ) := Embedding.cons
    (H.probe.param_sorted hA s hs) .data
  have hA' : HasType P (R.probe.paramType A :: Γ) (A.rename e.names) (.sort (R.rename
    e.names).probe.seed) := by
    simpa only [Expr.rename,RelationalCode.rename,ProbeCode.rename] using e.typing hA
  have hm' : HasType P (R.probe.paramType A :: Γ) (.var 0) ((R.rename e.names).probe.paramType
    (A.rename e.names)) := by
    simpa only [ProbeCode.paramType_rename,RelationalCode.rename,e,Embedding.cons] using
      HasType.var (H.probe.param_sorted hA s hs)
  have hi' : HasType P (R.probe.paramType A :: Γ) (i.rename e.names) ((R.rename
    e.names).channel.predicateType (R.rename e.names).probe.carrier) := by
    simpa only [ChannelCode.predicateType_rename,ProbeCode.carrier_rename,channel_rename,
      RelationalCode.rename,RelationalCode.channel,ChannelCode.rename,ProbeCode.rename] using
      e.typing hi
  have ht := (H.rename e).predLift_typed (KY.rename e) (KP.rename e) hA' (e.moded mA) hm'
    (.var 0) hi' (e.moded mi)
  simpa only [DataMap,predLiftMap,LogicSetup.code_rename,QuantifierRoute.code_rename,
    ChannelCode.predicateType_rename,baseType_rename,channel_rename,e,Embedding.cons,
    QuantifierRoute.code,QuantifierRoute.rename,QuantifierCode.rename] using ht
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variantab0d98bd8fe6502d228f7b2bff1d8ebe074cef27ac13c1a0b85f3e862e3e6824.lean#L904).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d32b0e3dabc780d607f55675e04d4b981c7eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

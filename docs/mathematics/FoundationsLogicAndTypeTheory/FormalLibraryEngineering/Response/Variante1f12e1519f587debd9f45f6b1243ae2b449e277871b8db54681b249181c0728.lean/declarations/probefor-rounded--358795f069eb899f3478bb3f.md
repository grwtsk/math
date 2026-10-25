# probeFor_rounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9270a39-a172-dfd9-9d74-d928e0cc547a",
  "kind": "theorem",
  "lexical_name": "probeFor_rounded",
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
  "slug": "probefor-rounded--358795f069eb899f3478bb3f",
  "source": {
    "blob": "cccb4039dc0f871b97a118e81bc5316902aebfe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:358795f069eb899f3478bb3f71c3a1e3b7127ff812a4d83a8121f82b5d2e6a50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9270a39-a172-dfd9-9d74-d928e0cc547a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probeFor_rounded {A m i y : Expr S}
    (hA : HasType P Γ A (.sort R.probe.seed)) (mA : WellModed γ A .data)
    (hm : HasType P Γ m (R.probe.paramType A)) (mm : WellModed γ m .data)
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data)
    (hy : HasType P Γ y (R.channel.logicalType (R.baseType A))) (my : WellModed γ y .data)
    (hnd : Proves P Γ γ (L.neg (R.probe.doubled.isDummy L.code (R.probe.rawType A) m))) :
    Equivalent P Γ γ (R.diamond L.code A m (R.probeFor L.code KY.code KP.code i) y)
      (R.channel.eval R.probe.carrier i (R.lift L.code KY.code KP.code A m
        (R.channel.round (R.baseType A) y))) := by
  have hw := H.bundle_typed hA mA hm mm hy my
  have hu := H.probeFor_evaluation KY KP hA mA hi mi hw.1 hw.2
  have hmap := H.predLiftMap_typed KY KP hA mA hi mi
  have h₀ := H.rawTop_typed hA mA
  have hc := H.channel.toRaw_typed (H.base_sorted hA) (H.base_mode mA) hy my
  obtain ⟨s,hs⟩ := H.probe.funTriple.domain.1
  obtain ⟨r,hr⟩ := H.probe.mainTriple.product.1
  have har := H.probe.doubled_formed.access_recovery H.channel.predicate
    H.probe.funTriple.domain.1 KP.triple.domain.1 (H.probe.raw_sorted hA) (H.probe.raw_mode mA)
    hmap hm mm h₀.1 h₀.2 hc.1 hc.2 (H.probe.raw_sorted hA s hs)
    (H.probe.doubled_formed.bp_sorted (H.probe.raw_sorted hA) r hr) hnd
  have har' : Equivalent P Γ γ
      (R.recoverLift L.code KY.code KP.code A i (R.bundle L.code A m y))
      (R.channel.eval (R.baseType A) (R.predLift L.code KY.code KP.code A m i) y) := by
    simpa only [recoverLift,bundle,point,predLiftMap_instantiate,ChannelCode.eval,
      RelationalCode.channel,ProbeCode.rawType,ProbeCode.paramType,ChannelCode.rawType,
        baseType] using har
  have hp := H.channel.pred_evaluation (H.base_sorted hA) (H.base_mode mA)
    (H.liftEvalBody_family KY KP hA mA hm mm hi mi) (H.probe.raw_sorted hA s hs) hy my
  have hp' : Equivalent P Γ γ
      (R.channel.eval (R.baseType A) (R.predLift L.code KY.code KP.code A m i) y)
      (R.channel.eval R.probe.carrier i (R.lift L.code KY.code KP.code A m (R.channel.round
        (R.baseType A) y))) := by
    simpa only [predLift,liftEvalBody_instantiate] using hp
  have hv := H.probeFor_typed KY KP hi mi
  have f₁ := H.diamond_formula hA mA hm mm hv.1 hv.2 hy my
  have f₂ := H.recoverLift_formula KY KP hA mA hi mi hw.1 hw.2
  have hpred := H.predLift_typed KY KP hA mA hm mm hi mi
  have f₃ := H.channel.eval_formula (H.base_sorted hA) (H.base_mode mA) hpred.1 hpred.2 hy my
  have hyr := H.channel.round_typed (H.base_sorted hA) (H.base_mode mA) hy my
  have hl := H.lift_typed KY KP hA mA hm mm hyr.1 hyr.2
  have f₄ := H.channel.eval_formula H.probe.carrier_sorted H.probe.carrier_mode hi mi hl.1 hl.2
  obtain ⟨t,ht⟩ := L.triple.codomain.1
  exact (hu.trans har' (f₁.1 t ht) (f₂.1 t ht) (f₃.1 t ht)).trans hp'
    (f₁.1 t ht) (f₃.1 t ht) (f₄.1 t ht)
end Formed
end RelationalCode

namespace SpecializedCode
variable (B : SpecializedCode S)
/-- The specialized parameter observation of a source element through the relational probe. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variante1f12e1519f587debd9f45f6b1243ae2b449e277871b8db54681b249181c0728.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccb4039dc0f871b97a118e81bc5316902aebfe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

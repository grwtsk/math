# responseProbe_compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c29582a-fdb8-3f29-0de1-4e4d640232df",
  "kind": "theorem",
  "lexical_name": "responseProbe_compare",
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
  "slug": "responseprobe-compare--4446248289dfcc114f43c7c7",
  "source": {
    "blob": "92fe1999acd4103b1b0e828ca5aeacf8f814476b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1954,
    "line": 1920,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4446248289dfcc114f43c7c7d02ddf494b503dd6949815679722458467429a62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c29582a-fdb8-3f29-0de1-4e4d640232df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1920–1954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responseProbe_compare {i c : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hc : HasType P Γ c B.xPredType) (mc : WellModed γ c .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code
      B.relational.probe.carrier i c)) :
    Proves P Γ γ (B.relational.channel.predCompare L.code KY.code B.relational.probe.carrier
      (B.responsePred L.code KY.code KP.code (B.relational.probeFor L.code KY.code KP.code i))
      (B.responsePred L.code KY.code KP.code (B.relational.probeFor L.code KY.code KP.code
        c))) := by
  have hz := H.relational_formed.probeFor_typed KY KP hi mi
  have hz' := H.relational_formed.probeFor_typed KY KP hc mc
  have hp := H.responsePred_typed KY KP hz.1 hz.2
  have hp' := H.responsePred_typed KY KP hz'.1 hz'.2
  apply H.relational_formed.channel.predCompare_intro H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode KY hp.1 hp.2 hp'.1 hp'.2
  intro Δ δ e x hx mx
  simp only [responsePred_rename,RelationalCode.probeFor_rename]
  simpa only [LogicSetup.code_rename,QuantifierRoute.code,QuantifierRoute.rename,
    QuantifierCode.rename,ProbeCode.carrier_rename,SpecializedCode.rename,relational,
    ObservationCode.rename,RelationalCode.channel,RelationalCode.rename,ChannelCode.rename,
    ProbeCode.rename] using
    (H.rename e).responseProbe_compare_at (KY.rename e) (KP.rename e) (xPred_typed_rename e
      hi) (e.moded mi) (xPred_typed_rename e hc) (e.moded mc)
      (by simpa only [ProbeCode.carrier_rename,xType,SpecializedCode.rename,relational,
        ObservationCode.rename,RelationalCode.channel,RelationalCode.rename,
        ChannelCode.rename,ProbeCode.rename] using hx) mx (xComparison_rename KY e he)
end

section
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J k p n g j h : Set S} {B : SpecializedCode S}
    (H : B.Formed L I J k p n g j h) (KY : QuantifierRoute L.witnesses C L.base j)
    (KP : QuantifierRoute L.witnesses C L.base h)
include H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean#L1920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fe1999acd4103b1b0e828ca5aeacf8f814476b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

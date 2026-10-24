# responseProbe_compare_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c61aaaa-43bd-acde-05bf-c42ea40e0ae1",
  "kind": "theorem",
  "lexical_name": "responseProbe_compare_at",
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
  "slug": "responseprobe-compare-at--7bae3d6737006bf785d8d139",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29184,
    "line": 29155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bae3d6737006bf785d8d139915e4d760e68350600edcd3c68de259e91c55633",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c61aaaa-43bd-acde-05bf-c42ea40e0ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29155–29184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responseProbe_compare_at {i c x : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hc : HasType P Γ c B.xPredType) (mc : WellModed γ c .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code B.relational.probe.carrier i c)) :
    Equivalent P Γ γ
      (B.relational.channel.eval B.relational.probe.carrier (B.responsePred L.code KY.code KP.code (B.relational.probeFor L.code KY.code KP.code i)) x)
      (B.relational.channel.eval B.relational.probe.carrier (B.responsePred L.code KY.code KP.code (B.relational.probeFor L.code KY.code KP.code c)) x) := by
  have hz := H.relational_formed.probeFor_typed KY KP hi mi
  have hz' := H.relational_formed.probeFor_typed KY KP hc mc
  have hp := H.responsePred_typed KY KP hz.1 hz.2
  have hp' := H.responsePred_typed KY KP hz'.1 hz'.2
  have rx := H.relational_formed.channel.round_typed H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode hx mx
  have tx := H.tagged_typed 0 rx.1 rx.2
  have rt := H.round_typed tx.1 tx.2
  have hl := H.lift_typed KY KP rt.1 rt.2
  have e1 := H.responsePred_evaluation KY KP hz.1 hz.2 hx mx
  have e2 := H.probe_rounded KY KP hi mi tx.1 tx.2
  have e3 := H.relational_formed.channel.predCompare_elim H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode KY hi mi hc mc hl.1 hl.2 he
  have e4 := H.probe_rounded KY KP hc mc tx.1 tx.2
  have e5 := H.responsePred_evaluation KY KP hz'.1 hz'.2 hx mx
  have f1 := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode hp.1 hp.2 hx mx
  have f2 := H.diamond_formula KY KP hz.1 hz.2 tx.1 tx.2
  have f3 := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode hi mi hl.1 hl.2
  have f4 := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode hc mc hl.1 hl.2
  have f5 := H.diamond_formula KY KP hz'.1 hz'.2 tx.1 tx.2
  have f6 := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode hp'.1 hp'.2 hx mx
  exact f1.equivalent_trans f5 f6 (f1.equivalent_trans f4 f5 (f1.equivalent_trans f3 f4
    (f1.equivalent_trans f2 f3 e1 e2) e3) e4.symm) e5.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L29155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

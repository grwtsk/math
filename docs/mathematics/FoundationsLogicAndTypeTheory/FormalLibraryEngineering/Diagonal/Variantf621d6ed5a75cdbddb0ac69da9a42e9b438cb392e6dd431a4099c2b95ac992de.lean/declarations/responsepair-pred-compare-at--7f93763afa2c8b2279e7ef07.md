# responsePair_pred_compare_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bec11567-0973-1b7b-1719-b2fb5341c247",
  "kind": "theorem",
  "lexical_name": "responsePair_pred_compare_at",
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
  "slug": "responsepair-pred-compare-at--7f93763afa2c8b2279e7ef07",
  "source": {
    "blob": "712c86afd17675d2ac360e778368bbff3fb96d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1161,
    "line": 1133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f93763afa2c8b2279e7ef07462c223b9d1253a273b974335274cd4fe0c867c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bec11567-0973-1b7b-1719-b2fb5341c247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1133–1161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responsePair_pred_compare_at {v a x : Expr S}
    (hv : HasType P Γ v B.relational.probe.carrier) (mv : WellModed γ v .data)
    (ha : HasType P Γ a B.yType) (ma : WellModed γ a .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hr : Proves P Γ γ (B.response L.code KY.code KP.code v)) :
    Equivalent P Γ γ
      (B.relational.channel.eval B.relational.probe.carrier (B.rPred L.code KY.code KP.code
        (B.pair L.code KY.code KP.code (B.part L.code KY.code KP.code v) a)) x)
      (B.relational.channel.eval B.relational.probe.carrier (B.responsePred L.code KY.code
        KP.code v) x) := by
  have pv := H.part_typed KY KP hv mv
  have px := H.pair_typed KY KP pv.1 pv.2 ha ma
  have ir := H.rPred_typed KY KP px.1 px.2
  have iv := H.responsePred_typed KY KP hv mv
  have rx := H.relational_formed.channel.round_typed H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode hx mx
  have t1 := H.tagged_typed 1 rx.1 rx.2
  have t0 := H.tagged_typed 0 rx.1 rx.2
  have f1 := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode ir.1 ir.2 hx mx
  have f4 := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode iv.1 iv.2 hx mx
  have f2 := H.ev_formula px.1 px.2 t1.1 t1.2
  have f3 := H.diamond_formula KY KP hv mv t0.1 t0.2
  have e1 := H.rPred_evaluation KY KP px.1 px.2 hx mx
  have e2 := H.responsePair_left KY KP hv mv ha ma rx.1 rx.2 hr
  have e3 := H.responsePred_evaluation KY KP hv mv hx mx
  exact f1.equivalent_trans f3 f4 (f1.equivalent_trans f2 f3 e1 e2) e3.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean#L1133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712c86afd17675d2ac360e778368bbff3fb96d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# rPred_compare_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac625689-b6ce-5f29-806a-4e8de22977ae",
  "kind": "theorem",
  "lexical_name": "rPred_compare_at",
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
  "slug": "rpred-compare-at--09f0af67243d5b1af444cc3f",
  "source": {
    "blob": "865305ad13773a1bfae279e1cdb9a1aa4fd17a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2073,
    "line": 2046,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09f0af67243d5b1af444cc3fb5df92cc75972201c1e5acf943c84f57a5cd96b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac625689-b6ce-5f29-806a-4e8de22977ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2046–2073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rPred_compare_at {v c x : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hc : HasType P Γ c B.predType) (mc : WellModed γ c .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code B.baseType v c)) :
    Equivalent P Γ γ (B.relational.channel.eval B.relational.probe.carrier (B.rPred L.code
      KY.code KP.code v) x)
      (B.relational.channel.eval B.relational.probe.carrier (B.rPred L.code KY.code KP.code c)
        x) := by
  have rx := H.relational_formed.channel.round_typed H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode hx mx
  have tx := H.tagged_typed 1 rx.1 rx.2
  have e1 := H.rPred_evaluation KY KP hv mv hx mx
  have e2 := H.rPred_evaluation KY KP hc mc hx mx
  have ec := H.ev_compare KY hv mv hc mc tx.1 tx.2 he
  have iv := H.rPred_typed KY KP hv mv
  have ic := H.rPred_typed KY KP hc mc
  have fv := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode iv.1 iv.2 hx mx
  have fc := H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
    H.relational_formed.probe.carrier_mode ic.1 ic.2 hx mx
  have fwv := H.ev_formula hv mv tx.1 tx.2
  have fwc := H.ev_formula hc mc tx.1 tx.2
  change Equivalent P Γ γ _ (B.ev v _) at e1
  change Equivalent P Γ γ _ (B.ev c _) at e2
  apply L.equivalent_of_iff fv fc
  pts_pl L using [e1,e2,ec]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean#L2046).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865305ad13773a1bfae279e1cdb9a1aa4fd17a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# class_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01584bbc-00bd-f3f3-1e41-e55856d5639c",
  "kind": "theorem",
  "lexical_name": "class_evaluation",
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
  "slug": "class-evaluation--4020930be81b4a8f88b39488",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19742,
    "line": 19720,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4020930be81b4a8f88b39488959fb7d6805f3267f977ee1b694972ad5609655d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01584bbc-00bd-f3f3-1e41-e55856d5639c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19720–19742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem class_evaluation (KY : QuantifierRoute L.witnesses C L.base J)
    (hQ : L.Family (R.predicateType T) Q)
    (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data)
    (hw : HasType P Γ w (R.logicalType T)) (mw : WellModed γ w .data)
    {s : S} (hs : HasType P Γ (R.rawType T) (.sort s)) :
    Equivalent P Γ γ (R.eval T (R.classPred L.code K.code T (R.goodBody L.code KY.code T Q) y) w)
      (R.relation L.code K.code T (R.goodBody L.code KY.code T Q) w y) := by
  have hg := h.goodBody_family KY hT mT hQ
  have hb := h.classBody_family K hT mT hg hy my
  have he := h.pred_evaluation hT mT hb hs hw mw
  rw [classBody_instantiate] at he
  have hr := h.round_typed hT mT hw mw
  have hc := h.relation_congr K hT mT hg hw mw hr.1 hr.2 hy my hy my
    (h.relation_round KY K hT mT hQ hw mw) (h.relation_refl K hT mT hg hy my)
  have ht := h.classPred_typed K hT mT hg hy my hs
  exact (h.eval_formula hT mT ht.1 ht.2 hw mw).equivalent_trans
    (h.relation_formula K hT mT hg hr.1 hr.2 hy my)
    (h.relation_formula K hT mT hg hw mw hy my) he hc.symm
end Formed
end ChannelCode

namespace LogicCode
variable (L : LogicCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L19720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

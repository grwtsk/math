# rupAdd_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84a0fcd3-170f-196a-31a7-1a9ccc620b4d",
  "kind": "theorem",
  "lexical_name": "rupAdd_sound",
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
  "slug": "rupadd-sound--0cf5a0a746f6e0d8d61d014e",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 772,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cf5a0a746f6e0d8d61d014e393574c9bdec743ee665ae6e98b7ee1b3a401162",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a0fcd3-170f-196a-31a7-1a9ccc620b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rupAdd_sound {n : Nat} (f : DefaultFormula n) (c : DefaultClause n) (rupHints : Array Nat)
    (f' : DefaultFormula n) (f_readyForRupAdd : ReadyForRupAdd f)
    (rupAddSuccess : performRupAdd f c rupHints = (f', true)) :
    Liff (PosFin n) f f' := by
  have f'_def := rupAdd_result f c rupHints f' f_readyForRupAdd rupAddSuccess
  rw [performRupAdd] at rupAddSuccess
  simp only [Bool.not_eq_true'] at rupAddSuccess
  split at rupAddSuccess
  next insertRupContradiction =>
    intro p
    have f_limplies_fc := safe_insert_of_insertRup f f_readyForRupAdd c insertRupContradiction p
    rw [f'_def]
    constructor
    · exact f_limplies_fc
    · exact limplies_insert f c p
  · split at rupAddSuccess
    · grind
    · split at rupAddSuccess
      · grind
      next performRupCheck_success =>
        rw [Bool.not_eq_false] at performRupCheck_success
        have f_limplies_fc := safe_insert_of_performRupCheck_insertRup f f_readyForRupAdd c rupHints performRupCheck_success
        rw [liff_iff_limplies_and_limplies f f', f'_def]
        constructor
        · exact f_limplies_fc
        · exact limplies_insert f c

end DefaultFormula

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# instCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e02f9938ac725cb1d819cceec9f50520471726835dafde255969d18ccfaa1c59",
  "kind": "instance",
  "lexical_name": "instCompleteLattice",
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
  "slug": "instcompletelattice--90056d716c0fdcbecce1ceeb",
  "source": {
    "blob": "12b50f463583af49c7953a290111372c928f4858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 177,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90056d716c0fdcbecce1ceeb53d8d1699830c814e3681c6ee3120418ff075682",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e02f9938ac725cb1d819cceec9f50520471726835dafde255969d18ccfaa1c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instCompleteLattice : CompleteLattice (Filtration ι m) where
  le := (· ≤ ·)
  le_refl f i := le_rfl
  le_trans f g h h_fg h_gh i := (h_fg i).trans (h_gh i)
  le_antisymm f g h_fg h_gf := Filtration.ext <| funext fun i => (h_fg i).antisymm (h_gf i)
  sup := (· ⊔ ·)
  le_sup_left f g i := le_sup_left
  le_sup_right f g i := le_sup_right
  sup_le f g h h_fh h_gh i := sup_le (h_fh i) (h_gh _)
  inf := (· ⊓ ·)
  inf_le_left f g i := inf_le_left
  inf_le_right f g i := inf_le_right
  le_inf f g h h_fg h_fh i := le_inf (h_fg i) (h_fh i)
  sSup := sSup
  le_sSup s f hf_mem i := le_sSup ⟨f, hf_mem, rfl⟩
  sSup_le s f h_forall i :=
    sSup_le fun m' hm' => by
      obtain ⟨g, hg_mem, hfm'⟩ := hm'
      rw [← hfm']
      exact h_forall g hg_mem i
  sInf := sInf
  sInf_le s f hf_mem i := by
    have hs : s.Nonempty := ⟨f, hf_mem⟩
    simp only [sInf_def, hs, if_true]
    exact sInf_le ⟨f, hf_mem, rfl⟩
  le_sInf s f h_forall i := by
    by_cases hs : s.Nonempty
    swap; · simp only [sInf_def, hs, if_false]; exact f.le i
    simp only [sInf_def, hs, if_true, le_sInf_iff, Set.mem_image, forall_exists_index, and_imp,
      forall_apply_eq_imp_iff₂]
    exact fun g hg_mem => h_forall g hg_mem i
  top := ⊤
  bot := ⊥
  le_top f i := f.le' i
  bot_le f i := bot_le

end Filtration

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant21edd03eee5f083778ce09488938ee6a916ec9b0dd171aaa76b0ff26755a65ad.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b50f463583af49c7953a290111372c928f4858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

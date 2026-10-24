# setOfPred_isExtremePt_isAdmissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f5dfbdd-380c-9da2-ac0e-90e7253ea0ce",
  "kind": "lemma",
  "lexical_name": "setOfPred_isExtremePt_isAdmissible",
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
  "slug": "setofpred-isextremept-isadmissible--61a6e83befc5b8e444205e88",
  "source": {
    "blob": "efae4e51caaa7a1e74362942deb9ef0c78d826e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a6e83befc5b8e444205e885805e954e42eda236a8fa79dcec0e5a0c0a40a27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f5dfbdd-380c-9da2-ac0e-90e7253ea0ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setOfPred_isExtremePt_isAdmissible (le_map : ∀ x, x ≤ f x) :
    IsAdmissible x f {y | IsExtremePt x f y} := by
  apply IsAdmissible.mk
  · constructor
    · refine ⟨(bot_isAdmissible le_map).base_isLeast.1, ?_⟩
      intro y hy hyx
      exfalso
      exact lt_irrefl x (lt_of_le_of_lt ((bot_isAdmissible le_map).base_isLeast.2 hy) hyx)
    · exact fun y h ↦ (bot_isAdmissible le_map).base_isLeast.2 h.1
  · rintro _ ⟨y, hy, rfl⟩
    refine ⟨map_mem_bot le_map hy.mem_bot, ?_⟩
    intro z hz hzy
    have hz' := hz
    rw [← bot_eq_of_le_or_map_le le_map hy] at hz'
    rcases hz' with ⟨_, (hz' | hz')⟩
    · rcases le_iff_lt_or_eq.1 hz' with (hz' | rfl)
      · exact le_trans (hy.map_le_of_mem_of_lt hz hz') (le_map y)
      · exact le_refl (f z)
    · exfalso
      exact lt_irrefl z (lt_of_lt_of_le hzy hz')
  · intro c hc
    refine ⟨(bot_isAdmissible le_map).cSup_mem _ (subset_trans hc (fun _ h ↦ h.mem_bot)), ?_⟩
    intro y hy hy'
    obtain ⟨z, hz, hzy⟩ : ∃ z ∈ c, ¬ (f z ≤ y) := by
      by_contra! h
      apply lt_irrefl y (lt_of_lt_of_le hy' ?_)
      apply cSup_le
      intro z hz
      exact le_trans (le_map z) (h z hz)
    have h : y ≤ z := by
      rw [← bot_eq_of_le_or_map_le le_map (hc hz)] at hy
      exact Or.resolve_right hy.2 hzy
    obtain hyz | rfl := le_iff_lt_or_eq.1 h
    · exact le_trans ((hc hz).map_le_of_mem_of_lt hy hyz) (le_cSup _ _ hz)
    · have hc' := (bot_isAdmissible le_map).cSup_mem _ (subset_trans hc fun _ h ↦ h.mem_bot)
      rw [← bot_eq_of_le_or_map_le le_map (hc hz)] at hc'
      apply hc'.2.resolve_left
      intro hc'
      exact lt_irrefl y (lt_of_lt_of_le hy' hc')

@[deprecated (since := "2026-07-09")]
alias setOf_isExtremePt_isAdmissible := setOfPred_isExtremePt_isAdmissible

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efae4e51caaa7a1e74362942deb9ef0c78d826e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

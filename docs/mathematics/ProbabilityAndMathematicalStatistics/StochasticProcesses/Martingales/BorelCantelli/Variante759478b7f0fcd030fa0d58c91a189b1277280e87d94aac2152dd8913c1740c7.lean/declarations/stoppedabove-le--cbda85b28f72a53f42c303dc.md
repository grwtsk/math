# stoppedAbove_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "106ccfa4c6d2f2ddd103ecea98e0869a124795c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d03d6e7-637c-5292-7326-6812bb9f48f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04267a45-5448-dbeb-d8c8-3154606c78b8",
  "kind": "theorem",
  "lexical_name": "stoppedAbove_le",
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
  "slug": "stoppedabove-le--cbda85b28f72a53f42c303dc",
  "source": {
    "blob": "106ccfa4c6d2f2ddd103ecea98e0869a124795c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 78,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbda85b28f72a53f42c303dc13daf2c36e529b027dda705cdde728b45b763fcf",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04267a45-5448-dbeb-d8c8-3154606c78b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stoppedAbove_le (hr : 0 ≤ r) (hf0 : f 0 = 0)
    (hbdd : ∀ᵐ ω ∂μ, ∀ i, |f (i + 1) ω - f i ω| ≤ R) (i : ℕ) :
    ∀ᵐ ω ∂μ, stoppedAbove f r i ω ≤ r + R := by
  filter_upwards [hbdd] with ω hbddω
  rw [stoppedAbove, stoppedProcess]
  by_cases h_zero : (min (WithTop.some i) (leastGE f r ω)).untopA = 0
  · simp only [h_zero, hf0, Pi.zero_apply]
    positivity
  obtain ⟨k, hk⟩ := Nat.exists_eq_add_one_of_ne_zero h_zero
  rw [hk, add_comm r, ← sub_le_iff_le_add]
  have := notMem_of_lt_hittingAfter (?_ : k < leastGE f r ω)
  · simp only [bot_eq_zero, zero_le, Set.mem_Ici, not_le, forall_const] at this
    exact (sub_lt_sub_left this _).le.trans ((le_abs_self _).trans (hbddω _))
  · suffices WithTop.some k < min (WithTop.some i) (leastGE f r ω) from
      this.trans_le (min_le_right _ _)
    have h_top : min (WithTop.some i) (leastGE f r ω) ≠ ⊤ :=
      ne_top_of_le_ne_top (by simp) (min_le_left _ _)
    lift min (WithTop.some i) (leastGE f r ω) to ℕ using h_top with p
    simp only [WithTop.untopD_coe, WithTop.coe_lt_coe, gt_iff_lt] at *
    lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `106ccfa4c6d2f2ddd103ecea98e0869a124795c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

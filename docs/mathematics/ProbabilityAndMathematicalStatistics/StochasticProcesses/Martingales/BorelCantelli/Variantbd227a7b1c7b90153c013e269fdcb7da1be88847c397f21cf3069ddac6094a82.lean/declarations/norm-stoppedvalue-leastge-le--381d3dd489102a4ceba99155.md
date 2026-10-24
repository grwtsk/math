# norm_stoppedValue_leastGE_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be0bd2b9-e4c9-d48c-9211-91688d031676",
  "kind": "theorem",
  "lexical_name": "norm_stoppedValue_leastGE_le",
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
  "slug": "norm-stoppedvalue-leastge-le--381d3dd489102a4ceba99155",
  "source": {
    "blob": "8413f1a9e8b09cfcfc01dff919f75c3556411362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:381d3dd489102a4ceba991557821996f9b42d3ce563c6222102eb28e0a500013",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be0bd2b9-e4c9-d48c-9211-91688d031676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_stoppedValue_leastGE_le (hr : 0 ≤ r) (hf0 : f 0 = 0)
    (hbdd : ∀ᵐ ω ∂μ, ∀ i, |f (i + 1) ω - f i ω| ≤ R) (i : ℕ) :
    ∀ᵐ ω ∂μ, stoppedValue f (leastGE f r i) ω ≤ r + R := by
  filter_upwards [hbdd] with ω hbddω
  change f (leastGE f r i ω) ω ≤ r + R
  by_cases heq : leastGE f r i ω = 0
  · rw [heq, hf0, Pi.zero_apply]
    exact add_nonneg hr R.coe_nonneg
  · obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero heq
    rw [hk, add_comm, ← sub_le_iff_le_add]
    have := notMem_of_lt_hitting (hk.symm ▸ k.lt_succ_self : k < leastGE f r i ω) (zero_le _)
    simp only [Set.mem_union, Set.mem_Iic, Set.mem_Ici, not_or, not_le] at this
    exact (sub_lt_sub_left this _).le.trans ((le_abs_self _).trans (hbddω _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8413f1a9e8b09cfcfc01dff919f75c3556411362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

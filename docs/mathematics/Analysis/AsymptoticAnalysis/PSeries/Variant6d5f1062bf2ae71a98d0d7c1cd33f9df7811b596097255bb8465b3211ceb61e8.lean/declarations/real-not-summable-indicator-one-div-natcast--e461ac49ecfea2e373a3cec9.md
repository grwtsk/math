# Real.not_summable_indicator_one_div_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb243afb-3279-38ac-b75e-84d7a7fcef0c",
  "kind": "lemma",
  "lexical_name": "Real.not_summable_indicator_one_div_natCast",
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
  "slug": "real-not-summable-indicator-one-div-natcast--e461ac49ecfea2e373a3cec9",
  "source": {
    "blob": "e440a9a003c752da648c95b78f5e12df9cfcebda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 426,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e461ac49ecfea2e373a3cec9b36890fb636b034d8599ee0c1d7bf6364636fff6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb243afb-3279-38ac-b75e-84d7a7fcef0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Real.not_summable_indicator_one_div_natCast {m : ℕ} (hm : m ≠ 0) (k : ZMod m) :
    ¬ Summable ({n : ℕ | (n : ZMod m) = k}.indicator fun n : ℕ ↦ (1 / n : ℝ)) := by
  have : NeZero m := ⟨hm⟩ -- instance is needed below
  rw [← summable_nat_add_iff 1] -- shift by one to avoid non-monotonicity at zero
  have h (n : ℕ) : {n : ℕ | (n : ZMod m) = k - 1}.indicator (fun n : ℕ ↦ (1 / (n + 1 :) : ℝ)) n =
      if (n : ZMod m) = k - 1 then (1 / (n + 1) : ℝ) else (0 : ℝ) := by
    simp only [indicator_apply, mem_setOf_eq, cast_add, cast_one]
  simp_rw [indicator_apply, mem_setOf, cast_add, cast_one, ← eq_sub_iff_add_eq, ← h]
  rw [summable_indicator_mod_iff (fun n₁ n₂ h ↦ by gcongr) (k - 1)]
  exact mt (summable_nat_add_iff (f := fun n : ℕ ↦ 1 / (n : ℝ)) 1).mp not_summable_one_div_natCast

/-!
## Translating the `p`-series by a real number
-/
section shifted

open Filter Asymptotics Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e440a9a003c752da648c95b78f5e12df9cfcebda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

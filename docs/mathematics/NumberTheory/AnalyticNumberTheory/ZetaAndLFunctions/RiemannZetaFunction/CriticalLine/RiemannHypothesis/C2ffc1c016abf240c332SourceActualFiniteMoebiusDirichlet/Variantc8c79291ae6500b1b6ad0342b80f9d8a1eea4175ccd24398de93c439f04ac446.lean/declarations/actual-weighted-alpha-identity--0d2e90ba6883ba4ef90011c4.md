# actual_weighted_alpha_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b01a05ed-725f-c56f-eb47-4dd0240d1de2",
  "kind": "theorem",
  "lexical_name": "actual_weighted_alpha_identity",
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
  "slug": "actual-weighted-alpha-identity--0d2e90ba6883ba4ef90011c4",
  "source": {
    "blob": "90ca2f9a8a21c25182626f7c10f27dc8614915c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d2e90ba6883ba4ef90011c4e74d569b8aba3b5eeacfe3efff3a1c68f10eaab6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b01a05ed-725f-c56f-eb47-4dd0240d1de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_weighted_alpha_identity (N : ℕ) (w : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * w n) =
      alpha N * w N +
        ∑ n ∈ Finset.Icc 1 (N - 1), alpha n * (w n - w (n + 1)) := by
  induction N with
  | zero => simp [alpha]
  | succ N ih =>
    by_cases hN : N = 0
    · subst N
      simp [alpha]
    · have hn : 1 ≤ N := by omega
      have ha : alpha (N + 1) = alpha N + (moebius (N + 1) : ℝ) / (N + 1 : ℕ) := by
        unfold alpha
        rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      have hs : (∑ n ∈ Finset.Icc 1 N, alpha n * (w n - w (n + 1))) =
          (∑ n ∈ Finset.Icc 1 (N - 1), alpha n * (w n - w (n + 1))) +
            alpha N * (w N - w (N + 1)) := by
        simpa only [Nat.sub_add_cancel hn] using
          (Finset.sum_Icc_succ_top (f := fun n => alpha n * (w n - w (n + 1)))
            (by omega : 1 ≤ (N - 1) + 1))
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1), ih, Nat.succ_sub_one, hs, ha]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90ca2f9a8a21c25182626f7c10f27dc8614915c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

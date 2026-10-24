# actual_joint_balanced_tail_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:750c6d89-dea9-0edf-3842-48c52ef53302",
  "kind": "theorem",
  "lexical_name": "actual_joint_balanced_tail_witness",
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
  "slug": "actual-joint-balanced-tail-witness--8907d3e8bf13cbe5f3a1c825",
  "source": {
    "blob": "774d299d2cf354743f402de9ed3fd9013777b24d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 101,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8907d3e8bf13cbe5f3a1c825b533153a95495aed50c25d94cf508654d8e411ed",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:750c6d89-dea9-0edf-3842-48c52ef53302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_balanced_tail_witness :
    ∃ A0 : ℝ, 1 ≤ A0 ∧
    Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A0 ∧
    (∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A0 * (Real.log R + 2) / R ^ 5) ∧
    (∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5)) ∧
    (∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualBalancedAdaptiveTailCost A0 η Q) ∧
    (∀ Q A : ℝ, 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight 1 A)‖ ≤ 1800000 * A0) := by
  obtain ⟨A0, hA0, hlocal, hsix, htail, _⟩ :=
    actual_joint_local_six_sharp_adaptive_witness
  have hbalanced := balanced_tail_of_sharp A0 hA0 htail
  refine ⟨A0, hA0, hlocal, hsix, htail, hbalanced, fun Q A hQ hQA => ?_⟩
  have h := hbalanced 1 Q A (by norm_num) hQ hQA
  rw [actualBalancedAdaptiveTailCost_one A0 Q hQ] at h
  exact h

end RH16BalancedAdaptiveTailBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `774d299d2cf354743f402de9ed3fd9013777b24d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

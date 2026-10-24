# actual_joint_balanced_tail_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:859794de-06d0-3871-34ff-cd7310786718",
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
  "slug": "actual-joint-balanced-tail-witness--baff5f307439c5169b926218",
  "source": {
    "blob": "9da33cae2705a2936ae263728b2c6411ffe8c3bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 109,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baff5f307439c5169b926218c9ae28205dcfcd64198d1792574ac94f539a5f38",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:859794de-06d0-3871-34ff-cd7310786718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–134.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da33cae2705a2936ae263728b2c6411ffe8c3bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

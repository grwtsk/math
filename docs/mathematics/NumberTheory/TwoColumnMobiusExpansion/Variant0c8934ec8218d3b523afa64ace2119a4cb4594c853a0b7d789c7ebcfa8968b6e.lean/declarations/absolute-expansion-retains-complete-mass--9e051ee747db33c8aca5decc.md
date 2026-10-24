# absolute_expansion_retains_complete_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d56c024e-6c26-c2f1-0264-895ae47cc139",
  "kind": "theorem",
  "lexical_name": "absolute_expansion_retains_complete_mass",
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
  "slug": "absolute-expansion-retains-complete-mass--9e051ee747db33c8aca5decc",
  "source": {
    "blob": "843f31a66253ce123b3508acd9aee9760351d18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 102,
    "path": "GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e051ee747db33c8aca5deccb969e303311d31e8b2bd2bb8e2befa7fdd8179f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d56c024e-6c26-c2f1-0264-895ae47cc139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absolute_expansion_retains_complete_mass (s : Finset ℕ) (F : Finset ℕ → Finset ℕ → ℝ)
    {B : ℝ} (hF : ∀ u ∈ s.powerset, ∀ v ∈ s.powerset, |F u v| ≤ B) :
    |∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
      (-1 : ℝ) ^ (u.card + v.card) * F u v| ≤ (4 : ℝ) ^ s.card * B := by
  calc
    _ ≤ ∑ u ∈ s.powerset,
        |∑ v ∈ s.powerset, (-1 : ℝ) ^ (u.card + v.card) * F u v| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
        |(-1 : ℝ) ^ (u.card + v.card) * F u v| :=
      Finset.sum_le_sum (fun _u _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ ∑ _u ∈ s.powerset, ∑ _v ∈ s.powerset, B := by
      apply Finset.sum_le_sum
      intro u hu
      apply Finset.sum_le_sum
      intro v hv
      simpa only [abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul] using hF u hu v hv
    _ = _ := by
      simp only [Finset.sum_const, nsmul_eq_mul, Finset.card_powerset,
        Nat.cast_pow, Nat.cast_ofNat]
      rw [← mul_assoc, ← mul_pow]
      norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.TwoColumnMobiusExpansion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843f31a66253ce123b3508acd9aee9760351d18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

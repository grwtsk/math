# inductive_claim_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21f33f36-591d-a51b-2e7b-07f723051501",
  "kind": "lemma",
  "lexical_name": "inductive_claim_mul",
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
  "slug": "inductive-claim-mul--afa13f9933e4fdf58c962242",
  "source": {
    "blob": "320aae50857a0cc753ae657f9c3042af4d6fe6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant817ce844609e5a0e0456644c10a79c69a910e12221f5a03026d7974e4b4e0453.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afa13f9933e4fdf58c962242e12b9a00c4c4e78620dbc0fc36a61d407cd7cd4a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant817ce844609e5a0e0456644c10a79c69a910e12221f5a03026d7974e4b4e0453.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21f33f36-591d-a51b-2e7b-07f723051501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma inductive_claim_mul (hm : 3 ≤ m)
    (h : ∀ ε : Fin 3 → ℤ, (∀ i, |ε i| = 1) → #((finRange 3).map fun i ↦ A ^ ε i).prod ≤ k * #A)
    (ε : Fin m → ℤ) (hε : ∀ i, |ε i| = 1) :
    #((finRange m).map fun i ↦ A ^ ε i).prod ≤ k ^ (m - 2) * #A := by
  induction m, hm using Nat.le_induction with
  | base => simpa using h ε hε
  | succ m hm ih =>
    obtain _ | m := m
    · simp at hm
    have hm₀ : m ≠ 0 := by simp at hm; positivity
    have hε₀ i : ε i ≠ 0 := fun h ↦ by simpa [h] using hε i
    obtain rfl | hA := A.eq_empty_or_nonempty
    · simp [hε₀]
    have hk : 0 ≤ k :=
      nonneg_of_mul_nonneg_left ((h 1 (by simp)).trans' (by positivity)) (by positivity)
    let π {n} (δ : Fin n → ℤ) : Finset G := ((finRange _).map fun i ↦ A ^ δ i).prod
    let V : Finset G := π ![-ε 1, -ε 0]
    let W : Finset G := π <| tail <| tail ε
    refine le_of_mul_le_mul_left ?_ (by positivity : (0 : ℝ) < #A)
    calc
      (#A * #(π ε) : ℝ)
        = #A * #(V⁻¹ * W) := by
        simp [π, V, W, List.finRange_succ, Fin.tail, Function.comp_def, mul_assoc]
      _ ≤ #(A * V) * #(A * W) := by norm_cast; exact ruzsa_triangle_inequality_invMul_mul_mul ..
      _ = #(π ![1, -ε 1, -ε 0]) * #(π <| Fin.cons 1 <| tail <| tail ε) := by
        simp [π, V, W, List.finRange_succ, Fin.tail, Function.comp_def]
      _ ≤ (k * #A) * (k ^ (m - 1) * #A) := by
        gcongr
        · exact h ![1, -ε 1, -ε 0] fun i ↦ by fin_cases i <;> simp [hε]
        · exact ih (Fin.cons 1 <| tail <| tail ε) <| Fin.cons (by simp) (by simp [hε, Fin.tail])
      _ = #A * (k ^ m * #A) := by rw [← pow_sub_one_mul hm₀]; ring

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant817ce844609e5a0e0456644c10a79c69a910e12221f5a03026d7974e4b4e0453.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant817ce844609e5a0e0456644c10a79c69a910e12221f5a03026d7974e4b4e0453.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320aae50857a0cc753ae657f9c3042af4d6fe6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

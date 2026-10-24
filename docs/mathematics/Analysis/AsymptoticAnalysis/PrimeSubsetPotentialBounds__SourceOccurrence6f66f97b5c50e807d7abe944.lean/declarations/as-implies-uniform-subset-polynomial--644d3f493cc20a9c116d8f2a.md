# AS_implies_uniform_subset_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18df4c6a-63c4-9e50-d533-34d34c75ffa5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f2e93af-2522-2987-dd0f-36dff7ccf90e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c2885fa-aa00-cd89-f2df-12c0902904e1",
  "kind": "theorem",
  "lexical_name": "AS_implies_uniform_subset_polynomial",
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
  "slug": "as-implies-uniform-subset-polynomial--644d3f493cc20a9c116d8f2a",
  "source": {
    "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 99,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:644d3f493cc20a9c116d8f2a484aff13d962500b29fd069da7202080b5db917f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c2885fa-aa00-cd89-f2df-12c0902904e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AS_implies_uniform_subset_polynomial (A : ReserveFunctional) (C q η : ℝ)
    (hAS : ASObligation A C q η) :
    ∃ K R : ℝ, 0 ≤ K ∧ 0 ≤ R ∧
      ∀ T : ℝ, 0 ≤ T → ∀ P : Finset ℕ, P ⊆ primeInventory T →
        (∀ p ∈ P, (p:ℝ)⁻¹ ≤ η) → sourceEnergy P T ≤ K*(1+T)^R := by
  obtain ⟨M, hM, hprime⟩ := PrimeHarmonicLog.prime_harmonic_logarithmic_estimate
  let d := C*M
  let H := C*M*Real.log 2
  let a := A.initialExponent+1
  let b := q+1
  let K := Real.exp H*(4+A.initialConstant+C*M)
  let R := d+a+b
  have hd : 0 ≤ d := mul_nonneg hAS.1 hM
  have ha : 0 ≤ a := by dsimp [a]; linarith [A.initialExponent_nonneg]
  have hb : 0 ≤ b := by dsimp [b]; linarith [hAS.2.1]
  refine ⟨K,R,?_,?_,?_⟩
  · dsimp [K]
    have hC := hAS.1
    have hA := A.initialConstant_nonneg
    positivity
  · exact add_nonneg (add_nonneg hd ha) hb
  · intro T hT P hP hsmall
    have hbase : 1 ≤ 1+T := by linarith
    have hmass : harmonicMass P ≤ M*Real.log (2+T) := by
      have hp := hprime T hT
      have hp' : harmonicMass (primeInventory T) ≤ M*Real.log (2+T) := by
        simpa only [harmonicMass, PPNC.harmonicMass, Obstruction.harmonicMass, one_div] using hp
      exact (harmonicMass_subset hP).trans hp'
    have hcost : C*harmonicMass P ≤ d*Real.log (1+T)+H := by
      calc
        _ ≤ C*(M*Real.log (2+T)) := mul_le_mul_of_nonneg_left hmass hAS.1
        _ ≤ C*(M*(Real.log 2+Real.log (1+T))) :=
          mul_le_mul_of_nonneg_left
            (mul_le_mul_of_nonneg_left (ASClosure.log_horizon_subadditive hT) hM) hAS.1
        _ = _ := by dsimp [d,H]; ring
    have he := Cost.exp_cost_polynomial hT hcost
    have hinit : potential A ∅ T ≤ (4+A.initialConstant)*(1+T)^a :=
      ASClosure.initial_potential_bound A hT
    have hdebit : C*harmonicMass P*(1+T)^q ≤ (C*M)*(1+T)^b := by
      calc
        _ ≤ C*(M*Real.log (2+T))*(1+T)^q :=
          mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hmass hAS.1) (by positivity)
        _ ≤ C*(M*(1+T))*(1+T)^q :=
          mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_left
              (mul_le_mul_of_nonneg_left (ASClosure.log_horizon_linear hT) hM) hAS.1)
            (by positivity)
        _ = _ := by
          dsimp [b]
          rw [Real.rpow_add (by linarith : 0 < 1+T), Real.rpow_one]
          ring
    have hpA := Real.rpow_le_rpow_of_exponent_le hbase (show a ≤ a+b by linarith)
    have hpB := Real.rpow_le_rpow_of_exponent_le hbase (show b ≤ a+b by linarith)
    have hinput : potential A ∅ T+C*harmonicMass P*(1+T)^q ≤
        (4+A.initialConstant+C*M)*(1+T)^(a+b) := by
      have h1 := hinit.trans (mul_le_mul_of_nonneg_left hpA
        (by linarith [A.initialConstant_nonneg]))
      have h2 := hdebit.trans (mul_le_mul_of_nonneg_left hpB (mul_nonneg hAS.1 hM))
      calc
        _ ≤ (4+A.initialConstant)*(1+T)^(a+b)+(C*M)*(1+T)^(a+b) := add_le_add h1 h2
        _ = _ := by ring
    have hinput0 : 0 ≤ potential A ∅ T+C*harmonicMass P*(1+T)^q := by
      apply add_nonneg
      · exact add_nonneg (sourceEnergy_nonneg _ _) (A.nonnegative _ _)
      · exact mul_nonneg (mul_nonneg hAS.1 (ASClosure.harmonicMass_nonnegative _)) (by positivity)
    calc
      sourceEnergy P T ≤ potential A P T := le_add_of_nonneg_right (A.nonnegative _ _)
      _ ≤ Real.exp (C*harmonicMass P)*(potential A ∅ T+C*harmonicMass P*(1+T)^q) :=
        subset_potential_bound A C q η T hAS hT P hP hsmall
      _ ≤ (Real.exp H*(1+T)^d)*((4+A.initialConstant+C*M)*(1+T)^(a+b)) :=
        mul_le_mul he hinput hinput0 (by positivity)
      _ = K*(1+T)^R := by
        dsimp [K,R]
        simp only [Real.rpow_add (by linarith : 0 < 1+T)]
        ring

/-- Every actual high-prime band is an inventory subset, independently of scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75c268fe2e095f5faa49f0dbfa6cc5212d4b623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

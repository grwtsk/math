# absoluteHighCoprimeMobiusSquareMajorant_le_quotientMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c879af4d-4d9f-a7c2-97c0-2477013f528a",
  "kind": "theorem",
  "lexical_name": "absoluteHighCoprimeMobiusSquareMajorant_le_quotientMass",
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
  "slug": "absolutehighcoprimemobiussquaremajorant-le-quotientmass--d9471a050639a929807fc06b",
  "source": {
    "blob": "797b24c722c661d7ee3f8a2f0de91c7618db5331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 223,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9471a050639a929807fc06b5f2d921d833a1a997dc94a791e36d71cb2586ca7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c879af4d-4d9f-a7c2-97c0-2477013f528a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteHighCoprimeMobiusSquareMajorant_le_quotientMass
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    absoluteHighCoprimeMobiusSquareMajorant X w ≤
      highMobiusQuotientSquareMass X *
        (1 + Real.log ((4 * X : ℕ) : ℝ))^2 *
        Real.log ((4 * X : ℕ) : ℝ)^2 := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  have hXone : 1 ≤ X := by omega
  have hLnonneg : 0 ≤ L := by
    unfold L
    exact Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  unfold absoluteHighCoprimeMobiusSquareMajorant
    highMobiusQuotientSquareMass
  calc
    (∑ r ∈ highMobiusTailIndexSet X,
      |mobiusReal r| * (centeredDivisibilityTail X w r)^2) ≤
      ∑ r ∈ highMobiusTailIndexSet X,
        (((4 * X / r : ℕ) : ℝ)^2) *
          (1 + L)^2 * L^2 := by
      apply Finset.sum_le_sum
      intro r hr
      rcases mem_highMobiusTailIndexSet_iff.mp hr with
        ⟨hrmem, hroot⟩
      have hrgt : 1 < r := by
        have hrootOne : 1 ≤ X.sqrt := by
          rw [Nat.le_sqrt]
          omega
        omega
      have htail :=
        abs_centeredDivisibilityTail_le_quotient_log_product
          hXone hrmem hrgt hw
      have hmu : |mobiusReal r| ≤ 1 := by
        unfold mobiusReal
        exact_mod_cast
          (ArithmeticFunction.abs_moebius_le_one (n := r))
      have hMnonneg :
          0 ≤ ((4 * X / r : ℕ) : ℝ) * (1 + L) * L := by
        positivity
      have hsq :
          (centeredDivisibilityTail X w r)^2 ≤
            (((4 * X / r : ℕ) : ℝ) * (1 + L) * L)^2 := by
        have habsSq :
            |centeredDivisibilityTail X w r|^2 ≤
              (((4 * X / r : ℕ) : ℝ) * (1 + L) * L)^2 := by
          exact mul_self_le_mul_self (abs_nonneg _) htail
        simpa [sq_abs] using habsSq
      calc
        |mobiusReal r| *
            (centeredDivisibilityTail X w r)^2 ≤
          1 * (centeredDivisibilityTail X w r)^2 := by
          exact mul_le_mul_of_nonneg_right hmu (sq_nonneg _)
        _ ≤ (((4 * X / r : ℕ) : ℝ) * (1 + L) * L)^2 := by
          simpa using hsq
        _ = (((4 * X / r : ℕ) : ℝ)^2) *
            (1 + L)^2 * L^2 := by ring
    _ =
      (∑ r ∈ highMobiusTailIndexSet X,
        (((4 * X / r : ℕ) : ℝ)^2)) *
          (1 + L)^2 * L^2 := by
      rw [Finset.sum_mul, Finset.sum_mul]
    _ = highMobiusQuotientSquareMass X *
        (1 + Real.log ((4 * X : ℕ) : ℝ))^2 *
        Real.log ((4 * X : ℕ) : ℝ)^2 := by
      rfl

/-- Actual target-scale estimate for the complete large-index part of the
coprime Möbius square.  The constant `1152` is explicit and non-optimized. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `797b24c722c661d7ee3f8a2f0de91c7618db5331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f3b1b75-20f7-ec72-c143-2ac2d069127e",
  "kind": "theorem",
  "lexical_name": "parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap",
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
  "slug": "paritycenteredintegercoordinateoffdiagonalcovariance-eq-wrap--738fad32d5613ae9dd49fa0e",
  "source": {
    "blob": "eb144670f6e44e124345cb33ae420b2d948377fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:738fad32d5613ae9dd49fa0ebac8c4db323c15f5234d2941bbaf92a223535988",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f3b1b75-20f7-ec72-c143-2ac2d069127e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateOffDiagonalCovariance b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  classical
  have swap (S T U : Finset ℕ) (f : ℕ → ℕ → ℕ → ℝ) :
      (∑ a ∈ S, ∑ b ∈ T, ∑ c ∈ U, f a b c) =
        ∑ c ∈ U, ∑ a ∈ S, ∑ b ∈ T, f a b c := by
    conv_lhs =>
      arg 2
      ext a
      rw [Finset.sum_comm]
    rw [Finset.sum_comm]
  have expand (c₁ c₂ : ℕ) :
      (if c₁ ≡ c₂ [MOD d * d] ∧ c₁ ≠ c₂ then
        parityHalfIndexZeroWindingFiber b r H c₁ *
          parityHalfIndexZeroWindingFiber b r H c₂ else 0) =
      ∑ h ∈ H, ∑ g ∈ H,
        ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
          ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
            if halfIndexZeroWindingCoordinate m h = c₁ ∧
                halfIndexZeroWindingCoordinate n g = c₂ ∧
                (c₁ ≡ c₂ [MOD d * d] ∧ c₁ ≠ c₂) then
              halfIndexBinaryMobiusCoefficient r m h *
                halfIndexBinaryMobiusCoefficient r n g else 0 := by
    unfold parityHalfIndexZeroWindingFiber
    by_cases hc : c₁ ≡ c₂ [MOD d * d] ∧ c₁ ≠ c₂
    · rw [if_pos hc]
      simp only [hc.1, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro h _
      apply Finset.sum_congr rfl
      intro g _
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      split_ifs <;> simp_all
    · simp [hc]
  unfold parityCenteredIntegerCoordinateOffDiagonalCovariance
    parityCenteredIntegerCoordinateAmplitude
  simp_rw [← parityHalfIndexZeroWindingFiber_eq_shiftCorrelation, expand]
  unfold parityHalfIndexSignedQuarticWrap
  apply congrArg (fun x : ℝ => 4 * x)
  rw [swap]
  apply Finset.sum_congr rfl
  intro h _
  rw [swap]
  apply Finset.sum_congr rfl
  intro g _
  rw [swap]
  apply Finset.sum_congr rfl
  intro m hm
  rw [swap]
  apply Finset.sum_congr rfl
  intro n hn
  have hc₁ := halfIndexZeroWindingCoordinate_lt_endpoint hm
  have hc₂ := halfIndexZeroWindingCoordinate_lt_endpoint hn
  simp only [ite_and]
  simp [hc₁, hc₂, halfIndexQuarticMobiusCoefficient_eq_binary_mul]

/-- The affine-Chowla spectral variance defect is purely off-diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb144670f6e44e124345cb33ae420b2d948377fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

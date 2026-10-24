# cyclicFejerDistanceFiber_weighted_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ee0468c-46ff-cc9f-f9a3-1876c42e0bf6",
  "kind": "theorem",
  "lexical_name": "cyclicFejerDistanceFiber_weighted_le",
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
  "slug": "cyclicfejerdistancefiber-weighted-le--743fd0bf454df74a1e4a8387",
  "source": {
    "blob": "ffc561b844afbe7d9a09a18930ed1c0d5220e077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 24,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:743fd0bf454df74a1e4a8387bbfcbae8c00bf5173397c85250a31345cfe1d144",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee0468c-46ff-cc9f-f9a3-1876c42e0bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicFejerDistanceFiber_weighted_le
    {X N d : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hd : d ≤ 2 * X) :
    (∑ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X)))
        with cyclicFejerDistance X r = d,
      cyclicFejerKernel X N r *
        (2 * cyclicFejerDistance X r : ℕ))
      ≤
    4 * ((d : ℝ) *
      sampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N d) := by
  rcases hreg with ⟨hX, hN, hNL⟩
  have hpoint :
      ∀ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X))),
        cyclicFejerDistance X r = d →
          cyclicFejerKernel X N r *
              (2 * cyclicFejerDistance X r : ℕ)
            ≤
          sampledTriangularKernelAtPeriod
              (fejerOctavePeriod X) N d *
              (2 * d : ℕ) := by
    intro r hr hdist
    rw [hdist]
    have hsample :=
      cyclicFejerKernel_le_distanceSample
        ⟨hX, hN, hNL⟩ r
    rw [hdist] at hsample
    exact mul_le_mul_of_nonneg_right hsample (by positivity)
  calc
    (∑ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X)))
        with cyclicFejerDistance X r = d,
      cyclicFejerKernel X N r *
        (2 * cyclicFejerDistance X r : ℕ))
      ≤
    ∑ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X)))
        with cyclicFejerDistance X r = d,
      sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d *
          (2 * d : ℕ) := by
            apply Finset.sum_le_sum
            intro r hr
            exact hpoint r (Finset.mem_univ r)
              (Finset.mem_filter.mp hr).2
    _ =
      ((cyclicFejerDistanceFiber X d).card : ℝ) *
        (sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d *
          (2 * d : ℕ)) := by
            unfold cyclicFejerDistanceFiber
            simp [Finset.sum_const, nsmul_eq_mul]
            ring
    _ ≤
      2 *
        (sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d *
          (2 * d : ℕ)) := by
            have hcard :=
              cyclicFejerDistanceFiber_card_le_two hX (d := d)
            have hsample0 :
                0 ≤ sampledTriangularKernelAtPeriod
                  (fejerOctavePeriod X) N d := by
              unfold sampledTriangularKernelAtPeriod
              positivity
            have hfactor :
                0 ≤ sampledTriangularKernelAtPeriod
                  (fejerOctavePeriod X) N d *
                  (2 * d : ℕ) := by
              positivity
            exact mul_le_mul_of_nonneg_right
              (by exact_mod_cast hcard) hfactor
    _ =
      4 * ((d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d) := by
            push_cast
            ring

/-- Regroup the residue sum exactly by cyclic distance and apply the
fiberwise bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc561b844afbe7d9a09a18930ed1c0d5220e077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

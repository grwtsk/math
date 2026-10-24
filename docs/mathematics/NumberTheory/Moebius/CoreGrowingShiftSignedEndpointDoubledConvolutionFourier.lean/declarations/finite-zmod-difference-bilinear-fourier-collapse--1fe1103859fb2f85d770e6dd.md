# finite_zmod_difference_bilinear_fourier_collapse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47295858-6573-5706-4705-fe46911d986e",
  "kind": "theorem",
  "lexical_name": "finite_zmod_difference_bilinear_fourier_collapse",
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
  "slug": "finite-zmod-difference-bilinear-fourier-collapse--1fe1103859fb2f85d770e6dd",
  "source": {
    "blob": "69c56354b8379fe9854dffc2ecfe92dddcb46f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 623,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fe1103859fb2f85d770e6dd2532db021a723fb0a1f33905580203c27da6a8ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47295858-6573-5706-4705-fe46911d986e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_zmod_difference_bilinear_fourier_collapse
    {Q : ℕ} [NeZero Q]
    (f a : ZMod Q → ℂ) :
    (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
      ∑ r : ZMod Q, ∑ s : ZMod Q,
        ZMod.dft f (-r) * ZMod.dft f (-s) *
          finiteZModKernelDFT2 (fun x y => a (y - x)) r s =
      (Q : ℂ)⁻¹ *
        ∑ s : ZMod Q,
          ZMod.dft f s * ZMod.dft f (-s) * ZMod.dft a s := by
  classical
  have hQ : (Q : ℂ) ≠ 0 := by
    exact_mod_cast (NeZero.ne Q)
  have hinner (s : ZMod Q) :
      (∑ r : ZMod Q,
        ZMod.dft f (-r) * ZMod.dft f (-s) *
          finiteZModKernelDFT2 (fun x y => a (y - x)) r s) =
        (Q : ℂ) *
          (ZMod.dft f s * ZMod.dft f (-s) * ZMod.dft a s) := by
    simp_rw [finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal]
    rw [Finset.sum_eq_single (-s)]
    · simp
      ring
    · intro r _hr hrs
      have hne : r + s ≠ 0 := by
        intro hzero
        apply hrs
        have h := congrArg (fun z => z - s) hzero
        simpa using h
      simp [hne]
    · simp
  simp_rw [hinner]
  rw [← Finset.mul_sum]
  field_simp [hQ]

/-- Doubled two-dimensional DFT of the cyclic bulk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c56354b8379fe9854dffc2ecfe92dddcb46f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

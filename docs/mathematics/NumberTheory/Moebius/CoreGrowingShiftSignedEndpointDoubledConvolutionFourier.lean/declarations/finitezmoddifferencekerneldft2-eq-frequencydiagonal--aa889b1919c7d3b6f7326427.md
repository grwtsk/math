# finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:324b7ff6-c074-9efa-e884-d87c6ac98fc5",
  "kind": "theorem",
  "lexical_name": "finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal",
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
  "slug": "finitezmoddifferencekerneldft2-eq-frequencydiagonal--aa889b1919c7d3b6f7326427",
  "source": {
    "blob": "69c56354b8379fe9854dffc2ecfe92dddcb46f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 569,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa889b1919c7d3b6f732642792735ff7a0ad4b30a6b479d4d0e1b13f9c25f7cd",
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

Occurrence: `result:324b7ff6-c074-9efa-e884-d87c6ac98fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal
    {Q : ℕ} [NeZero Q]
    (a : ZMod Q → ℂ)
    (r s : ZMod Q) :
    finiteZModKernelDFT2 (fun x y => a (y - x)) r s =
      if r + s = 0 then (Q : ℂ) * ZMod.dft a s else 0 := by
  classical
  have hinner (x : ZMod Q) :
      ZMod.dft (fun y => a (y - x)) s =
        ZMod.stdAddChar (-(x * s)) * ZMod.dft a s := by
    rw [ZMod.dft_apply, ZMod.dft_apply]
    simp only [smul_eq_mul]
    calc
      (∑ y : ZMod Q,
        ZMod.stdAddChar (-(y * s)) * a (y - x)) =
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-((z + x) * s)) * a z := by
        refine Fintype.sum_equiv (Equiv.addRight x) _ _ ?_
        intro z
        simp
      _ = ∑ z : ZMod Q,
          ZMod.stdAddChar (-(x * s)) *
            (ZMod.stdAddChar (-(z * s)) * a z) := by
        apply Fintype.sum_congr
        intro z
        rw [add_mul, neg_add, map_add_eq_mul]
        ring
      _ = ZMod.stdAddChar (-(x * s)) *
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-(z * s)) * a z := by
        rw [Finset.mul_sum]
      _ = ZMod.stdAddChar (-(x * s)) * ZMod.dft a s := by
        rfl
  unfold finiteZModKernelDFT2
  rw [ZMod.dft_apply]
  simp only [smul_eq_mul]
  simp_rw [hinner]
  calc
    (∑ x : ZMod Q,
      ZMod.stdAddChar (-(x * r)) *
        (ZMod.stdAddChar (-(x * s)) * ZMod.dft a s)) =
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * (r + s)))) * ZMod.dft a s := by
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro x _hx
          rw [mul_add, neg_add, map_add_eq_mul]
          ring
    _ = if r + s = 0 then (Q : ℂ) * ZMod.dft a s else 0 := by
      rw [finite_stdAddChar_neg_mul_sum]
      by_cases hrs : r + s = 0 <;> simp [hrs]

/-- Generic bilinear Fourier packet for a cyclic difference kernel collapses
from two frequencies to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c56354b8379fe9854dffc2ecfe92dddcb46f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

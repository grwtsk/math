# finite_zmod_differenceKernelDFT2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c536aeca-9713-968f-9707-15eda6729a13",
  "kind": "theorem",
  "lexical_name": "finite_zmod_differenceKernelDFT2",
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
  "slug": "finite-zmod-differencekerneldft2--5ee394b30de81b70443461c9",
  "source": {
    "blob": "62f56bfbe4f46eec878fa44bd00e298ae782a08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 484,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee394b30de81b70443461c9c96d646ab6637c03a0c9d0754a6db15fe9215c0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c536aeca-9713-968f-9707-15eda6729a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_zmod_differenceKernelDFT2
    {Q : ℕ} [NeZero Q]
    (d : ZMod Q → ℂ)
    (r s : ZMod Q) :
    finiteZModKernelDFT2 (fun x y => d (y - x)) r s =
      if r + s = 0 then (Q : ℂ) * ZMod.dft d s else 0 := by
  classical
  unfold finiteZModKernelDFT2
  rw [ZMod.dft_apply]
  simp_rw [finite_zmod_dft_difference_slice]
  simp only [smul_eq_mul]
  have hfactor :
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * r)) *
          (ZMod.stdAddChar (-(x * s)) * ZMod.dft d s)) =
      (∑ x : ZMod Q,
        ZMod.stdAddChar (x * (-(r + s)))) * ZMod.dft d s := by
    apply Fintype.sum_congr
    intro x
    rw [← map_add_eq_mul]
    congr 2
    ring
  rw [hfactor, ← Finset.sum_mul,
    zmod_character_orthogonality (-(r + s))]
  by_cases hrs : r + s = 0
  · simp [hrs]
  · have hneg : -(r + s) ≠ 0 := neg_ne_zero.mpr hrs
    simp [hrs, hneg]

/-- The complete bilinear Fourier packet of a cyclic difference kernel
collapses from two frequencies to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f56bfbe4f46eec878fa44bd00e298ae782a08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

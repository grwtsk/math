# finite_zmod_differenceKernel_bilinearFourier_collapse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:901052fb-7250-d75d-83af-5999e1b2da0d",
  "kind": "theorem",
  "lexical_name": "finite_zmod_differenceKernel_bilinearFourier_collapse",
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
  "slug": "finite-zmod-differencekernel-bilinearfourier-collapse--dea47227789d6d2a96c60a1b",
  "source": {
    "blob": "62f56bfbe4f46eec878fa44bd00e298ae782a08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 515,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dea47227789d6d2a96c60a1bd773fdb3f47539bcbbf99dc39c1ca9116a47572f",
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

Occurrence: `result:901052fb-7250-d75d-83af-5999e1b2da0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_zmod_differenceKernel_bilinearFourier_collapse
    {Q : ℕ} [NeZero Q]
    (f d : ZMod Q → ℂ) :
    (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ∑ s : ZMod Q,
          ZMod.dft f (-r) * ZMod.dft f (-s) *
            finiteZModKernelDFT2 (fun x y => d (y - x)) r s =
      (Q : ℂ)⁻¹ *
        ∑ s : ZMod Q,
          ZMod.dft f s * ZMod.dft f (-s) * ZMod.dft d s := by
  classical
  simp_rw [finite_zmod_differenceKernelDFT2]
  have hinner (s : ZMod Q) :
      (∑ r : ZMod Q,
        ZMod.dft f (-r) * ZMod.dft f (-s) *
          (if r + s = 0 then (Q : ℂ) * ZMod.dft d s else 0)) =
      ZMod.dft f s * ZMod.dft f (-s) *
        ((Q : ℂ) * ZMod.dft d s) := by
    rw [Finset.sum_eq_single (-s)]
    · simp
    · intro r _hr hrs
      have hne : r + s ≠ 0 := by
        intro hz
        have : r = -s := by omega
        exact hrs this
      simp [hne]
    · intro hnot
      exact (hnot (Finset.mem_univ (-s))).elim
  simp_rw [hinner]
  have hQ : (Q : ℂ) ≠ 0 := by exact_mod_cast NeZero.ne Q
  field_simp [hQ]
  ring

/-! ## Frequency packets for the bulk and corrections -/

/-- Generic two-frequency packet attached to a zero-padded endpoint kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f56bfbe4f46eec878fa44bd00e298ae782a08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# finiteZModKernelDFT2_eq_affineLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17758079-1e0b-749b-b7b3-b4d7e436e75f",
  "kind": "theorem",
  "lexical_name": "finiteZModKernelDFT2_eq_affineLine",
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
  "slug": "finitezmodkerneldft2-eq-affineline--7d22a2250024b35f58b2ca8a",
  "source": {
    "blob": "3a0be56254bbb841aca8356f07b6acb60f88b3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 207,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseNumeratorFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d22a2250024b35f58b2ca8a45408d20f59ef0b9d6fac3fc46e8ea3aad6ba31d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseNumeratorFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17758079-1e0b-749b-b7b3-b4d7e436e75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteZModKernelDFT2_eq_affineLine
    {Q : ℕ} [NeZero Q]
    (E : ZMod Q → ZMod Q → ℂ)
    (c u s : ZMod Q)
    (hsupp : ∀ x h, x + h ≠ c → E x h = 0) :
    finiteZModKernelDFT2 E u s =
      ZMod.stdAddChar (-(c * u)) *
        ZMod.dft (fun h => E (c - h) h) (s - u) := by
  classical
  unfold finiteZModKernelDFT2
  simp only [ZMod.dft_apply, smul_eq_mul]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  have hinner (h : ZMod Q) :
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) *
          (ZMod.stdAddChar (-(h * s)) * E x h)) =
        ZMod.stdAddChar (-(h * s)) *
          (ZMod.stdAddChar (-((c - h) * u)) * E (c - h) h) := by
    calc
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) *
          (ZMod.stdAddChar (-(h * s)) * E x h)) =
          ZMod.stdAddChar (-(h * s)) *
            ∑ x : ZMod Q,
              ZMod.stdAddChar (-(x * u)) * E x h := by
                rw [Finset.mul_sum]
                apply Finset.sum_congr rfl
                intro x _hx
                ring
      _ = ZMod.stdAddChar (-(h * s)) *
          (ZMod.stdAddChar (-((c - h) * u)) * E (c - h) h) := by
            congr 1
            rw [Finset.sum_eq_single (c - h)]
            · rfl
            · intro x _hx hx
              have hne : x + h ≠ c := by
                intro heq
                apply hx
                have hsub := congrArg (fun z => z - h) heq
                simpa using hsub
              rw [hsupp x h hne]
              simp
            · simp
  simp_rw [hinner]
  calc
    (∑ h : ZMod Q,
      ZMod.stdAddChar (-(h * s)) *
        (ZMod.stdAddChar (-((c - h) * u)) * E (c - h) h)) =
      ∑ h : ZMod Q,
        ZMod.stdAddChar (-(c * u)) *
          (ZMod.stdAddChar (-(h * (s - u))) * E (c - h) h) := by
            apply Finset.sum_congr rfl
            intro h _hh
            have hchar :
                ZMod.stdAddChar (-(h * s)) *
                    ZMod.stdAddChar (-((c - h) * u)) =
                  ZMod.stdAddChar (-(c * u)) *
                    ZMod.stdAddChar (-(h * (s - u))) := by
              rw [← map_add_eq_mul, ← map_add_eq_mul]
              congr 1
              ring
            rw [hchar]
            ring
    _ = ZMod.stdAddChar (-(c * u)) *
        ∑ h : ZMod Q,
          ZMod.stdAddChar (-(h * (s - u))) * E (c - h) h := by
            rw [Finset.mul_sum]
    _ = ZMod.stdAddChar (-(c * u)) *
        ZMod.dft (fun h => E (c - h) h) (s - u) := by
          rw [ZMod.dft_apply]
          simp only [smul_eq_mul]

/-- DFT of the explicit interior reciprocal-drop numerator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseNumeratorFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseNumeratorFourier.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a0be56254bbb841aca8356f07b6acb60f88b3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

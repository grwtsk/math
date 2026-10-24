# finiteZModKernelDFT2_forwardDifference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50c7cebc-5412-3cbc-5458-3d6841d23836",
  "kind": "theorem",
  "lexical_name": "finiteZModKernelDFT2_forwardDifference",
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
  "slug": "finitezmodkerneldft2-forwarddifference--832576db8108c8ad052b1f20",
  "source": {
    "blob": "d40696d8b6117656219d0dc4812e2efe42c1a57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 422,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:832576db8108c8ad052b1f20c04f6377050596c40dd2b2aebe2c508eae7dd31d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50c7cebc-5412-3cbc-5458-3d6841d23836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteZModKernelDFT2_forwardDifference
    {Q : ℕ} [NeZero Q]
    (C : ZMod Q → ZMod Q → ℂ)
    (u s : ZMod Q) :
    finiteZModKernelDFT2 (finiteZModKernelForwardDifference C) u s =
      (ZMod.stdAddChar u - 1) * finiteZModKernelDFT2 C u s := by
  classical
  let G : ZMod Q → ℂ := fun x => ZMod.dft (C x) s
  have hinner (x : ZMod Q) :
      ZMod.dft (fun h => C (x + 1) h - C x h) s =
        G (x + 1) - G x := by
    unfold G
    simpa using congrFun
      (map_sub (ZMod.dft (N := Q) (E := ℂ)) (C (x + 1)) (C x)) s
  have hshift :
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) * G (x + 1)) =
        ZMod.stdAddChar u *
          ∑ x : ZMod Q,
            ZMod.stdAddChar (-(x * u)) * G x := by
    calc
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) * G (x + 1)) =
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-((z - 1) * u)) * G z := by
              refine Fintype.sum_equiv (Equiv.addRight (1 : ZMod Q)) _ _ ?_
              intro x
              simp
      _ = ∑ z : ZMod Q,
          (ZMod.stdAddChar u *
            ZMod.stdAddChar (-(z * u))) * G z := by
            apply Finset.sum_congr rfl
            intro z _hz
            have harg : -((z - 1) * u) = u + -(z * u) := by ring
            rw [harg, map_add_eq_mul]
      _ = ZMod.stdAddChar u *
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-(z * u)) * G z := by
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro z _hz
              ring
  unfold finiteZModKernelDFT2 finiteZModKernelForwardDifference
  simp only [ZMod.dft_apply, smul_eq_mul]
  simp_rw [hinner]
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  rw [hshift]
  ring

/-- DFT of the cyclic forward difference of the sheared clipping kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40696d8b6117656219d0dc4812e2efe42c1a57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

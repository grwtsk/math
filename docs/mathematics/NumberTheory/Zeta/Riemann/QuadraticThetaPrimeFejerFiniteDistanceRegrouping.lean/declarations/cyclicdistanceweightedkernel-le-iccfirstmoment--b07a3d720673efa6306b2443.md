# cyclicDistanceWeightedKernel_le_IccFirstMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f58a5b51-f21e-6a8c-fbc6-ea175cfc32aa",
  "kind": "theorem",
  "lexical_name": "cyclicDistanceWeightedKernel_le_IccFirstMoment",
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
  "slug": "cyclicdistanceweightedkernel-le-iccfirstmoment--b07a3d720673efa6306b2443",
  "source": {
    "blob": "ffc561b844afbe7d9a09a18930ed1c0d5220e077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b07a3d720673efa6306b2443387ac6bb2d8f71e61e26310409b5b8da5fd382c8",
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

Occurrence: `result:f58a5b51-f21e-6a8c-fbc6-ea175cfc32aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicDistanceWeightedKernel_le_IccFirstMoment
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N r *
        (2 * cyclicFejerDistance X r : ℕ))
      ≤
    ∑ d ∈ Finset.Icc 0 (2 * X),
      4 * ((d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d) := by
  rcases hreg with ⟨hX, hN, hNL⟩
  have hmaps :=
    cyclicFejerDistance_mapsTo_Icc hX
  rw [← Finset.sum_fiberwise_of_maps_to hmaps]
  apply Finset.sum_le_sum
  intro d hd
  exact cyclicFejerDistanceFiber_weighted_le
    ⟨hX, hN, hNL⟩ (Finset.mem_Icc.mp hd).2

/-- The d=0 summand vanishes, so the [0,2X] grouped sum is exactly four times
the positive-distance first moment on [1,2X]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc561b844afbe7d9a09a18930ed1c0d5220e077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

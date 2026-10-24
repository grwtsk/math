# measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95f86ed0-37c2-a847-9cab-5e0f1ece9e13",
  "kind": "theorem",
  "lexical_name": "measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge'",
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
  "slug": "measure-integral-sub-linear-islittleo-of-tendsto-ae-of-ge--080a4bb72ffa22d46e560f4d",
  "source": {
    "blob": "a6c8ef977d4b27989ba7a5ac72ca3b0cb96f00bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 329,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:080a4bb72ffa22d46e560f4dca68804364831dc68a47361bb2d227737a346026",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f86ed0-37c2-a847-9cab-5e0f1ece9e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge' [IsMeasurablyGenerated l']
    [TendstoIxxClass Ioc l l'] (hfm : StronglyMeasurableAtFilter f l' μ)
    (hf : Tendsto f (l' ⊓ μ.ae) (𝓝 c)) (hl : μ.FiniteAtFilter l') (hu : Tendsto u lt l)
    (hv : Tendsto v lt l) (huv : v ≤ᶠ[lt] u) :
    (fun t => (∫ x in u t..v t, f x ∂μ) + (μ (Ioc (v t) (u t))).toReal • c) =o[lt] fun t =>
      (μ <| Ioc (v t) (u t)).toReal :=
  (measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_le' hfm hf hl hv hu
          huv).neg_left.congr_left
    fun t => by simp [integral_symm (u t), add_comm]
#align interval_integral.measure_integral_sub_linear_is_o_of_tendsto_ae_of_ge' intervalIntegral.measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge'

section

variable [IsLocallyFiniteMeasure μ] [FTCFilter a l l']

/-- **Fundamental theorem of calculus-1**, local version for any measure.

Let filters `l` and `l'` be related by `[intervalIntegral.FTCFilter a l l']`; let `μ` be a locally
finite measure.  If `f` has a finite limit `c` at `l' ⊓ μ.ae`, then
`∫ x in u..v, f x ∂μ = ∫ x in u..v, c ∂μ + o(∫ x in u..v, 1 ∂μ)` as both `u` and `v` tend to `l`.

See also `measure_integral_sub_linear_is_o_of_tendsto_ae'` for a version that also works, e.g., for
`l = l' = Filter.atTop`.

We use integrals of constants instead of measures because this way it is easier to formulate
a statement that works in both cases `u ≤ v` and `v ≤ u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c8ef977d4b27989ba7a5ac72ca3b0cb96f00bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

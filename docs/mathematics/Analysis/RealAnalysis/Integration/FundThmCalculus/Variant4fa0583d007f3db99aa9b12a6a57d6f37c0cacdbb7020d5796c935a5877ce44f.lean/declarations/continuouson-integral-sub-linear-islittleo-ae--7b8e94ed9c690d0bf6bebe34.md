# ContinuousOn.integral_sub_linear_isLittleO_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d82d8ec1-bec2-1c6e-0bf1-dc2a98a93abc",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.integral_sub_linear_isLittleO_ae",
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
  "slug": "continuouson-integral-sub-linear-islittleo-ae--7b8e94ed9c690d0bf6bebe34",
  "source": {
    "blob": "0c120324c15ae8fe991526ed323c5d9487eb3437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant4fa0583d007f3db99aa9b12a6a57d6f37c0cacdbb7020d5796c935a5877ce44f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b8e94ed9c690d0bf6bebe34129d299507ed118cdb0b82af024a1dbb5efccfb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant4fa0583d007f3db99aa9b12a6a57d6f37c0cacdbb7020d5796c935a5877ce44f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d82d8ec1-bec2-1c6e-0bf1-dc2a98a93abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.integral_sub_linear_isLittleO_ae [TopologicalSpace X] [OpensMeasurableSpace X]
    [SecondCountableTopologyEither X E] {μ : Measure X}
    [IsLocallyFiniteMeasure μ] {x : X} {t : Set X} {f : X → E} (hft : ContinuousOn f t) (hx : x ∈ t)
    (ht : MeasurableSet t) {s : ι → Set X} {li : Filter ι} (hs : Tendsto s li (𝓝[t] x).smallSets)
    (m : ι → ℝ := fun i => μ.real (s i))
    (hsμ : (fun i => μ.real (s i)) =ᶠ[li] m := by rfl) :
    (fun i => (∫ x in s i, f x ∂μ) - m i • f x) =o[li] m :=
  (hft x hx).integral_sub_linear_isLittleO_ae ht
    ⟨t, self_mem_nhdsWithin, hft.aestronglyMeasurable ht⟩ hs m hsμ
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant4fa0583d007f3db99aa9b12a6a57d6f37c0cacdbb7020d5796c935a5877ce44f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant4fa0583d007f3db99aa9b12a6a57d6f37c0cacdbb7020d5796c935a5877ce44f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c120324c15ae8fe991526ed323c5d9487eb3437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

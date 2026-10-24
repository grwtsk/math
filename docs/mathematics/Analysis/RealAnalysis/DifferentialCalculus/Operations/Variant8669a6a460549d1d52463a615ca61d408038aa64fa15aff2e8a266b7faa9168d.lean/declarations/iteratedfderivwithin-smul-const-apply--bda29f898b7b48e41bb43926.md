# iteratedFDerivWithin_smul_const_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:363785b9-d30a-5858-983b-ab97ca378f35",
  "kind": "theorem",
  "lexical_name": "iteratedFDerivWithin_smul_const_apply",
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
  "slug": "iteratedfderivwithin-smul-const-apply--bda29f898b7b48e41bb43926",
  "source": {
    "blob": "ec6668d33d7a8f386a0414da243e3ff3c5e4dd80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 665,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bda29f898b7b48e41bb439269cdae877962d4c336d4779a491b791dba9b8e0c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:363785b9-d30a-5858-983b-ab97ca378f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDerivWithin_smul_const_apply {f : E → A} (hf : ContDiffWithinAt 𝕜 i f s x)
    (hu : UniqueDiffOn 𝕜 s) (hx : x ∈ s) :
    iteratedFDerivWithin 𝕜 i (fun y ↦ f y • v) s x =
      ((ContinuousLinearMap.id 𝕜 A).smulRight v).compContinuousMultilinearMap
        (iteratedFDerivWithin 𝕜 i f s x) :=
  (ContinuousLinearMap.id 𝕜 A).smulRight v |>.iteratedFDerivWithin_comp_left hf hu hx le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant8669a6a460549d1d52463a615ca61d408038aa64fa15aff2e8a266b7faa9168d.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec6668d33d7a8f386a0414da243e3ff3c5e4dd80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

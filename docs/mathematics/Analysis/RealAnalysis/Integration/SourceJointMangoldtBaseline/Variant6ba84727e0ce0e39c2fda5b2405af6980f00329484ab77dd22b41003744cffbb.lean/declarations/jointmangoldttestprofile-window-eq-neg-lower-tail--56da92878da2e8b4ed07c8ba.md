# jointMangoldtTestProfile_window_eq_neg_lower_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8496871c4d5be9278745ef2a298e20642bd24d15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8366685c-50d4-1155-0e5c-c4034e07138e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54a42c72-5a4d-f2fa-6976-2dc4f4506f88",
  "kind": "theorem",
  "lexical_name": "jointMangoldtTestProfile_window_eq_neg_lower_tail",
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
  "slug": "jointmangoldttestprofile-window-eq-neg-lower-tail--56da92878da2e8b4ed07c8ba",
  "source": {
    "blob": "8496871c4d5be9278745ef2a298e20642bd24d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56da92878da2e8b4ed07c8ba4587f2680a3f1122c328278b00a5ed9aaec38a82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54a42c72-5a4d-f2fa-6976-2dc4f4506f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtTestProfile_window_eq_neg_lower_tail (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
      jointMangoldtTestProfile A t) =
        -(∫ t in Iic (Real.log (vaughanCutoff A : ℝ)), jointMangoldtTestProfile A t) := by
  have h := jointMangoldtTestProfile_integrable_and_integral_zero A hA
  have hu : (∫ t in Ioi (Real.log (sourceKernelCutoff A : ℝ)),
      jointMangoldtTestProfile A t) = 0 := by
    apply setIntegral_eq_zero_of_forall_eq_zero
    intro t ht
    exact jointMangoldtTestProfile_zero_of_log_cutoff_le A hA ht.le
  have hs := intervalIntegral.integral_Iic_add_Ioi
    (b := Real.log (sourceKernelCutoff A : ℝ)) h.1.integrableOn h.1.integrableOn
  rw [hu, h.2, add_zero] at hs
  have hw := intervalIntegral.integral_Iic_sub_Iic
    (a := Real.log (vaughanCutoff A : ℝ))
    (b := Real.log (sourceKernelCutoff A : ℝ)) h.1.integrableOn h.1.integrableOn
  rw [hs, zero_sub] at hw
  exact hw.symm

/-- Exact strict interior: the lower tail and lower error boundary both survive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8496871c4d5be9278745ef2a298e20642bd24d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

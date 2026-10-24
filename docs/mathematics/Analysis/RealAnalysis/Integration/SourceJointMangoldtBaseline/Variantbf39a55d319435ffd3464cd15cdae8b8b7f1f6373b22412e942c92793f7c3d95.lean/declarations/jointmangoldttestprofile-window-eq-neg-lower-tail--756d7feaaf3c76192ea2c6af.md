# jointMangoldtTestProfile_window_eq_neg_lower_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16801a50ce57f05b75cf9953ce70d9decddd2ca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0a212bd-c272-7227-1e00-44ce0c146061",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7b0e4f3-0570-fb07-2d31-38585a838222",
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
  "slug": "jointmangoldttestprofile-window-eq-neg-lower-tail--756d7feaaf3c76192ea2c6af",
  "source": {
    "blob": "16801a50ce57f05b75cf9953ce70d9decddd2ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756d7feaaf3c76192ea2c6afd874acf72725fdab93b7b6f9d2eb149e9cdb6e3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b0e4f3-0570-fb07-2d31-38585a838222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–158.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16801a50ce57f05b75cf9953ce70d9decddd2ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

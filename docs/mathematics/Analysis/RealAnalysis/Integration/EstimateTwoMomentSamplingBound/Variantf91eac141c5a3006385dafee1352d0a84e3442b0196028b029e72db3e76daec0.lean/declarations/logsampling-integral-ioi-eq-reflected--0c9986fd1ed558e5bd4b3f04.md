# logSampling_integral_Ioi_eq_reflected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7175ac6d367bdf6229571e787dd1ced570c40652",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c9dac92-cd93-b07e-88d2-b9436c665e2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48387ae5-823e-4343-1b48-6be40972204e",
  "kind": "theorem",
  "lexical_name": "logSampling_integral_Ioi_eq_reflected",
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
  "slug": "logsampling-integral-ioi-eq-reflected--0c9986fd1ed558e5bd4b3f04",
  "source": {
    "blob": "7175ac6d367bdf6229571e787dd1ced570c40652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 362,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c9986fd1ed558e5bd4b3f040d67a17f284f8cfbe673e7e4c1a481a66bcaa418",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48387ae5-823e-4343-1b48-6be40972204e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSampling_integral_Ioi_eq_reflected
    {F : ℝ → ℝ} (hMom : TwoMomentProfile F)
    {x : ℝ} (hx : 0 < x) :
    (∫ u in Ioi (1 : ℝ),
      logSamplingTerm F x u) =
      Real.exp (-Real.log x / 2) *
        ∫ r in Ioi (0 : ℝ),
          reflectedMomentIntegrand F
            (Real.log x) r := by
  rw [logSampling_integral_Ioi_eq_shifted hx]
  rw [two_moment_reflection hMom (Real.log x)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantf91eac141c5a3006385dafee1352d0a84e3442b0196028b029e72db3e76daec0.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7175ac6d367bdf6229571e787dd1ced570c40652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

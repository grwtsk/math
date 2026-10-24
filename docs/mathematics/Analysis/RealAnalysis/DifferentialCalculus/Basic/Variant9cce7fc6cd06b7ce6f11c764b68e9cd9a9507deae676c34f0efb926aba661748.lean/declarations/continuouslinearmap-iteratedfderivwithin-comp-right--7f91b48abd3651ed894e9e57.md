# ContinuousLinearMap.iteratedFDerivWithin_comp_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbed95fb0f6362777de54bccea7a4854f2292029",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cce7fc6cd06b7ce6f11c764b68e9cd9a9507deae676c34f0efb926aba661748.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54524606-fe81-69fd-e3c7-5ab297eaeae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c17a35e4-702c-3505-8905-dd0a33b1488d",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.iteratedFDerivWithin_comp_right",
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
  "slug": "continuouslinearmap-iteratedfderivwithin-comp-right--7f91b48abd3651ed894e9e57",
  "source": {
    "blob": "cbed95fb0f6362777de54bccea7a4854f2292029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 426,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant9cce7fc6cd06b7ce6f11c764b68e9cd9a9507deae676c34f0efb926aba661748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f91b48abd3651ed894e9e57c358ba9b015044e5df9fc34344257688a505d7bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant9cce7fc6cd06b7ce6f11c764b68e9cd9a9507deae676c34f0efb926aba661748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c17a35e4-702c-3505-8905-dd0a33b1488d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.iteratedFDerivWithin_comp_right {f : E → F} (g : G →L[𝕜] E)
    (hf : ContDiffOn 𝕜 n f s) (hs : UniqueDiffOn 𝕜 s) (h's : UniqueDiffOn 𝕜 (g ⁻¹' s)) {x : G}
    (hx : g x ∈ s) {i : ℕ} (hi : i ≤ n) :
    iteratedFDerivWithin 𝕜 i (f ∘ g) (g ⁻¹' s) x =
      (iteratedFDerivWithin 𝕜 i f s (g x)).compContinuousLinearMap fun _ => g :=
  ((((hf.of_le hi).ftaylorSeriesWithin hs).compContinuousLinearMap
    g).eq_iteratedFDerivWithin_of_uniqueDiffOn le_rfl h's hx).symm

/-- The iterated derivative within a set of the composition with a linear equiv on the right is
obtained by composing the iterated derivative with the linear equiv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant9cce7fc6cd06b7ce6f11c764b68e9cd9a9507deae676c34f0efb926aba661748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant9cce7fc6cd06b7ce6f11c764b68e9cd9a9507deae676c34f0efb926aba661748.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbed95fb0f6362777de54bccea7a4854f2292029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

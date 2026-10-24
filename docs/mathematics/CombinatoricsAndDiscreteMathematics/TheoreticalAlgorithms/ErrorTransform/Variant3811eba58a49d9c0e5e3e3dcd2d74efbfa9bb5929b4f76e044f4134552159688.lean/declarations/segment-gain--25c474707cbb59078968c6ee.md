# segment_gain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9929c1d75e2405e2d37e6283202913d3b78d7a1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1860ec34-aef4-72ac-967c-de0832bb4fe7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08800419-1ca8-0633-4f9c-aa536520c9ea",
  "kind": "theorem",
  "lexical_name": "segment_gain",
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
  "slug": "segment-gain--25c474707cbb59078968c6ee",
  "source": {
    "blob": "9929c1d75e2405e2d37e6283202913d3b78d7a1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c474707cbb59078968c6ee60758cbbdfccd99381b136b1a6976f77ca496c0b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08800419-1ca8-0633-4f9c-aa536520c9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem segment_gain (profile : List ErrorFactor) :
    (segment profile).gain =
      ErrorFactor.downstreamGain profile := by
  induction profile with
  | nil =>
      simp [segment, id, ErrorFactor.downstreamGain,
        Residual.downstreamGain]
  | cons factor rest inductionHypothesis =>
      simp only [segment, comp, ErrorFactor.downstreamGain,
        List.map_cons, Residual.downstreamGain, List.map_map,
        List.prod_cons]
      change
        (segment rest).gain * factor.gain =
          factor.gain *
            (List.map
              (fun entry => entry.gain)
              rest).prod
      rw [inductionHypothesis]
      simp [ErrorFactor.downstreamGain, Residual.downstreamGain]
      ac_rfl

/-- The segment offset is the weighted sum of local residuals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9929c1d75e2405e2d37e6283202913d3b78d7a1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# log_one_plus_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba3516be-2ed2-4ac1-e03d-80301b738694",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0449d442-e58d-5d5f-7bb5-a748eafc580d",
  "kind": "theorem",
  "lexical_name": "log_one_plus_upper",
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
  "slug": "log-one-plus-upper--9ca1fdb56afa024cbb4a3051",
  "source": {
    "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca1fdb56afa024cbb4a30514566598ec58dcbaed4514eb8b288895916549857",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0449d442-e58d-5d5f-7bb5-a748eafc580d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_one_plus_upper :
    ∀ t ∈ Set.Icc (0:ℝ) 1, Real.log (1 + t) ≤ t := by
  intro t ⟨ht_nonneg, _⟩
  have h1pt_pos : 0 < 1 + t := by linarith
  have h := Real.log_le_sub_one_of_pos h1pt_pos
  linarith

-- log(1+t) ≥ t - t²/2 for t ∈ [0, 1]
-- This follows from Real.one_sub_inv_le_log_of_pos: 1 - 1/x ≤ log(x)
-- For x = 1+t: 1 - 1/(1+t) = t/(1+t) ≤ log(1+t)
-- This is weaker than t - t²/2, but suffices for our purposes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb8c95ef280735297ffb052a2684ad47c8c958e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

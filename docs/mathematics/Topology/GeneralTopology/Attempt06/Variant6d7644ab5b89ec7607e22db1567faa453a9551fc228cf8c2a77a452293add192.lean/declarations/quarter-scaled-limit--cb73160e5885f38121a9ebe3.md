# quarter_scaled_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4aab84c-16fa-67d0-364e-d77317553c36",
  "kind": "theorem",
  "lexical_name": "quarter_scaled_limit",
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
  "slug": "quarter-scaled-limit--cb73160e5885f38121a9ebe3",
  "source": {
    "blob": "e2bd980f3bb785e525ca6d82ceef96253bccd9ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb73160e5885f38121a9ebe3477d6fa2b1cb7747ed08542e9b51f00a14356ee4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4aab84c-16fa-67d0-364e-d77317553c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarter_scaled_limit :
    Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)*normalizedSquare A (1/4)) atTop
      (𝓝 (145178542080 : ℝ)) := by
  have h := scaled_square_tendsto (1/4) (by norm_num)
  norm_num at h
  convert h using 1
  ext A; congr 2; ring

#check actual_scaled_square_real
#print axioms actual_scaled_square_real
#check p_ratio_tendsto
#print axioms p_ratio_tendsto
#check normalization_tendsto
#print axioms normalization_tendsto
#check exp_scaled_neg_tendsto
#print axioms exp_scaled_neg_tendsto
#check scaled_square_exact
#print axioms scaled_square_exact
#check scaled_square_tendsto
#print axioms scaled_square_tendsto
#check quarter_scaled_limit
#print axioms quarter_scaled_limit
end
end ContinuousResearch.ActualRealMode
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bd980f3bb785e525ca6d82ceef96253bccd9ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

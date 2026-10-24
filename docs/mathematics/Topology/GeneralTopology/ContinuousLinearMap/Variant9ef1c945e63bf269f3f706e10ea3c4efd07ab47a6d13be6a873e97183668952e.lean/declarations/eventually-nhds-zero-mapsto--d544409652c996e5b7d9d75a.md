# eventually_nhds_zero_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "105cf6b50e641ed8e6379cc3d9cc9459694813c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2ef89a4-b963-a519-ad3e-2a53859f65fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69724a50-e913-04b8-0956-c29cd422e2df",
  "kind": "theorem",
  "lexical_name": "eventually_nhds_zero_mapsTo",
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
  "slug": "eventually-nhds-zero-mapsto--d544409652c996e5b7d9d75a",
  "source": {
    "blob": "105cf6b50e641ed8e6379cc3d9cc9459694813c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d544409652c996e5b7d9d75a61bd5bdc63c84110eae2832bec209d6f3d22089e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69724a50-e913-04b8-0956-c29cd422e2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nhds_zero_mapsTo [TopologicalSpace F] [IsTopologicalAddGroup F]
    {s : Set E} (hs : IsVonNBounded 𝕜₁ s) {U : Set F} (hu : U ∈ 𝓝 0) :
    ∀ᶠ f : E →SL[σ] F in 𝓝 0, MapsTo f s U :=
  UniformConvergenceCLM.eventually_nhds_zero_mapsTo _ hs hu

/-- If `S` is a von Neumann bounded set of continuous linear maps `f : E →SL[σ] F`
and `s` is a von Neumann bounded set in the domain,
then the set `{f x | (f ∈ S) (x ∈ s)}` is von Neumann bounded.

See also `isVonNBounded_iff` for an `Iff` version with stronger typeclass assumptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `105cf6b50e641ed8e6379cc3d9cc9459694813c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

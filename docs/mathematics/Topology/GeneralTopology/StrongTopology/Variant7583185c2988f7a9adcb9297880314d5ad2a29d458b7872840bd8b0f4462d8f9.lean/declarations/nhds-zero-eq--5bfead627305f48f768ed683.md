# nhds_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6c07d5b7c25520a8e1d73f1818fd6138d3bf304",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23acc126-288f-2758-0991-49c8b7f6b165",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8369949-6266-1f62-d011-eb74d1198acb",
  "kind": "theorem",
  "lexical_name": "nhds_zero_eq",
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
  "slug": "nhds-zero-eq--5bfead627305f48f768ed683",
  "source": {
    "blob": "b6c07d5b7c25520a8e1d73f1818fd6138d3bf304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bfead627305f48f768ed6833d26f1d8b010e2271f331c098a834a439e8f5171",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8369949-6266-1f62-d011-eb74d1198acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_zero_eq [TopologicalSpace F] [IsTopologicalAddGroup F] (𝔖 : Set (Set E)) :
    𝓝 (0 : UniformConvergenceCLM σ F 𝔖) =
      ⨅ s ∈ 𝔖, ⨅ t ∈ 𝓝 (0 : F),
        𝓟 {f : UniformConvergenceCLM σ F 𝔖 | MapsTo f s t} :=
  nhds_zero_eq_of_basis _ _ _ (𝓝 0).basis_sets

variable {F} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c07d5b7c25520a8e1d73f1818fd6138d3bf304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

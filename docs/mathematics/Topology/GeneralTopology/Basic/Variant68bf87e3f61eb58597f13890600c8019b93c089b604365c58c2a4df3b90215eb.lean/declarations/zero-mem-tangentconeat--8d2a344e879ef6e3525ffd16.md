# zero_mem_tangentConeAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86f0668614bf3998e11acabc4076a804bac26223",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab8cdf19-a01a-478c-a15a-0214eb913c6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22dcdea1-2074-acc4-5b1e-6516c7ececcc",
  "kind": "theorem",
  "lexical_name": "zero_mem_tangentConeAt",
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
  "slug": "zero-mem-tangentconeat--8d2a344e879ef6e3525ffd16",
  "source": {
    "blob": "86f0668614bf3998e11acabc4076a804bac26223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2a344e879ef6e3525ffd16a2b79b0b4cd5cb6a5b13b892d5bd95de9662aa63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22dcdea1-2074-acc4-5b1e-6516c7ececcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_mem_tangentConeAt (hx : x ∈ closure s) :
    0 ∈ tangentConeAt 𝕜 s x := by
  rw [mem_closure_iff_frequently] at hx
  apply mem_tangentConeAt_of_frequently (𝓝 x) 1 (· + (-x))
  · exact Continuous.tendsto' (by fun_prop) _ _ (by simp)
  · simpa
  · simp only [Pi.one_apply, one_smul]
    exact Continuous.tendsto' (by fun_prop) _ _ (by simp)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f0668614bf3998e11acabc4076a804bac26223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# tendsto_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7924ecda19d13ed569b6afb5547fa1ba20f0c310",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ea7de12-8500-07b1-5981-b8e120c081a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a94faf3e-0994-01cb-f3b6-cffa3ece745c",
  "kind": "theorem",
  "lexical_name": "tendsto_pi",
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
  "slug": "tendsto-pi--3ac9b035bea15690a829676b",
  "source": {
    "blob": "7924ecda19d13ed569b6afb5547fa1ba20f0c310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac9b035bea15690a829676b6efa66e42aa7990c90e8fd1399515f7335cbfc7d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a94faf3e-0994-01cb-f3b6-cffa3ece745c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_pi {β : Type*} {m : β → ∀ i, α i} {l : Filter β} :
    Tendsto m l (pi f) ↔ ∀ i, Tendsto (fun x => m x i) l (f i) := by
  simp only [pi, tendsto_iInf, tendsto_comap_iff]; rfl

/-- If a function tends to a product `Filter.pi f` of filters, then its `i`-th component tends to
`f i`. See also `Filter.Tendsto.apply_nhds` for the special case of converging to a point in a
product of topological spaces. -/
alias ⟨Tendsto.apply, _⟩ := tendsto_pi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variantffd4a0f4b84b5ac6e38f0a7c8d58d09dadec0d3d582b9ba66fe52cd6c23e5ab2.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7924ecda19d13ed569b6afb5547fa1ba20f0c310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

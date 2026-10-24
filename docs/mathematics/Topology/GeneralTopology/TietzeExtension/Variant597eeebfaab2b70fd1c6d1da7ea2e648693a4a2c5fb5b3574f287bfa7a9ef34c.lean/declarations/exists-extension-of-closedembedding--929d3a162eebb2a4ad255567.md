# exists_extension_of_closedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:246008c3-4394-3966-2be5-2891c986521a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c13a8db6-582a-b1a4-25e1-855ae7282437",
  "kind": "theorem",
  "lexical_name": "exists_extension_of_closedEmbedding",
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
  "slug": "exists-extension-of-closedembedding--929d3a162eebb2a4ad255567",
  "source": {
    "blob": "0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929d3a162eebb2a4ad255567e695047d9fc6003e2a700e3c54d21209ef6b87d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c13a8db6-582a-b1a4-25e1-855ae7282437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_of_closedEmbedding (f : C(X, ℝ)) (e : X → Y) (he : ClosedEmbedding e) :
    ∃ g : C(Y, ℝ), g ∘ e = f :=
  (exists_extension_forall_mem_of_closedEmbedding f (fun _ => mem_univ _) univ_nonempty he).imp
    fun _ => And.right
#align continuous_map.exists_extension_of_closed_embedding ContinuousMap.exists_extension_of_closedEmbedding

/-- **Tietze extension theorem** for real-valued continuous maps, a version for a closed set. Let
`s` be a closed set in a normal topological space `Y`. Let `f` be a continuous real-valued function
on `s`. Let `t` be a nonempty convex set of real numbers (we use `ord_connected` instead of `convex`
to automatically deduce this argument by typeclass search) such that `f x ∈ t` for all `x : s`. Then
there exists a continuous real-valued function `g : C(Y, ℝ)` such that `g y ∈ t` for all `y` and
`g.restrict s = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant597eeebfaab2b70fd1c6d1da7ea2e648693a4a2c5fb5b3574f287bfa7a9ef34c.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e499fdf1fdd4ee26446dd6b00c1ad75dbb85722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

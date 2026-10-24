# HasCompactMulSupport.uniformContinuous_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52d90e44852c4b95b9d0f36b17ea523013cf2768",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63fda2e9-dcb1-94e2-82f0-bad7be7649e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0f42695-850b-34f6-2236-ea2bbad9e20b",
  "kind": "theorem",
  "lexical_name": "HasCompactMulSupport.uniformContinuous_of_continuous",
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
  "slug": "hascompactmulsupport-uniformcontinuous-of-continuous--15857965cc8f14eec201f636",
  "source": {
    "blob": "52d90e44852c4b95b9d0f36b17ea523013cf2768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15857965cc8f14eec201f636640ea092787bd65858381ac63dbeeeec927976db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0f42695-850b-34f6-2236-ea2bbad9e20b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactMulSupport.uniformContinuous_of_continuous {f : α → β} [One β]
    (h1 : HasCompactMulSupport f) (h2 : Continuous f) : UniformContinuous f :=
  h2.uniformContinuous_of_tendsto_cocompact h1.is_one_at_infty

/-- A family of functions `α → β → γ` tends uniformly to its value at `x` if `α` is locally compact,
`β` is compact and `f` is continuous on `U × (univ : Set β)` for some neighborhood `U` of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d90e44852c4b95b9d0f36b17ea523013cf2768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

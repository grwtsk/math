# uniformContinuous_toFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd1923fcd28e9f0b14d14f945e9eacf00dc850c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:716631e7-bdf4-534f-51ad-61b5d160ab0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cba22b9d-ed8e-662b-8b49-c55639d3d6b9",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_toFun",
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
  "slug": "uniformcontinuous-tofun--4c164d1d426a767c448d4b70",
  "source": {
    "blob": "fd1923fcd28e9f0b14d14f945e9eacf00dc850c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 485,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c164d1d426a767c448d4b70fd390245c5850f3f580827771419c7c06dacce02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cba22b9d-ed8e-662b-8b49-c55639d3d6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem uniformContinuous_toFun : UniformContinuous (toFun : (α →ᵤ β) → α → β) := by
  -- By definition of the product uniform structure, this is just `uniform_continuous_eval`.
  rw [uniformContinuous_pi]
  intro x
  exact uniformContinuous_eval β x
#align uniform_fun.uniform_continuous_to_fun UniformFun.uniformContinuous_toFun

/-- The topology of uniform convergence indeed gives the same notion of convergence as
`TendstoUniformly`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1923fcd28e9f0b14d14f945e9eacf00dc850c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# stable_inverse_has_lipschitz_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a18e497d7bc4e34599e5ab688accb2b3b409794",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39a63bfc-feb8-e42e-9603-88a262e0228b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fafb7aeb-c05a-d431-f5bc-b5a11ecdc089",
  "kind": "theorem",
  "lexical_name": "stable_inverse_has_lipschitz_bound",
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
  "slug": "stable-inverse-has-lipschitz-bound--0e5e10f156e94abab709cc58",
  "source": {
    "blob": "3a18e497d7bc4e34599e5ab688accb2b3b409794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e5e10f156e94abab709cc589a5f05349f225701ba0912042aa84e206c9acc53",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fafb7aeb-c05a-d431-f5bc-b5a11ecdc089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stable_inverse_has_lipschitz_bound
    {α : Type _}
    {dist : α → α → ℝ}
    {H : α → α}
    (S : StableInverse α dist H) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ x y, dist (S.inverse.inv x) (S.inverse.inv y) ≤ C * dist x y :=
  S.lipschitz

end HeatInvertibility
end Research
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a18e497d7bc4e34599e5ab688accb2b3b409794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

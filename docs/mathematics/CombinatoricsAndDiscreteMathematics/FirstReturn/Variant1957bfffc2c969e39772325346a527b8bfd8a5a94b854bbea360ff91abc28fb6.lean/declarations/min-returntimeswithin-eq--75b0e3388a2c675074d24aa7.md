# min_returnTimesWithin_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04596ab1e4e02ca27b31942dc2e98f727e55e8af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:156cca5d-6891-eb1c-4beb-d3252ff5594f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfe7517a-ccc9-e470-58ad-39816156bf66",
  "kind": "theorem",
  "lexical_name": "min_returnTimesWithin_eq",
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
  "slug": "min-returntimeswithin-eq--75b0e3388a2c675074d24aa7",
  "source": {
    "blob": "04596ab1e4e02ca27b31942dc2e98f727e55e8af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 349,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75b0e3388a2c675074d24aa772776ac32d9dd386afb8494d6e714a3d448a8243",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfe7517a-ccc9-e470-58ad-39816156bf66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem min_returnTimesWithin_eq
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid)
    (h : (returnTimesWithin P Valid x).Nonempty) :
    (returnTimesWithin P Valid x).min' h = firstReturnTime P Valid x := by
  apply (Finset.min'_eq_iff _ _ _).2
  refine ⟨firstReturnTime_mem_returnTimesWithin P Valid x, ?_⟩
  intro t ht
  exact firstReturnTime_le_of_return P Valid x
    (Finset.mem_filter.1 ht).2

/-- The bounded search always succeeds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04596ab1e4e02ca27b31942dc2e98f727e55e8af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

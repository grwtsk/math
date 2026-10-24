# cardinalMk_eq_lift_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c54611f537cb91c16a5c7b285b940f39325f3968",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68e7ae78-70fa-ee0c-f7eb-1ffa4530c19a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53ef9b72-196c-cea3-150f-fe16f8385b05",
  "kind": "lemma",
  "lexical_name": "cardinalMk_eq_lift_of_fintype",
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
  "slug": "cardinalmk-eq-lift-of-fintype--b18887c4eb23f424bce91a6c",
  "source": {
    "blob": "c54611f537cb91c16a5c7b285b940f39325f3968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinal/Variante2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b18887c4eb23f424bce91a6ce6ebd6f7dbc25e82af599992b999b37e74c3dc41",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cardinal/Variante2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53ef9b72-196c-cea3-150f-fe16f8385b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cardinalMk_eq_lift_of_fintype [Fintype M'] : #R[M'] = lift.{v} #R ^ card M' := by
  simp [coeffEquiv.cardinal_eq]

@[deprecated (since := "2026-03-26")]
alias cardinalMk_lift_of_fintype := cardinalMk_eq_lift_of_fintype

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinal/Variante2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinal/Variante2f90b29c98faa55594170e5a2b986c312870c6abe79c25deaaa5167b5c2dd5d.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54611f537cb91c16a5c7b285b940f39325f3968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

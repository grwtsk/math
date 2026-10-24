# ofLE_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7e75a4555647a415020a6d4dd96ddcebd429269",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65654198-0b1b-2307-6ee4-f340e1348fa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e45efcd4-501f-0755-e58b-1e5a5da99a69",
  "kind": "theorem",
  "lexical_name": "ofLE_map",
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
  "slug": "ofle-map--6ffe9bbab82fb1dbd679522e",
  "source": {
    "blob": "f7e75a4555647a415020a6d4dd96ddcebd429269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffe9bbab82fb1dbd679522ea8aca343d2bf9dd8bfd1608200738c152e471b5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e45efcd4-501f-0755-e58b-1e5a5da99a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofLE_map (cond : LEComap f A B) (h : B ≤ B') (a : A) :
    ofLE h (map f cond a) = map f (cond.mono le_rfl h) a := by
  rcases a with ⟨⟩
  rfl
#align discrete_quotient.of_le_map DiscreteQuotient.ofLE_map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e75a4555647a415020a6d4dd96ddcebd429269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

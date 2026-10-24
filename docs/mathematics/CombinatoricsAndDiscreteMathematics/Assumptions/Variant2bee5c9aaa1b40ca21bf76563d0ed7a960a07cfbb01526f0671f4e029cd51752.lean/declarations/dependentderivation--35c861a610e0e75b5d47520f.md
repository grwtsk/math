# dependentDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96f43d34978f0cebe2d7f20d9ba2ac831564a84e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e30ac78-a73a-964d-cfdd-43709f7a049e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d83d9cf-a5b3-791a-9346-93f97ce7289d",
  "kind": "theorem",
  "lexical_name": "dependentDerivation",
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
  "slug": "dependentderivation--35c861a610e0e75b5d47520f",
  "source": {
    "blob": "96f43d34978f0cebe2d7f20d9ba2ac831564a84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 224,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35c861a610e0e75b5d47520f7a140f60fc07c18f7adfb0028c7e64006254a5c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d83d9cf-a5b3-791a-9346-93f97ce7289d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dependentDerivation : ConditionalDerivation proposal where
  derive := by
    intro premises
    have square := premises 0
    change (7 : ℕ) ^ 2 = 49 at square
    have positive := premises 1
    change 0 < (7 : ℕ) at positive
    exact ⟨square, pow_pos positive _⟩

/-- Proof events are distinct for both positions in the full inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2bee5c9aaa1b40ca21bf76563d0ed7a960a07cfbb01526f0671f4e029cd51752.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f43d34978f0cebe2d7f20d9ba2ac831564a84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

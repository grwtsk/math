# fix_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a3031f952f8052230d7a0bd0fa134c1429a3abb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45b16ca3-fd0e-3a20-0c53-9956519889eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80b18d65-62f4-f494-7b88-877f98a20113",
  "kind": "theorem",
  "lexical_name": "fix_eq",
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
  "slug": "fix-eq--bc6ed2c046180ce622dd2f46",
  "source": {
    "blob": "4a3031f952f8052230d7a0bd0fa134c1429a3abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc6ed2c046180ce622dd2f46ff3bc4b6836cad530abcea17cfc69ddcc5b8c991",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80b18d65-62f4-f494-7b88-877f98a20113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fix_eq {motive : α → Sort*} (ind : ∀ x : α, (∀ y : α, y < x → motive y) → motive x) :
    ∀ x, fix ind x = ind x fun y _ => fix ind y :=
  WellFounded.fix'_eq _ ind

-- TODO: rename to `WellFoundedRelation.ofWellFoundedLT`
/-- Derive a `WellFoundedRelation` instance from a `WellFoundedLT` instance. -/
@[to_dual (attr := instance_reducible)
  /-- Derive a `WellFoundedRelation` instance from a `WellFoundedGT` instance. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variantd5e4b50ee7b4eb22764c6d18f88262468663e97179df27cdbbe5d622b48fc6c0.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a3031f952f8052230d7a0bd0fa134c1429a3abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

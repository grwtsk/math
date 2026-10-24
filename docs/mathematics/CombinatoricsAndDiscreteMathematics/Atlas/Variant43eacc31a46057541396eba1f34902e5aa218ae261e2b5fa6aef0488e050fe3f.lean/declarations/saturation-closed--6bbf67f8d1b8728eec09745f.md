# saturation_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30c9df7f53c3b685bd0bacae1192948f807e6f38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fb54ed9-fefa-e60a-514e-23efb39b174e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c1d3f4e-dc82-81d4-2516-5dcfda2e8b16",
  "kind": "theorem",
  "lexical_name": "saturation_closed",
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
  "slug": "saturation-closed--6bbf67f8d1b8728eec09745f",
  "source": {
    "blob": "30c9df7f53c3b685bd0bacae1192948f807e6f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bbf67f8d1b8728eec09745fc3dc6a77219bca334194bb9d469c7a433473f3a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c1d3f4e-dc82-81d4-2516-5dcfda2e8b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem saturation_closed (rules : Finset (Rule α)) (seeds : Finset α) :
    RuleClosed rules (saturate rules seeds) := by
  intro rule hrule hpremises
  apply mem_saturate.mpr
  intro inventory hseed hclosed
  apply hclosed rule hrule
  intro x hx
  exact mem_saturate.mp (hpremises hx) inventory hseed hclosed

/-- The computed inventory is the least rule-closed superset, not a partial search result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30c9df7f53c3b685bd0bacae1192948f807e6f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

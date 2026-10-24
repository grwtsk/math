# _root_.ContinuousWithinAt.clog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d5475ad3cd6c5c66bacb7f6840f303e4525ff30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f68f263-c9f3-0357-c545-9bcec94065e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4835f59f-f16a-160e-8bda-c8885727cc78",
  "kind": "theorem",
  "lexical_name": "_root_.ContinuousWithinAt.clog",
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
  "slug": "root-continuouswithinat-clog--afee2e0cc3d2855aa872695b",
  "source": {
    "blob": "6d5475ad3cd6c5c66bacb7f6840f303e4525ff30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afee2e0cc3d2855aa872695b81d06f63bd68f03ff40ebb81977bfc71bda44330",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4835f59f-f16a-160e-8bda-c8885727cc78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ContinuousWithinAt.clog {f : α → ℂ} {s : Set α} {x : α}
    (h₁ : ContinuousWithinAt f s x) (h₂ : 0 < (f x).re ∨ (f x).im ≠ 0) :
    ContinuousWithinAt (fun t => log (f t)) s x :=
  h₁.clog h₂
#align continuous_within_at.clog ContinuousWithinAt.clog

nonrec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5475ad3cd6c5c66bacb7f6840f303e4525ff30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

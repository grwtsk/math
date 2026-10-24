# residual_has_no_extra_initial_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f55f834dc7b14af0fcc527d01b0c625af7a7482b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9507ff9f-9b00-4ce2-531d-55be9aa5f48d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d06fee1f-027c-83c7-4566-71821cb60a10",
  "kind": "theorem",
  "lexical_name": "residual_has_no_extra_initial_two",
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
  "slug": "residual-has-no-extra-initial-two--73d385b9fbab66813154e776",
  "source": {
    "blob": "f55f834dc7b14af0fcc527d01b0c625af7a7482b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73d385b9fbab66813154e776b38b5fac61b573667469b19ba54f460c1c9edf74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d06fee1f-027c-83c7-4566-71821cb60a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_has_no_extra_initial_two {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A - criticalMangoldtWork A :=
  mertensResidual_eq_continuous_sub_Mangoldt_work A hA

/-- Even below the first atom the actual discrepancy is not identically zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55f834dc7b14af0fcc527d01b0c625af7a7482b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

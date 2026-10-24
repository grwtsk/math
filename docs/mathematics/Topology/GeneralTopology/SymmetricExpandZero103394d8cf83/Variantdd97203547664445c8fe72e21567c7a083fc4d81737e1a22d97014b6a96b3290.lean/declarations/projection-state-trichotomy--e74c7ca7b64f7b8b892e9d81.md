# projection_state_trichotomy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcb3feb5c13fccc1662ecf8dbd096986ef61c816",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8aff9bd-5da6-fe52-7562-4479d1b32a2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8430f10c-a721-29ac-a7d9-df73471a6e4c",
  "kind": "theorem",
  "lexical_name": "projection_state_trichotomy",
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
  "slug": "projection-state-trichotomy--e74c7ca7b64f7b8b892e9d81",
  "source": {
    "blob": "bcb3feb5c13fccc1662ecf8dbd096986ef61c816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e74c7ca7b64f7b8b892e9d81ce6eefff8f34d4faafb7355bcca2e7b9662d2b1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8430f10c-a721-29ac-a7d9-df73471a6e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projection_state_trichotomy (frame : ProjectionFrame) :
    WellFormedFrame frame -> exactly_one (Open frame) (Close frame) (Nulliant frame) := by
  intro h
  cases frame with
  | mk signedPositive explicitNullification allZero sites transitions =>
      cases signedPositive <;> cases explicitNullification <;> cases allZero <;>
        simp [WellFormedFrame, exactly_one, Open, Close, Nulliant] at h ⊢

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SymmetricExpandZero103394d8cf83/Variantdd97203547664445c8fe72e21567c7a083fc4d81737e1a22d97014b6a96b3290.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb3feb5c13fccc1662ecf8dbd096986ef61c816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

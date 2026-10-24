# blocked_proposal_has_no_full_discharge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aaf785ecdea6e3333f85aebc45eb75bc09ee7a53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fd1b704-0005-a430-5b96-83a6c5ca1fc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:389ed8fa-3ea7-d747-18c8-364c9674c38c",
  "kind": "theorem",
  "lexical_name": "blocked_proposal_has_no_full_discharge",
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
  "slug": "blocked-proposal-has-no-full-discharge--90492f6209f61d58e9c3933c",
  "source": {
    "blob": "aaf785ecdea6e3333f85aebc45eb75bc09ee7a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 313,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90492f6209f61d58e9c3933c98ab001470957ba1c6ef1db1fc573b680219afe2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:389ed8fa-3ea7-d747-18c8-364c9674c38c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blocked_proposal_has_no_full_discharge :
    ¬Nonempty (DischargeInventory blockedProposal Finset.univ) := by
  rintro ⟨complete⟩
  have impossible := (complete 1 (Finset.mem_univ 1)).proof
  change (7 : ℕ) < 0 at impossible
  omega

/-- In particular, the conditional derivation and partial replay do not prove the false target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant8033632943eb895178d366925d3d9f04c4f9f89d4d1e47e01ca8f902f89fd50b.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf785ecdea6e3333f85aebc45eb75bc09ee7a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

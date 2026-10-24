# IsCocircuit.delete_isCocircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eebb258ff1a858db4d643c0458a98390dc5dea6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:976b4e7f-c050-0d26-1d6e-c2b1e212246b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24c990e6-3c85-38c4-c917-c2a2ff490b59",
  "kind": "lemma",
  "lexical_name": "IsCocircuit.delete_isCocircuit",
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
  "slug": "iscocircuit-delete-iscocircuit--c8bd3467ce65adeb58267c80",
  "source": {
    "blob": "7eebb258ff1a858db4d643c0458a98390dc5dea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 517,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8bd3467ce65adeb58267c805a844864cc315a41f777e535cf658e4ea694af0f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c990e6-3c85-38c4-c917-c2a2ff490b59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCocircuit.delete_isCocircuit {D : Set α} (hK : M.IsCocircuit K) (hD : D ⊂ K) :
    (M ＼ D).IsCocircuit (K \ D) := by
  rw [isCocircuit_def, dual_delete]
  exact hK.isCircuit.contract_isCircuit hD

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebb258ff1a858db4d643c0458a98390dc5dea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

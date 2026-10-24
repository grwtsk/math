# card_boundaries_eq_succ_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569cab6e7c28dddff033f8155e85f71b712e2a62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 892,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e739893e-a9f3-bf6f-7d49-2e43df48a8e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89d2e41c-7bd4-7dcd-b898-54a86abb1a65",
  "kind": "theorem",
  "lexical_name": "card_boundaries_eq_succ_length",
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
  "slug": "card-boundaries-eq-succ-length--546777dff807b18e66fd6107",
  "source": {
    "blob": "569cab6e7c28dddff033f8155e85f71b712e2a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 895,
    "line": 892,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:546777dff807b18e66fd6107e760e984943240c422e941f7c9d0a47d91fbcdee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89d2e41c-7bd4-7dcd-b898-54a86abb1a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–895.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_boundaries_eq_succ_length : c.boundaries.card = c.length + 1 :=
  (tsub_eq_iff_eq_add_of_le (Nat.succ_le_of_lt c.card_boundaries_pos)).mp rfl
#align composition_as_set.card_boundaries_eq_succ_length CompositionAsSet.card_boundaries_eq_succ_length

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569cab6e7c28dddff033f8155e85f71b712e2a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

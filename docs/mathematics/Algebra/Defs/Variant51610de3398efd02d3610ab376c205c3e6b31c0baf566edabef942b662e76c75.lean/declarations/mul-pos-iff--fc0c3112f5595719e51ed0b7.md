# mul_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b6352bb3954ee7b2d3e9a95de1456db50e2b00a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1048,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e67a6e26-ea4c-394c-adc6-451b1a0deaaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ece1e8a2-ba96-f5e5-6912-16f5a349b2c9",
  "kind": "theorem",
  "lexical_name": "mul_pos_iff",
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
  "slug": "mul-pos-iff--fc0c3112f5595719e51ed0b7",
  "source": {
    "blob": "5b6352bb3954ee7b2d3e9a95de1456db50e2b00a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1052,
    "line": 1048,
    "path": "GRWTSK/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc0c3112f5595719e51ed0b7267bf397143629220aea1827d658728027fabe6a",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ece1e8a2-ba96-f5e5-6912-16f5a349b2c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1048–1052.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pos_iff : 0 < a * b ↔ 0 < a ∧ 0 < b ∨ a < 0 ∧ b < 0 :=
  ⟨pos_and_pos_or_neg_and_neg_of_mul_pos, fun h =>
    h.elim (and_imp.2 mul_pos) (and_imp.2 mul_pos_of_neg_of_neg)⟩
#align mul_pos_iff mul_pos_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean#L1048).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b6352bb3954ee7b2d3e9a95de1456db50e2b00a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

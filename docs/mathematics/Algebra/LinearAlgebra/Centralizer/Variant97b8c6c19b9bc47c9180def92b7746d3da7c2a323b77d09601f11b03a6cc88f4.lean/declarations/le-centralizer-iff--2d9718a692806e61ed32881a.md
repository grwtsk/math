# le_centralizer_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "122454d0ae1418f5f8bb9f6938a2ed867b07a712",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b382e3d-543b-ed12-7978-cf53a25c00be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19a66bf7-f211-d612-3521-2a0c8cb757ab",
  "kind": "lemma",
  "lexical_name": "le_centralizer_iff",
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
  "slug": "le-centralizer-iff--2d9718a692806e61ed32881a",
  "source": {
    "blob": "122454d0ae1418f5f8bb9f6938a2ed867b07a712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d9718a692806e61ed32881a2b7597775abd78e0dc90abf1a26987ee3e6dd9cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19a66bf7-f211-d612-3521-2a0c8cb757ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_centralizer_iff (S T : Subalgebra R A) : S ≤ centralizer R T ↔ T ≤ centralizer R S :=
  ⟨fun h t ht _ hs ↦ (h hs t ht).symm, fun h s hs _ ht ↦ (h ht s hs).symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant97b8c6c19b9bc47c9180def92b7746d3da7c2a323b77d09601f11b03a6cc88f4.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122454d0ae1418f5f8bb9f6938a2ed867b07a712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

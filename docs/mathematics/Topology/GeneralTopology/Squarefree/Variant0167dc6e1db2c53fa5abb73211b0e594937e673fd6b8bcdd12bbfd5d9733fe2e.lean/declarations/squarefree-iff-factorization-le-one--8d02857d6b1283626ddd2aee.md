# squarefree_iff_factorization_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bc98e5e10a0538253bdd06defddebadf2b7d28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86dace48-83d5-e8c0-efdd-7bdb63376fca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14abab7f-6e43-5bb2-cd20-fef049a38199",
  "kind": "theorem",
  "lexical_name": "squarefree_iff_factorization_le_one",
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
  "slug": "squarefree-iff-factorization-le-one--8d02857d6b1283626ddd2aee",
  "source": {
    "blob": "56bc98e5e10a0538253bdd06defddebadf2b7d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d02857d6b1283626ddd2aee7d48636d0957c0133ede80e0daf634e240c61a72",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14abab7f-6e43-5bb2-cd20-fef049a38199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefree_iff_factorization_le_one {n : ℕ} (hn : n ≠ 0) :
    Squarefree n ↔ ∀ p, n.factorization p ≤ 1 :=
  ⟨fun p hn => Squarefree.factorization_le_one hn p, squarefree_of_factorization_le_one hn⟩
#align nat.squarefree_iff_factorization_le_one Nat.squarefree_iff_factorization_le_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc98e5e10a0538253bdd06defddebadf2b7d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

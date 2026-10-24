# Lattice.mem_ideal_sup_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99055f0e8daa4b7adaa03b41533d3c7320d4aa7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b2a801aa474be98ff6dd0ee34f6181bee26168781fc08b50362a5b8559f1aaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3850b4a0-1831-7aab-1438-c20e7ba9d934",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a8cb21c-4b27-44f6-6cb9-50d4a3158ccd",
  "kind": "lemma",
  "lexical_name": "Lattice.mem_ideal_sup_principal",
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
  "slug": "lattice-mem-ideal-sup-principal--94b5c6c5825f133a687a35d9",
  "source": {
    "blob": "99055f0e8daa4b7adaa03b41533d3c7320d4aa7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Algebra/PrimeSeparator/Variant7b2a801aa474be98ff6dd0ee34f6181bee26168781fc08b50362a5b8559f1aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94b5c6c5825f133a687a35d9e9f0e44c93f6e820c4db3a2552312f0014444834",
  "verification": {
    "reference": "docs/verification/Algebra/PrimeSeparator/Variant7b2a801aa474be98ff6dd0ee34f6181bee26168781fc08b50362a5b8559f1aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a8cb21c-4b27-44f6-6cb9-50d4a3158ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Lattice.mem_ideal_sup_principal [Lattice α] (a b : α) (J : Ideal α) :
    b ∈ J ⊔ principal a ↔ ∃ j ∈ J, b ≤ j ⊔ a :=
  ⟨fun ⟨j, ⟨jJ, _, ha', bja'⟩⟩ => ⟨j, jJ, le_trans bja' (sup_le_sup_left ha' j)⟩,
    fun ⟨j, hj, hbja⟩ => ⟨j, hj, a, le_refl a, hbja⟩⟩

@[deprecated (since := "2026-06-11")] alias DistribLattice.mem_ideal_sup_principal :=
  Lattice.mem_ideal_sup_principal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimeSeparator/Variant7b2a801aa474be98ff6dd0ee34f6181bee26168781fc08b50362a5b8559f1aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimeSeparator/Variant7b2a801aa474be98ff6dd0ee34f6181bee26168781fc08b50362a5b8559f1aaa.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99055f0e8daa4b7adaa03b41533d3c7320d4aa7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

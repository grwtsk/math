# Subcomplex.ofSimplexProd_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f2b6aeb263ae7aab6363a6bdfe346dd0709ebfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:080e846b-21bb-1230-2406-55cbb516cc62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:820d97c4-7947-d34e-7d59-2f91de79ab46",
  "kind": "lemma",
  "lexical_name": "Subcomplex.ofSimplexProd_eq_range",
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
  "slug": "subcomplex-ofsimplexprod-eq-range--580b15b011ca5583cf8f38f3",
  "source": {
    "blob": "1f2b6aeb263ae7aab6363a6bdfe346dd0709ebfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:580b15b011ca5583cf8f38f37ccc0142b52e83926372fe1ab14aae08163eca64",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:820d97c4-7947-d34e-7d59-2f91de79ab46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subcomplex.ofSimplexProd_eq_range {p q : ℕ} (x₁ : X₁ _⦋p⦌) (x₂ : X₂ _⦋q⦌) :
    (Subcomplex.ofSimplex x₁).prod (Subcomplex.ofSimplex x₂) =
      Subcomplex.range (yonedaEquiv.symm x₁ ⊗ₘ yonedaEquiv.symm x₂) := by
  simp [Subcomplex.range_tensorHom, Subcomplex.range_eq_ofSimplex]

variable (X₁ X₂) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f2b6aeb263ae7aab6363a6bdfe346dd0709ebfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

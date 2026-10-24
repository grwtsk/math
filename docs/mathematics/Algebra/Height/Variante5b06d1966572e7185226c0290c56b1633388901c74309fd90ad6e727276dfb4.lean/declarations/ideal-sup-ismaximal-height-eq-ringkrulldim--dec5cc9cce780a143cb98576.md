# Ideal.sup_isMaximal_height_eq_ringKrullDim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ff202cf852e6f58ca97e69df907b3de90b408e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 543,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:399f1b23-7511-896b-3408-e8e4f5006334",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:166b8102-b2a0-2fb7-b0e8-f2d544b4403c",
  "kind": "lemma",
  "lexical_name": "Ideal.sup_isMaximal_height_eq_ringKrullDim",
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
  "slug": "ideal-sup-ismaximal-height-eq-ringkrulldim--dec5cc9cce780a143cb98576",
  "source": {
    "blob": "2ff202cf852e6f58ca97e69df907b3de90b408e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 543,
    "path": "GRWTSK/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dec5cc9cce780a143cb98576a06764d0f468a21c9dd986a96b1550becddf91cf",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:166b8102-b2a0-2fb7-b0e8-f2d544b4403c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.sup_isMaximal_height_eq_ringKrullDim [Nontrivial R] :
    ↑(⨆ (I : Ideal R) (_ : I.IsMaximal), I.height) = ringKrullDim R := by
  rw [← Ideal.sup_height_eq_ringKrullDim, WithBot.coe_inj]
  apply le_antisymm
  · exact iSup_mono fun I => iSup_mono' fun hI => ⟨hI.isPrime.ne_top , le_rfl⟩
  · refine iSup_mono' fun I => ?_
    obtain rfl | I_top := eq_or_ne I ⊤
    · exact ⟨⊥, by grind [iSup_le_iff, Ideal.IsPrime.ne_top]⟩
    · obtain ⟨M, hM, hIM⟩ := exists_le_maximal I I_top
      exact ⟨M, iSup_mono' (fun hI ↦ ⟨hM, height_mono hIM⟩)⟩

@[deprecated "Use `Ideal.sup_height_of_maximal_eq_ringKrullDim` instead." (since := "2026-04-02")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff202cf852e6f58ca97e69df907b3de90b408e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

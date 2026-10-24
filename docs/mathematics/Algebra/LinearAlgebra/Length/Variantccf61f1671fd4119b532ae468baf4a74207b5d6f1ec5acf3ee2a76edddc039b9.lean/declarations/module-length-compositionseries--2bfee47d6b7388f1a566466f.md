# Module.length_compositionSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c0cd8af-8f48-eae3-11ae-e2067f87621f",
  "kind": "lemma",
  "lexical_name": "Module.length_compositionSeries",
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
  "slug": "module-length-compositionseries--2bfee47d6b7388f1a566466f",
  "source": {
    "blob": "f205bbb307f205d0c688071d46cb98b311d999a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bfee47d6b7388f1a566466f375f118127b8c4c2a4153fc42a0e7c8386fb7736",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c0cd8af-8f48-eae3-11ae-e2067f87621f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.length_compositionSeries (s : CompositionSeries (Submodule R M)) (h₁ : s.head = ⊥)
    (h₂ : s.last = ⊤) : s.length = Module.length R M := by
  have H := isFiniteLength_of_exists_compositionSeries ⟨s, h₁, h₂⟩
  have := (isFiniteLength_iff_isNoetherian_isArtinian.mp H).1
  have := (isFiniteLength_iff_isNoetherian_isArtinian.mp H).2
  rw [← WithBot.coe_inj, Module.coe_length]
  apply le_antisymm
  · exact (Order.LTSeries.length_le_krullDim <| s.map ⟨id, fun h ↦ h.1⟩)
  · rw [Order.krullDim, iSup_le_iff]
    intro t
    refine WithBot.coe_le_coe.mpr ?_
    obtain ⟨t', i, hi, ht₁, ht₂⟩ := t.exists_relSeries_covBy_and_head_eq_bot_and_last_eq_bot
    have := (s.jordan_holder t' (h₁.trans ht₁.symm) (h₂.trans ht₂.symm)).choose
    have h : t.length ≤ t'.length := by simpa using Fintype.card_le_of_embedding i
    have h' : t'.length = s.length := by simpa using Fintype.card_congr this.symm
    simpa using h.trans h'.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f205bbb307f205d0c688071d46cb98b311d999a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

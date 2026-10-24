# pos_and_pos_or_neg_and_neg_of_smul_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f62d4032d0ceb98b446d68433d03d93e5f26386d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 792,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:babad869-e3df-441a-eb48-5d6c3043c6e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb472d06-e7e7-75dd-d99e-5742dc301852",
  "kind": "lemma",
  "lexical_name": "pos_and_pos_or_neg_and_neg_of_smul_pos",
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
  "slug": "pos-and-pos-or-neg-and-neg-of-smul-pos--034a864ff1ff0f702a650e92",
  "source": {
    "blob": "f62d4032d0ceb98b446d68433d03d93e5f26386d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 801,
    "line": 792,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:034a864ff1ff0f702a650e928f61f1b61bbb367669e3e127a517077b48724261",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb472d06-e7e7-75dd-d99e-5742dc301852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 792–801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pos_and_pos_or_neg_and_neg_of_smul_pos [PosSMulMono α β] [SMulPosMono α β] (hab : 0 < a • b) :
    0 < a ∧ 0 < b ∨ a < 0 ∧ b < 0 := by
  obtain ha | rfl | ha := lt_trichotomy a 0
  · refine Or.inr ⟨ha, lt_imp_lt_of_le_imp_le (fun hb ↦ ?_) hab⟩
    exact smul_nonpos_of_nonpos_of_nonneg ha.le hb
  · rw [zero_smul] at hab
    exact hab.false.elim
  · refine Or.inl ⟨ha, lt_imp_lt_of_le_imp_le (fun hb ↦ ?_) hab⟩
    exact smul_nonpos_of_nonneg_of_nonpos ha.le hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantbeec4e9d2d035afe7a3bf047041035c63cf2133f791c269c910158a36b49f41c.lean#L792).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f62d4032d0ceb98b446d68433d03d93e5f26386d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

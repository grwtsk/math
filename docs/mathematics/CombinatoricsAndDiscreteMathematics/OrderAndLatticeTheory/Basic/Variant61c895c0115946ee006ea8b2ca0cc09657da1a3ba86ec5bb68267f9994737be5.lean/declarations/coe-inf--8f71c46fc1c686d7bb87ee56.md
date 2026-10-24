# coe_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dc72f82a17110686edf676a1ead810fffa5ac1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfc27504-8caf-6434-443d-bc269d09cb16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23624673-f51f-54c6-0cf4-40cc7f19cd2e",
  "kind": "theorem",
  "lexical_name": "coe_inf",
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
  "slug": "coe-inf--8f71c46fc1c686d7bb87ee56",
  "source": {
    "blob": "3dc72f82a17110686edf676a1ead810fffa5ac1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 511,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f71c46fc1c686d7bb87ee5694b0416ca238f31472c0ac69b326073a0db04ba5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23624673-f51f-54c6-0cf4-40cc7f19cd2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_inf : ∀ s t : Interval α, (↑(s ⊓ t) : Set α) = ↑s ∩ ↑t
  | ⊥, _ => by
    rw [bot_inf_eq]
    exact (empty_inter _).symm
  | (s : NonemptyInterval α), ⊥ => by
    rw [inf_bot_eq]
    exact (inter_empty _).symm
  | (s : NonemptyInterval α), (t : NonemptyInterval α) => by
    simp only [Min.min, coe_coe, NonemptyInterval.coe_def, Icc_inter_Icc,
      SemilatticeInf.inf, Lattice.inf]
    split_ifs with h
    · simp only [coe_coe, NonemptyInterval.coe_def]
    · refine (Icc_eq_empty <| mt ?_ h).symm
      exact fun h ↦ ⟨le_sup_left.trans <| h.trans inf_le_right,
        le_sup_right.trans <| h.trans inf_le_left⟩

end Decidable

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc72f82a17110686edf676a1ead810fffa5ac1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# prod_smul_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "caf84a812ad79352b5951af0d067db389bb80433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dd95f67-f3a1-a0d7-055f-9aa31551b54f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16ffb5c1-7620-0351-79dc-6ff6ee6dea33",
  "kind": "theorem",
  "lexical_name": "prod_smul_empty",
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
  "slug": "prod-smul-empty--0d4e263c6190c41f0b581127",
  "source": {
    "blob": "caf84a812ad79352b5951af0d067db389bb80433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 563,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d4e263c6190c41f0b58112721a37e9ced2dc8b9a82f76c455641f0a9b2ff109",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16ffb5c1-7620-0351-79dc-6ff6ee6dea33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_smul_empty (w : NormalWord d) :
    (w.prod φ) • empty = w := by
  induction w using consRecOn with
  | ofGroup => simp [ofGroup, ReducedWord.prod, of_smul_eq_smul, group_smul_def]
  | cons g u w h1 h2 ih =>
    rw [prod_cons, ← mul_assoc, mul_smul, ih, mul_smul, t_pow_smul_eq_unitsSMul,
      of_smul_eq_smul, unitsSMul]
    rw [dif_neg (not_cancels_of_cons_hyp u w h2)]
    -- Before https://github.com/leanprover/lean4/pull/2644, this was just
    -- simp [unitsSMulGroup, (d.compl _).equiv_fst_eq_one_of_mem_of_one_mem (one_mem _) h1,
    --   -SetLike.coe_sort_coe]
    -- ext <;> simp [-SetLike.coe_sort_coe]
    simp only [unitsSMulGroup, (d.compl _).equiv_fst_eq_one_of_mem_of_one_mem (one_mem _) h1,
      smul_cons]
    ext <;> simp [-SetLike.coe_sort_coe]
    rw [(d.compl _).equiv_snd_eq_inv_mul,
      (d.compl _).equiv_fst_eq_one_of_mem_of_one_mem (one_mem _) h1]
    simp

variable (d)
/-- The equivalence between elements of the HNN extension and words in normal form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf84a812ad79352b5951af0d067db389bb80433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

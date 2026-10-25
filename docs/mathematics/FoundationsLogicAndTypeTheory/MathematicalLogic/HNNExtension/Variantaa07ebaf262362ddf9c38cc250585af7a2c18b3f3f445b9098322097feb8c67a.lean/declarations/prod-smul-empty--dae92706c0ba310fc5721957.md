# prod_smul_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a01288bc39d0afd4d2b3230c62eff275de3ce01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 565,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02cf6df4-c4f7-83b0-5e82-3a2e997c5aa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5223a10f-0db2-32ba-37ca-c0b3fcab7e34",
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
  "slug": "prod-smul-empty--dae92706c0ba310fc5721957",
  "source": {
    "blob": "2a01288bc39d0afd4d2b3230c62eff275de3ce01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 565,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae92706c0ba310fc572195795fc1bf34cec131d941afb740fff486fdad023d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5223a10f-0db2-32ba-37ca-c0b3fcab7e34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_smul_empty (w : NormalWord d) :
    (w.prod φ) • empty = w := by
  induction w using consRecOn with
  | ofGroup => simp [ofGroup, ReducedWord.prod, of_smul_eq_smul, group_smul_def]
  | cons g u w h1 h2 ih =>
    rw [prod_cons, ← mul_assoc, mul_smul, ih, mul_smul, t_pow_smul_eq_unitsSMul,
      of_smul_eq_smul, unitsSMul]
    rw [dite_eq_right (not_cancels_of_cons_hyp u w h2)]
    -- Before https://github.com/leanprover/lean4/pull/2644, this was just
    -- simp [unitsSMulGroup, (d.compl _).equiv_fst_eq_one_of_mem_of_one_mem (one_mem _) h1,
    --   -SetLike.coe_sort_coe]
    -- ext <;> simp [-SetLike.coe_sort_coe]
    simp only [unitsSMulGroup, (d.compl _).equiv_fst_eq_one_of_mem_of_one_mem (one_mem _) h1,
      (d.compl _).equiv_snd_eq_inv_mul, inv_one, one_mul, mul_inv_cancel, one_smul, smul_cons]
    ext <;> simp

variable (d)
/-- The equivalence between elements of the HNN extension and words in normal form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a01288bc39d0afd4d2b3230c62eff275de3ce01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

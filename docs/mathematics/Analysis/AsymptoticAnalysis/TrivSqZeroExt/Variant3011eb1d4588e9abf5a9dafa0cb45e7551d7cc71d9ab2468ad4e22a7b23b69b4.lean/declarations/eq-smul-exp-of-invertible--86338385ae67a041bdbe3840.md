# eq_smul_exp_of_invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6805e43d9bed5b5a316b39f81778737ef195d71a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82d7c62e-2f8c-5287-33ea-10a19640b091",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c659d37b-9775-9d0c-cb7f-b91cc6854aa3",
  "kind": "theorem",
  "lexical_name": "eq_smul_exp_of_invertible",
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
  "slug": "eq-smul-exp-of-invertible--86338385ae67a041bdbe3840",
  "source": {
    "blob": "6805e43d9bed5b5a316b39f81778737ef195d71a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86338385ae67a041bdbe3840b651a9ed54c37c65cb91e7e4540c3239a63fada8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c659d37b-9775-9d0c-cb7f-b91cc6854aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_smul_exp_of_invertible (x : tsze R M) [Invertible x.fst] :
    x = x.fst • exp (⅟x.fst • inr x.snd) := by
  rw [← inr_smul, exp_inr, smul_add, ← inl_one, ← inl_smul, ← inr_smul, smul_eq_mul, mul_one,
    smul_smul, mul_invOf_self, one_smul, inl_fst_add_inr_snd_eq]

end CommRing

section Field
variable [Field R] [AddCommGroup M]
  [Algebra ℚ R] [Module ℚ M] [Module R M] [Module Rᵐᵒᵖ M]
  [IsCentralScalar R M]
  [TopologicalSpace R] [TopologicalSpace M]
  [IsTopologicalRing R] [IsTopologicalAddGroup M] [ContinuousSMul R M] [ContinuousSMul Rᵐᵒᵖ M]

variable [T2Space R] [T2Space M]

/-- More convenient version of `TrivSqZeroExt.eq_smul_exp_of_invertible` for when `R` is a
field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant3011eb1d4588e9abf5a9dafa0cb45e7551d7cc71d9ab2468ad4e22a7b23b69b4.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6805e43d9bed5b5a316b39f81778737ef195d71a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

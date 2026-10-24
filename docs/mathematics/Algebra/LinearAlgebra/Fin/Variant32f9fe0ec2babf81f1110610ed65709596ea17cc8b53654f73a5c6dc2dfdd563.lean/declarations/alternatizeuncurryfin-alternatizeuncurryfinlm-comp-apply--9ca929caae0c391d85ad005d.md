# alternatizeUncurryFin_alternatizeUncurryFinLM_comp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d51918ad020ac3ef88033614316e71cd99d386f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d2b9edc-b0d9-003b-ee9b-89ae03e308c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba206dfa-bba3-de9d-14d2-637203d94cd0",
  "kind": "theorem",
  "lexical_name": "alternatizeUncurryFin_alternatizeUncurryFinLM_comp_apply",
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
  "slug": "alternatizeuncurryfin-alternatizeuncurryfinlm-comp-apply--9ca929caae0c391d85ad005d",
  "source": {
    "blob": "7d51918ad020ac3ef88033614316e71cd99d386f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca929caae0c391d85ad005d2394c4c44a3921fbbae58fd38d4a1b7c7f279064",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba206dfa-bba3-de9d-14d2-637203d94cd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alternatizeUncurryFin_alternatizeUncurryFinLM_comp_apply
    (f : M →ₗ[R] M →ₗ[R] M [⋀^Fin n]→ₗ[R] N) (v : Fin (n + 2) → M) :
    alternatizeUncurryFin (alternatizeUncurryFinLM ∘ₗ f) v =
      ∑ (i : Fin (n + 1)), ∑ j ≥ i,
        (-1 : ℤ) ^ (i + j : ℕ) •
          (f (v i.castSucc) (v j.succ) (j.removeNth <| i.castSucc.removeNth v) -
            f (v j.succ) (v i.castSucc) (j.removeNth <| i.castSucc.removeNth v)) := by
  simp only [alternatizeUncurryFin_apply, Int.reduceNeg, LinearMap.coe_comp, comp_apply,
    alternatizeUncurryFinLM_apply, Finset.smul_sum, sum_sum_eq_sum_triangle_add, val_castSucc,
    val_succ]
  refine Fintype.sum_congr _ _ fun i ↦ Finset.sum_congr rfl fun j hj ↦ ?_
  rw [Finset.mem_Ici] at hj
  have H₁ : i.castSucc.removeNth v j = v j.succ := by
    simp [Fin.removeNth_apply, Fin.succAbove_of_le_castSucc, hj]
  have H₂ : j.succ.removeNth v i = v i.castSucc := by
    simp [Fin.removeNth_apply, Fin.succAbove_of_castSucc_lt, hj]
  simp only [pow_add, mul_smul, pow_one, neg_one_smul, smul_neg, smul_sub, ← sub_eq_add_neg,
    smul_comm ((-1 : ℤ) ^ (j : ℕ)), H₁, H₂]
  congr 4
  rw [removeNth_removeNth_eq_swap]
  simp [Fin.predAbove, hj, Fin.succAbove]

/-- If `f` is a symmetric bilinear map taking values in the space of alternating maps,
then the twice uncurried `f` is zero.

See also `alternatizeUncurryFin_alternatizeUncurryFinLM_comp_apply`
for a formula that does not assume `f` to be symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d51918ad020ac3ef88033614316e71cd99d386f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

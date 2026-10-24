# σ₀Iter_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd06ac6ce2696c9b4d013e397d1a95509c80471a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/200f142961bb595c1e9eb6e948430afc465805275168f2098ccf7d12f71e55f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95d4b9ae-4fab-a77c-7a43-a4edc70e3510",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8d91a4c-b1fe-b274-acfd-6bda9e49f9f4",
  "kind": "lemma",
  "lexical_name": "σ₀Iter_succ",
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
  "slug": "iter-succ--bc97d36eb2d63d4ecd709a44",
  "source": {
    "blob": "dd06ac6ce2696c9b4d013e397d1a95509c80471a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant200f142961bb595c1e9eb6e948430afc465805275168f2098ccf7d12f71e55f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc97d36eb2d63d4ecd709a4479c79023e1b9104aec5c1eeb13836b778941bf8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant200f142961bb595c1e9eb6e948430afc465805275168f2098ccf7d12f71e55f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8d91a4c-b1fe-b274-acfd-6bda9e49f9f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma σ₀Iter_succ (i : ℕ) {n m : ℕ} (h : n + (i + 1) = m) :
    σ₀Iter (i + 1) h = σ₀Iter i ≫ σ 0 := by
  refine ConcreteCategory.hom_ext _ _ (fun k ↦ ?_)
  ext
  rw [dsimp% ConcreteCategory.comp_apply (σ₀Iter i) (σ 0)]
  by_cases! hk : k.val ≤ i
  · rw [σ₀Iter_coe_eq_of_lt .., coe_σ]
    obtain hk | rfl := hk.lt_or_eq
    · grind [Fin.predAbove_of_le_castSucc, Fin.coe_castPred, σ₀Iter_coe_eq_of_lt]
    · grind [Fin.predAbove_of_le_castSucc, Fin.coe_castPred, σ₀Iter_coe_eq_of_ge, tsub_self]
  · rw [σ₀Iter_coe_eq_of_ge .., coe_σ,
      Fin.predAbove_of_castSucc_lt _ _ ?_, Fin.val_pred,
      σ₀Iter_coe_eq_of_ge .., Nat.sub_add_eq]
    rw [Fin.lt_def, Fin.castSucc_zero, σ₀Iter_coe_eq_of_ge ..,
      Fin.coe_ofNat_eq_mod, Nat.zero_mod]
    lia

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant200f142961bb595c1e9eb6e948430afc465805275168f2098ccf7d12f71e55f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant200f142961bb595c1e9eb6e948430afc465805275168f2098ccf7d12f71e55f4.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd06ac6ce2696c9b4d013e397d1a95509c80471a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

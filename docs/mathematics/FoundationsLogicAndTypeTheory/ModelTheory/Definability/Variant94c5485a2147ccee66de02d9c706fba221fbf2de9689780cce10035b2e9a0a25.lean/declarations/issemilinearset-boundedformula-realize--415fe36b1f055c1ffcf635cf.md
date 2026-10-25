# isSemilinearSet_boundedFormula_realize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bc38184-5b52-d4f5-e5fb-7b49c85e8317",
  "kind": "lemma",
  "lexical_name": "isSemilinearSet_boundedFormula_realize",
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
  "slug": "issemilinearset-boundedformula-realize--415fe36b1f055c1ffcf635cf",
  "source": {
    "blob": "bb4472520b8da73a5d334293ae7b7f44e70acb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415fe36b1f055c1ffcf635cf3a7ee5b059efcf6c142c885db2310c82adc8ab17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bc38184-5b52-d4f5-e5fb-7b49c85e8317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSemilinearSet_boundedFormula_realize {n} (φ : presburger[[A]].BoundedFormula α n) :
    IsSemilinearSet {v : α ⊕ Fin n → ℕ | φ.Realize (v ∘ Sum.inl) (v ∘ Sum.inr)} := by
  have := Fintype.ofFinite α
  induction φ with simp only [BoundedFormula.Realize]
  | equal t₁ t₂ =>
    rcases term_realize_eq_add_dotProduct t₁ with ⟨k₁, u₁, ht₁⟩
    rcases term_realize_eq_add_dotProduct t₂ with ⟨k₂, u₂, ht₂⟩
    convert! Nat.isSemilinearSet_setOfPred_mulVec_eq ![k₁] ![k₂] (.of ![u₁]) (.of ![u₂])
    simp [ht₁, ht₂]
  | rel f => nomatch f
  | falsum => exact .empty
  | imp _ _ ih₁ ih₂ =>
    convert! (ih₂.compl.inter ih₁).compl using 1
    simp [ofPred_inter_eq_sep, imp_iff_not_or, compl_ofPred]
  | @all n φ ih =>
    let e := (Equiv.sumAssoc α (Fin n) (Fin 1)).trans (Equiv.sumCongr (.refl α) finSumFinEquiv)
    rw [← isSemilinearSet_image_iff (LinearEquiv.funCongrLeft ℕ ℕ e)] at ih
    convert! ih.compl.proj.compl using 1
    simp_rw [compl_ofPred, not_exists, Fin.forall_fin_succ_pi, Fin.forall_fin_zero_pi,
      mem_compl_iff, mem_image, not_not, ← LinearEquiv.eq_symm_apply, LinearEquiv.funCongrLeft_symm,
      exists_eq_right, mem_ofPred, LinearEquiv.funCongrLeft_apply, LinearMap.funLeft,
      LinearMap.coe_mk, AddHom.coe_mk]
    congr! 4
    ext i
    cases i using Fin.lastCases <;> simp [e]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant94c5485a2147ccee66de02d9c706fba221fbf2de9689780cce10035b2e9a0a25.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4472520b8da73a5d334293ae7b7f44e70acb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ContinuousMultilinearMap.iteratedFDeriv_comp_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75796de8-c59f-d12f-fec1-5e2039cdbeb7",
  "kind": "lemma",
  "lexical_name": "ContinuousMultilinearMap.iteratedFDeriv_comp_diagonal",
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
  "slug": "continuousmultilinearmap-iteratedfderiv-comp-diagonal--2ca3b67d0262e102fdccb9e1",
  "source": {
    "blob": "eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ca3b67d0262e102fdccb9e1b7967c4d2c68d4235de2816d51334ebc9a6b2939",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75796de8-c59f-d12f-fec1-5e2039cdbeb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousMultilinearMap.iteratedFDeriv_comp_diagonal
    {n : ℕ} (f : E [×n]→L[𝕜] F) (x : E) (v : Fin n → E) :
    iteratedFDeriv 𝕜 n (fun x ↦ f (fun _ ↦ x)) x v = ∑ σ : Perm (Fin n), f (fun i ↦ v (σ i)) := by
  rw [← sum_comp (Equiv.inv (Perm (Fin n)))]
  let g : E →L[𝕜] (Fin n → E) := ContinuousLinearMap.pi (fun i ↦ ContinuousLinearMap.id 𝕜 E)
  change iteratedFDeriv 𝕜 n (f ∘ g) x v = _
  rw [ContinuousLinearMap.iteratedFDeriv_comp_right _ f.contDiff _ le_rfl, f.iteratedFDeriv_eq]
  simp only [ContinuousMultilinearMap.iteratedFDeriv,
    ContinuousMultilinearMap.compContinuousLinearMap_apply, ContinuousMultilinearMap.sum_apply,
    ContinuousMultilinearMap.iteratedFDerivComponent_apply, Set.mem_range, Pi.compRightL_apply]
  rw [← sum_comp (Equiv.embeddingEquivOfFinite (Fin n))]
  congr with σ
  congr with i
  have A : ∃ y, σ y = i := by
    have : Function.Bijective σ := (Fintype.bijective_iff_injective_and_card _).2 ⟨σ.injective, rfl⟩
    exact this.surjective i
  rcases A with ⟨y, rfl⟩
  simp only [EmbeddingLike.apply_eq_iff_eq, exists_eq, ↓reduceDIte,
    Function.Embedding.toEquivRange_symm_apply_self, ContinuousLinearMap.coe_pi',
    ContinuousLinearMap.coe_id', id_eq, g]
  congr 1
  symm
  simp [coe_fn_mk, inv_apply, Perm.inv_def,
    ofBijective_symm_apply_apply, Function.Embedding.equivOfFiniteSelfEmbedding]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

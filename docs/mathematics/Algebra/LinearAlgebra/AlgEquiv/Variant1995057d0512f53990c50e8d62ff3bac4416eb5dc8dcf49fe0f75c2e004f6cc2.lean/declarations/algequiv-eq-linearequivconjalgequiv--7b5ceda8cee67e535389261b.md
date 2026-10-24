# AlgEquiv.eq_linearEquivConjAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05411ef8-d1f7-7dc2-edbc-58a027ccd349",
  "kind": "theorem",
  "lexical_name": "AlgEquiv.eq_linearEquivConjAlgEquiv",
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
  "slug": "algequiv-eq-linearequivconjalgequiv--7b5ceda8cee67e535389261b",
  "source": {
    "blob": "fa47df6f0fe93a7df76bc8f85fbcbbee6761bd82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b5ceda8cee67e535389261bdbb4e169aee51a887df57a5bc137d80e7a110cec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05411ef8-d1f7-7dc2-edbc-58a027ccd349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem AlgEquiv.eq_linearEquivConjAlgEquiv (f : End K V ≃ₐ[K] End K W) :
    ∃ T : V ≃ₗ[K] W, f = T.conjAlgEquiv K := by
  by_cases! hV : Subsingleton V
  · nontriviality W
    simpa using congr(f $(Subsingleton.allEq 0 1))
  simp_rw [AlgEquiv.ext_iff, conjAlgEquiv_apply, ← comp_assoc, eq_comp_toLinearMap_symm]
  obtain ⟨u, hu⟩ := exists_ne (0 : V)
  obtain ⟨v, huv⟩ := Projective.exists_dual_ne_zero K hu
  obtain ⟨z, hz⟩ : ∃ z : W, ¬ f (smulRight v u) z = (0 : End K W) z := by
    rw [← not_forall, ← LinearMap.ext_iff, EmbeddingLike.map_eq_zero_iff, LinearMap.ext_iff]
    exact not_forall.mpr ⟨u, huv.isUnit.smul_eq_zero.not.mpr hu⟩
  set T := applyₗ z ∘ₗ f.toLinearMap ∘ₗ smulRightₗ v
  have hT x : T x = f (smulRight v x) z := rfl
  have this A x : T (A x) = f A (T x) := by
    simp only [hT, ← End.mul_apply, ← map_mul]
    congr; ext; simp
  have surj : Function.Surjective T := fun w ↦ by
    obtain ⟨d, hd⟩ := Projective.exists_dual_eq_one K hz
    exact ⟨f.symm (smulRight d w) u, by simp [T, this, hd]⟩
  have inj : Function.Injective T := fun x y hxy ↦ by
    have h_smul : smulRightₗ v x = smulRightₗ v y := by
      apply f.injective <| LinearMap.ext fun z ↦ ?_
      obtain ⟨w, rfl⟩ := surj z
      simp_rw [← this, smulRightₗ_apply_apply, _root_.map_smul, hxy]
    simpa [huv.isUnit.smul_left_cancel] using congr((fun f ↦ f u) $h_smul)
  exact ⟨.ofBijective T ⟨inj, surj⟩, fun A ↦ (LinearMap.ext <| this A).symm⟩

variable (K V W) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa47df6f0fe93a7df76bc8f85fbcbbee6761bd82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

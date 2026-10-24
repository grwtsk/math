# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d98d037550b91cc3a28de3db63b6faa68d7712bde023de49c7350cdf76b521f7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ab70ba3a6d90023af93f2693",
  "source": {
    "blob": "8e0b9a3f030f6296c8e9aad3fde22f5439e1007e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 592,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab70ba3a6d90023af93f269358550c908c1c499aabf989e3781fc17776ece45b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d98d037550b91cc3a28de3db63b6faa68d7712bde023de49c7350cdf76b521f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Epi (H1CoresCoinf A S).g := by
  rw [ModuleCat.epi_iff_surjective]
  intro x
  induction x using H1_induction_on with | @h x =>
/- Let `x : Z₁(G ⧸ S, A_S)`. We know `Z₁(G, A_S) ⟶ Z₁(G ⧸ S, A_S)` is surjective, so pick
`y : Z₁(G, A_S)` in the preimage of `x`. -/
  rcases (ModuleCat.epi_iff_surjective _).1
    (mapCycles₁_quotientGroupMk'_epi (A.toCoinvariants S) S) x with ⟨y, hy⟩
/- We know `C₁(G, A) ⟶ C₁(G, A_S)` is surjective, so pick `Y` in the preimage of `y`. -/
  rcases mapRange_surjective _ (map_zero _)
    (Coinvariants.mk_surjective (A.ρ.comp S.subtype)) y.1 with ⟨Y, hY⟩
/- Then `d(Y) ∈ I(S)A,` since `d(y) = 0`. -/
  have : d₁₀ _ Y ∈ Coinvariants.ker (A.ρ.comp S.subtype) := by
    have h' := congr($((mapShortComplexH1 (B := toCoinvariants A S)
      (MonoidHom.id G) (toCoinvariantsMkQ A S)).comm₂₃) Y)
    simp_all [shortComplexH1, ← Coinvariants.mk_eq_zero]
  /- Thus we can pick a representation of `d(Y)` as a sum `∑ ρ(sᵢ⁻¹)(aᵢ) - aᵢ`, `sᵢ ∈ S, aᵢ ∈ A`,
and `Y - ∑ aᵢ·sᵢ` is a cycle. -/
  rcases chains₁ToCoinvariantsKer_surjective
    (res S.subtype A) ⟨d₁₀ A Y, this⟩ with ⟨(Z : S →₀ A), hZ⟩
  have H : d₁₀ A (Y - mapDomain S.subtype Z) = 0 := by
    simpa [map_sub, sub_eq_zero, chains₁ToCoinvariantsKer, -LinearMap.sub_apply, d₁₀,
      sum_mapDomain_index_inj] using! Subtype.ext_iff.1 hZ.symm
  use H1π A ⟨Y - mapDomain S.subtype Z, H⟩
  simp only [H1CoresCoinf_X₃, H1CoresCoinf_X₂, H1CoresCoinf_g,
    Subgroup.coe_subtype, H1π_comp_map_apply]
/- Moreover, the image of `Y - ∑ aᵢ·sᵢ` in `Z₁(G ⧸ S, A_S)` is `x - ∑ aᵢ·1`, and hence differs from
`x` by a boundary, since `aᵢ·1 = d(aᵢ·(1, 1))`. -/
  refine (H1π_eq_iff _ _).2 ?_
  simpa [← hy, mapCycles₁_hom, map_sub, Rep.hom_id (res _ _), ← mapDomain_comp,
    ← mapDomain_mapRange, hY, Function.comp_def, (QuotientGroup.eq_one_iff <| Subtype.val _).2
    (Subtype.prop _)] using! Submodule.finsuppSum_mem _ _ _ _ fun _ _ ↦ single_one_mem_boundaries₁ _

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Given a `G`-representation `A` and a normal subgroup `S ≤ G`, the degree 1
corestriction-coinflation sequence `H₁(S, A) ⟶ H₁(G, A) ⟶ H₁(G ⧸ S, A_S)` is exact. `simp`s
squeezed for performance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0b9a3f030f6296c8e9aad3fde22f5439e1007e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

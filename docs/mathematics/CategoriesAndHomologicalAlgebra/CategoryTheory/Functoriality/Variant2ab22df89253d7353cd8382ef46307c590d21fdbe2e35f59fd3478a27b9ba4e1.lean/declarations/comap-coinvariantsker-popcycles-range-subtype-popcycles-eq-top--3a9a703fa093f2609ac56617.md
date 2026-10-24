# comap_coinvariantsKer_pOpcycles_range_subtype_pOpcycles_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:182576ce-3887-d455-ec27-3359ad470fba",
  "kind": "theorem",
  "lexical_name": "comap_coinvariantsKer_pOpcycles_range_subtype_pOpcycles_eq_top",
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
  "slug": "comap-coinvariantsker-popcycles-range-subtype-popcycles-eq-top--3a9a703fa093f2609ac56617",
  "source": {
    "blob": "8e0b9a3f030f6296c8e9aad3fde22f5439e1007e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 565,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a9a703fa093f2609ac56617a36429a71706825b8296c2f2c42fc793da6ac17d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:182576ce-3887-d455-ec27-3359ad470fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_coinvariantsKer_pOpcycles_range_subtype_pOpcycles_eq_top :
    Submodule.comap ((mapShortComplexH1 (MonoidHom.id G) (coinvariantsShortComplex A S).f).τ₂ ≫
      (shortComplexH1 _).pOpcycles).hom (LinearMap.range ((mapShortComplexH1 S.subtype (𝟙 _)).τ₂ ≫
      (shortComplexH1 _).pOpcycles).hom) = ⊤ := by
  rw [eq_top_iff]
  intro x _
  rcases mapRange_surjective _ (map_zero _) (chains₁ToCoinvariantsKer_surjective
    (res S.subtype A)) x with ⟨(X : G →₀ S →₀ A), hX⟩
  let Y : S →₀ A := X.sum fun g f =>
    mapRange.linearMap (A.ρ g⁻¹) (lmapDomain _ k (fun s => MulAut.conjNormal g⁻¹ s) f) - f
  let Z : G × G →₀ A := X.sum fun g f =>
    lmapDomain _ k (fun s => (g, g⁻¹ * s.1 * g)) f - lmapDomain _ k (fun s => (s.1, g)) f
  use Y
  apply (moduleCat_pOpcycles_eq_iff _ _ _).2 ⟨Z, ?_⟩
  change d₂₁ A Z = mapRange id rfl (lmapDomain _ k Subtype.val Y) -
    mapRange.linearMap (Submodule.subtype _) (mapDomain id x)
  simp only [mapDomain]
  simpa [map_finsuppSum, mapDomain, map_sub, ← hX, sum_single_index, curryLinearEquiv,
    curryEquiv, Finsupp.uncurry, d₂₁, Y, Z, sum_mapRange_index,
    chains₁ToCoinvariantsKer, d₁₀, single_sum, mul_assoc, sub_add_eq_add_sub,
    sum_sum_index, add_smul, sub_sub_sub_eq, lsingle, singleAddHom] using add_comm _ _

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Given a `G`-representation `A` and a normal subgroup `S ≤ G`, the map
`H₁(G, A) ⟶ H₁(G ⧸ S, A_S)` induced by the quotient maps `G →* G ⧸ S` and `A →ₗ A_S` is an
epimorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0b9a3f030f6296c8e9aad3fde22f5439e1007e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

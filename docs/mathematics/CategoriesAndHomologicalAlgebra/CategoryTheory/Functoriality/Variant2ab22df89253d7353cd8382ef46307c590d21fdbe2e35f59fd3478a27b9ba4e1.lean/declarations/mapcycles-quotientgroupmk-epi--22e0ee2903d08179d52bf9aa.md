# mapCycles₁_quotientGroupMk'_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:884f16326e36e3c5f29b1f3ab872995acb50b5bb0b6fd282dc2b5f9e86267829",
  "kind": "instance",
  "lexical_name": "mapCycles₁_quotientGroupMk'_epi",
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
  "slug": "mapcycles-quotientgroupmk-epi--22e0ee2903d08179d52bf9aa",
  "source": {
    "blob": "8e0b9a3f030f6296c8e9aad3fde22f5439e1007e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 435,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e0ee2903d08179d52bf9aa5d07999e84674e6a49f9b63204b1a2440691bed7",
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

Occurrence: `declaration:884f16326e36e3c5f29b1f3ab872995acb50b5bb0b6fd282dc2b5f9e86267829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mapCycles₁_quotientGroupMk'_epi :
    Epi (mapCycles₁ (QuotientGroup.mk' S) (resOfQuotientIso A S).inv) := by
  rw [ModuleCat.epi_iff_surjective]
  rintro ⟨x, hx⟩
  choose! s hs using QuotientGroup.mk_surjective (s := S)
  refine ⟨⟨mapDomain s x, ?_⟩, Subtype.ext <| by
    simp [mapCycles₁_hom, ← mapDomain_comp, hs, res, Rep.hom_id (of _)]⟩
  simpa [mem_cycles₁_iff, ← (mem_cycles₁_iff _).1 hx, sum_mapDomain_index_inj (f := s)
      (fun x y h => by rw [← hs x, ← hs y, h])]
    using Finsupp.sum_congr fun a b => QuotientGroup.induction_on a fun a => by
      simp [← QuotientGroup.mk_inv, apply_eq_of_coe_eq A.ρ S (s a)⁻¹ a⁻¹ (by simp [hs])]

/-- Given a `G`-representation `A` on which a normal subgroup `S ≤ G` acts trivially, this is the
short complex `H₁(S, A) ⟶ H₁(G, A) ⟶ H₁(G ⧸ S, A)`. (This is a simplified expression for the
degree 1 corestriction-coinflation sequence when `A` is `S`-trivial.) -/
@[simps X₁ X₂ X₃ f g]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0b9a3f030f6296c8e9aad3fde22f5439e1007e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

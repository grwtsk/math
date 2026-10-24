# quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bac987ef-2afb-3e0e-237c-8100bc68cc58",
  "kind": "theorem",
  "lexical_name": "quotient",
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
  "slug": "quotient--ee194d450b085cb1339ed74c",
  "source": {
    "blob": "472c75265f50a72ffbf12ac68b34d66fcb813d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 389,
    "path": "GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee194d450b085cb1339ed74c7fb5dc457f3f31d34a9b48a97e2f705942177e98",
  "verification": {
    "reference": "docs/verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bac987ef-2afb-3e0e-237c-8100bc68cc58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient [Finite G] (N : Subgroup G) [N.Normal] [MulSemiringAction G C]
    [hG : IsGaloisGroup G A C] [MulSemiringAction G B] [MulSemiringAction (G ⧸ N) B]
    [SMulCommClass (G ⧸ N) A B] [SMulDistribClass G B C] [IsScalarTower G (G ⧸ N) B]
    [IsGaloisGroup N B C] :
    IsGaloisGroup (G ⧸ N) A B where
  faithful.eq_of_smul_eq_smul := fun {g₁} {g₂} ↦ Quotient.inductionOn₂' g₁ g₂ fun g₁ g₂ h ↦ by
    have h' : ∀ g : G, (∀ x : B, g • x = x) → g ∈ N := by
      simp [← fixingSubgroup_range_algebraMap G A B C N, mem_fixingSubgroup_iff, ← algebraMap.smul',
        (FaithfulSMul.algebraMap_injective B C).eq_iff]
    have {g : G} : Quotient.mk'' g = QuotientGroup.mk' N g := rfl
    simp_rw [← inv_smul_eq_iff, this, ← map_inv, smul_smul, ← map_mul,
      QuotientGroup.mk'_apply, MulAction.coe_quotient_smul] at h
    have := h' _ h
    rwa [QuotientGroup.eq, ← Subgroup.inv_mem_iff, mul_inv_rev, inv_inv]
  commutes := inferInstance
  isInvariant.isInvariant x h := by
    simp_rw [← (FaithfulSMul.algebraMap_injective B C).eq_iff, ← IsScalarTower.algebraMap_apply]
    apply hG.isInvariant.isInvariant (algebraMap B C x)
    intro g
    have := (FaithfulSMul.algebraMap_injective B C).eq_iff.mpr <| h g
    rwa [MulAction.coe_quotient_smul, algebraMap.smul'] at this

/-- If `G` is a Galois group for `C/A`, the normal subgroup `N ≤ G` is a Galois group for `C/B`,
and `G'` is a Galois group for `B/A`, then `G ⧸ N ≃* G'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472c75265f50a72ffbf12ac68b34d66fcb813d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

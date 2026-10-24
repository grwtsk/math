# normDet_eq_norm_det_toMatrix_rangeRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b83afc95-09d0-ac70-090d-bc5fbc02cd1a",
  "kind": "theorem",
  "lexical_name": "normDet_eq_norm_det_toMatrix_rangeRestrict",
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
  "slug": "normdet-eq-norm-det-tomatrix-rangerestrict--c8e9b1c51ca46e21820f03b7",
  "source": {
    "blob": "322ac51cb5f120cd8166341a576cd6eb59cb3a63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 91,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8e9b1c51ca46e21820f03b768d4cae881609be06f609f5cf1d5a0c3d93f966c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b83afc95-09d0-ac70-090d-bc5fbc02cd1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normDet_eq_norm_det_toMatrix_rangeRestrict {ι : Type*} [Fintype ι] [DecidableEq ι]
    (f : U →ₗ[𝕜] V) (bu : OrthonormalBasis ι 𝕜 U) (bv : OrthonormalBasis ι 𝕜 f.range) :
    f.normDet = ‖(f.rangeRestrict.toMatrix bu.toBasis bv.toBasis).det‖ := by
  have hrank : finrank 𝕜 U = finrank 𝕜 f.range := by
    rw [finrank_eq_nat_card_basis bu.toBasis, finrank_eq_nat_card_basis bv.toBasis]
  have h : Nonempty (OrthonormalBasis (Fin (finrank 𝕜 U)) 𝕜 f.range) := by
    rw [hrank]
    exact ⟨stdOrthonormalBasis 𝕜 f.range⟩
  simp only [normDet, h, ↓reduceDIte]
  rw [← basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix (stdOrthonormalBasis 𝕜 U).toBasis
    bu.toBasis h.some.toBasis bv.toBasis]
  have h1 : bu.toBasis.toMatrix (stdOrthonormalBasis 𝕜 U).toBasis *
      (stdOrthonormalBasis 𝕜 U).toBasis.toMatrix bu.toBasis = 1 :=
    Basis.toMatrix_mul_toMatrix_flip _ _
  have h2 : (stdOrthonormalBasis 𝕜 U).toBasis.toMatrix bu.toBasis *
      bu.toBasis.toMatrix (stdOrthonormalBasis 𝕜 U).toBasis = 1 :=
    Basis.toMatrix_mul_toMatrix_flip _ _
  rw [← Matrix.det_comm' h1 h2, ← Matrix.mul_assoc, Matrix.det_mul, norm_mul]
  suffices ‖(bu.toBasis.toMatrix (stdOrthonormalBasis 𝕜 U).toBasis *
      h.some.toBasis.toMatrix ⇑bv.toBasis).det‖ = 1 by
    rw [this, one_mul]
  refine CStarRing.norm_of_mem_unitary <| Matrix.det_of_mem_unitary ?_
  rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose, Matrix.conjTranspose_mul,
    ← Matrix.mul_assoc, Matrix.mul_assoc (bu.toBasis.toMatrix (stdOrthonormalBasis 𝕜 U).toBasis)]
  simp

/--
`LinearMap.normDet` vanishes iff the map is not injective.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant8183c8b82b803237f86491702eabd1898882a80325878124992861be2430f48c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `322ac51cb5f120cd8166341a576cd6eb59cb3a63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# convexOn_ringInverse_algebraMap_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e397b1de-d630-64f6-cde0-128c0c9bae15",
  "kind": "lemma",
  "lexical_name": "convexOn_ringInverse_algebraMap_add",
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
  "slug": "convexon-ringinverse-algebramap-add--c6fa60494b4c1e93517b7b0b",
  "source": {
    "blob": "cfe50f27a155a70e52fd1d65cbbf0d8a6c24f7a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6fa60494b4c1e93517b7b0b745ebffcd0692527edf88d616560dff5cd7563e3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e397b1de-d630-64f6-cde0-128c0c9bae15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma convexOn_ringInverse_algebraMap_add {t : ℝ} (ht : 0 < t) :
    ConvexOn ℝ (Ici (0 : A)) (fun x : A => Ring.inverse (algebraMap ℝ A t + x)) := by
  have : ∀ x ∈ Ici (0 : A), IsStrictlyPositive (algebraMap ℝ A t + x) := by grind
  let addl : A →ᵃ[ℝ] A := (AffineMap.toConstProdLinearMap ℝ).symm (algebraMap ℝ A t, .id)
  have haddl : Function.Injective addl := by intro _ _; simp [addl]
  have hici : Ici (0 : A) = addl ⁻¹' addl '' Ici 0 := by
    rw [Set.preimage_image_eq _ haddl]
  simp_rw [add_comm]
  change ConvexOn ℝ (Ici 0) (Ring.inverse ∘ addl)
  rw [hici]
  apply ConvexOn.comp_affineMap
  refine ConvexOn.subset CStarAlgebra.convexOn_ringInverse ?_ (Convex.affine_image _ (convex_Ici _))
  simp only [AffineMap.toConstProdLinearMap_symm_apply, AffineMap.coe_add,
    LinearMap.coe_toAffineMap, LinearMap.id_coe, AffineMap.coe_const, Pi.add_apply, id_eq,
    Function.const_apply, image_add_right, preimage_add_const_Ici, sub_neg_eq_add, zero_add, addl]
  exact fun x hx  => IsStrictlyPositive.of_le (by grind) hx


end CStarAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe50f27a155a70e52fd1d65cbbf0d8a6c24f7a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

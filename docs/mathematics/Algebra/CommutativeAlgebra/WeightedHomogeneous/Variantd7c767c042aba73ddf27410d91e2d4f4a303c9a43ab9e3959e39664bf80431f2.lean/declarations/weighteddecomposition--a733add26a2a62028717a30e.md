# weightedDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31a2e20e6819a370f51f1451987f1565d5143a50c53dab29813f45012e5642a4",
  "kind": "def",
  "lexical_name": "weightedDecomposition",
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
  "slug": "weighteddecomposition--a733add26a2a62028717a30e",
  "source": {
    "blob": "e3e21a4c5a1d147aa02498b11cacbaf6224e7bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 619,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a733add26a2a62028717a30e22f6c990310c8668547a6048e6aa3b082105d31a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31a2e20e6819a370f51f1451987f1565d5143a50c53dab29813f45012e5642a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weightedDecomposition [DecidableEq M] :
    DirectSum.Decomposition (weightedHomogeneousSubmodule R w) where
  decompose' := decompose' R w
  left_inv φ := by
    classical
    conv_rhs => rw [← sum_weightedHomogeneousComponent w φ]
    rw [← DirectSum.sum_support_of (decompose' R w φ)]
    simp only [DirectSum.coeAddMonoidHom_of, MvPolynomial.coeff_sum, map_sum,
      finsum_eq_sum _ (weightedHomogeneousComponent_finsupp φ)]
    apply Finset.sum_congr _ (fun m _ ↦ by rw [decompose'_apply])
    ext m
    simp only [DFinsupp.mem_support_toFun, ne_eq, Set.Finite.mem_toFinset, Function.mem_support,
      not_iff_not]
    conv_lhs => rw [← Subtype.coe_inj]
    rw [decompose'_apply, Submodule.coe_zero]
  right_inv x := by
    classical
    apply DFinsupp.ext
    intro m
    rw [← Subtype.coe_inj, decompose'_apply]
    exact weightedHomogeneousComponent_directSum R w x m


/-- Given a weight, `MvPolynomial` as a graded algebra -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e21a4c5a1d147aa02498b11cacbaf6224e7bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# toSplittingField_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee059954-2b3b-6bcd-e0f4-9501a929e4cf",
  "kind": "theorem",
  "lexical_name": "toSplittingField_coeff",
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
  "slug": "tosplittingfield-coeff--bb743a35201249e8814904ce",
  "source": {
    "blob": "15fa2c7599026f625a9ecf007aadc2eaa3498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb743a35201249e8814904ceae388853533c6659918152f45acdcd802b7be5c0",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee059954-2b3b-6bcd-e0f4-9501a929e4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSplittingField_coeff {s : Finset (Monics k)} {f} (h : f ∈ s) (n) :
    toSplittingField s ((subProdXSubC f).coeff n) = 0 := by
  classical
  simp_rw [← AlgHom.coe_toRingHom, ← coeff_map, subProdXSubC, Polynomial.map_sub,
    Polynomial.map_prod, Polynomial.map_sub, map_X, map_C, toSplittingField,
    AlgHom.coe_toRingHom, MvPolynomial.aeval_X, dite_eq_left h,
    ← (finEquivRoots (Monics.splits_finsetProd h)).symm.prod_comp, Equiv.apply_symm_apply]
  rw [Finset.prod_coe_sort (f := fun x : _ × ℕ ↦ X - C x.1), (Multiset.toEnumFinset _)
    |>.prod_eq_multiset_prod, ← Function.comp_def (X - C ·) Prod.fst, ← Multiset.map_map,
    Multiset.map_toEnumFinset_fst, map_map, AlgHom.comp_algebraMap]
  conv in map _ _ => rw [Splits.eq_prod_roots (Monics.splits_finsetProd h)]
  rw [leadingCoeff_map, f.2, map_one, C_1, one_mul, sub_self, coeff_zero]

variable (k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variantb01196e9a4efd8a0cc1c26837a0212efc4e3a0798d58f7a540272728221ad45e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fa2c7599026f625a9ecf007aadc2eaa3498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

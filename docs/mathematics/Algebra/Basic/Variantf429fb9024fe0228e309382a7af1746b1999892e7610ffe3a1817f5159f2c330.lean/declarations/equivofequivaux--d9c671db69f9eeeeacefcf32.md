# equivOfEquivAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6ed93b1d0e827522542651acfab961a4155141e7029dba588967f09d2fa743c",
  "kind": "def",
  "lexical_name": "equivOfEquivAux",
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
  "slug": "equivofequivaux--d9c671db69f9eeeeacefcf32",
  "source": {
    "blob": "99397430c4ea7f16acde07d261420060dc76840d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 398,
    "path": "GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9c671db69f9eeeeacefcf32fe96dd06c1d3a0afae62f915aea16e3db2b88781",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6ed93b1d0e827522542651acfab961a4155141e7029dba588967f09d2fa743c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivOfEquivAux (hSR : S ≃+* R) :
    { e : L ≃+* M // e.toRingHom.comp (algebraMap S L) = (algebraMap R M).comp hSR.toRingHom } := by
  letI : Algebra R S := RingHom.toAlgebra hSR.symm.toRingHom
  letI : Algebra S R := RingHom.toAlgebra hSR.toRingHom
  have : IsDomain S := (FaithfulSMul.algebraMap_injective S L).isDomain _
  letI : Algebra R L := RingHom.toAlgebra ((algebraMap S L).comp (algebraMap R S))
  haveI : IsScalarTower R S L := .of_algebraMap_eq fun _ => rfl
  haveI : IsScalarTower S R L := .of_algebraMap_eq (by simp [RingHom.algebraMap_toAlgebra])
  have : FaithfulSMul R S := (faithfulSMul_iff_algebraMap_injective R S).mpr hSR.symm.injective
  have : Algebra.IsAlgebraic R L := (IsAlgClosure.isAlgebraic.extendScalars
    (show Function.Injective (algebraMap S R) from hSR.injective))
  refine ⟨equivOfAlgebraic' R S L M, ?_⟩
  ext x
  simp only [RingEquiv.toRingHom_eq_coe, Function.comp_apply, RingHom.coe_comp,
    AlgEquiv.coe_ringEquiv, RingEquiv.coe_toRingHom]
  conv_lhs => rw [← hSR.symm_apply_apply x]
  show equivOfAlgebraic' R S L M (algebraMap R L (hSR x)) = _
  rw [AlgEquiv.commutes]

/-- Algebraic closure of isomorphic fields are isomorphic -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99397430c4ea7f16acde07d261420060dc76840d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

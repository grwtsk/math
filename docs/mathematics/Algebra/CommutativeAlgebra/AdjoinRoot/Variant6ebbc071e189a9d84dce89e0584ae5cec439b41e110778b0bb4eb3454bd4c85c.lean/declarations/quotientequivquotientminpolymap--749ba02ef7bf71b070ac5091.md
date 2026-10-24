# quotientEquivQuotientMinpolyMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47f63cbbb8644454bc72e3b922be288fa8f099e027b57a52b3308eea68586bef",
  "kind": "def",
  "lexical_name": "quotientEquivQuotientMinpolyMap",
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
  "slug": "quotientequivquotientminpolymap--749ba02ef7bf71b070ac5091",
  "source": {
    "blob": "0464c1179296fc28d15f00be3f8982bf8c70a7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 917,
    "line": 897,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:749ba02ef7bf71b070ac5091d6b51a5f8f74d66b7210438af2aa54f88d9f0023",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47f63cbbb8644454bc72e3b922be288fa8f099e027b57a52b3308eea68586bef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–917.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientEquivQuotientMinpolyMap (pb : PowerBasis R S) (I : Ideal R) :
    (S ⧸ I.map (algebraMap R S)) ≃ₐ[R]
      Polynomial (R ⧸ I) ⧸
        Ideal.span ({(minpoly R pb.gen).map (Ideal.Quotient.mk I)} : Set (Polynomial (R ⧸ I))) :=
  (ofRingEquiv
        (show ∀ x,
            (Ideal.quotientEquiv _ (Ideal.map (AdjoinRoot.of (minpoly R pb.gen)) I)
                  (AdjoinRoot.equiv' (minpoly R pb.gen) pb
                        (by rw [AdjoinRoot.aeval_eq, AdjoinRoot.mk_self])
                        (minpoly.aeval _ _)).symm.toRingEquiv
                  (by rw [Ideal.map_map, AlgEquiv.toRingEquiv_eq_coe,
                      ← AlgEquiv.coe_ringHom_commutes, ← AdjoinRoot.algebraMap_eq,
                      AlgHom.comp_algebraMap]))
                (algebraMap R (S ⧸ I.map (algebraMap R S)) x) = algebraMap R _ x from fun x => by
                  rw [← Ideal.Quotient.mk_algebraMap, Ideal.quotientEquiv_apply,
                    RingHom.toFun_eq_coe, Ideal.quotientMap_mk, AlgEquiv.toRingEquiv_eq_coe,
                    RingEquiv.coe_toRingHom, AlgEquiv.coe_ringEquiv, AlgEquiv.commutes,
                    Quotient.mk_algebraMap]; rfl)).trans (AdjoinRoot.quotEquivQuotMap _ _)
#align power_basis.quotient_equiv_quotient_minpoly_map PowerBasis.quotientEquivQuotientMinpolyMap

-- This lemma should have the simp tag but this causes a lint issue.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0464c1179296fc28d15f00be3f8982bf8c70a7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

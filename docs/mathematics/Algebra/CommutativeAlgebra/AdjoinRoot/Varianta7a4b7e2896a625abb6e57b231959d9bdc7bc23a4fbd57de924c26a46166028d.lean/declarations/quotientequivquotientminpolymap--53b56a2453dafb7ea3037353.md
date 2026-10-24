# quotientEquivQuotientMinpolyMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f060517767dddc3a9d405596c90d089a80a3cefc03b1bdddf7aef9757586695",
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
  "slug": "quotientequivquotientminpolymap--53b56a2453dafb7ea3037353",
  "source": {
    "blob": "870174478a633a7310d14045a12f42991fba1dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1171,
    "line": 1152,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53b56a2453dafb7ea3037353536813cae868480fe8414147e14f1d84dc072da5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f060517767dddc3a9d405596c90d089a80a3cefc03b1bdddf7aef9757586695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1152–1171.

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
                  (by rw [Ideal.map_map,
                      ← AlgEquiv.coe_ringHom_commutes, ← AdjoinRoot.algebraMap_eq,
                      AlgHom.comp_algebraMap]))
                (algebraMap R (S ⧸ I.map (algebraMap R S)) x) = algebraMap R _ x from fun x => by
                  rw [← Ideal.Quotient.mk_algebraMap, Ideal.quotientEquiv_apply,
                    RingHom.toFun_eq_coe, Ideal.quotientMap_mk,
                    RingEquiv.coe_toRingHom, AlgEquiv.coe_ringEquiv, AlgEquiv.commutes,
                    Quotient.mk_algebraMap])).trans (AdjoinRoot.quotEquivQuotMap _ _)

-- This lemma should have the simp tag but this causes a lint issue.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Varianta7a4b7e2896a625abb6e57b231959d9bdc7bc23a4fbd57de924c26a46166028d.lean#L1152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `870174478a633a7310d14045a12f42991fba1dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

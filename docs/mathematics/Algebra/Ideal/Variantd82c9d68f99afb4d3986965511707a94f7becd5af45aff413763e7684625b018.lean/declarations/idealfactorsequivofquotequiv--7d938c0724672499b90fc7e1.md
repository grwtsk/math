# idealFactorsEquivOfQuotEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1155783a813835be222c91febe909995f4070fb5f5eef51cfed29a1de5213a15",
  "kind": "def",
  "lexical_name": "idealFactorsEquivOfQuotEquiv",
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
  "slug": "idealfactorsequivofquotequiv--7d938c0724672499b90fc7e1",
  "source": {
    "blob": "a79b324db55b900a4c86c965f46a6cfa7f456e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1075,
    "path": "GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d938c0724672499b90fc7e19e4859f4d7dac4545e2f61b8993fd54e697c245f",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1155783a813835be222c91febe909995f4070fb5f5eef51cfed29a1de5213a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1075–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idealFactorsEquivOfQuotEquiv : { p : Ideal R | p ∣ I } ≃o { p : Ideal A | p ∣ J } := by
  have f_surj : Function.Surjective (f : R ⧸ I →+* A ⧸ J) := f.surjective
  have fsym_surj : Function.Surjective (f.symm : A ⧸ J →+* R ⧸ I) := f.symm.surjective
  refine OrderIso.ofHomInv (idealFactorsFunOfQuotHom f_surj) (idealFactorsFunOfQuotHom fsym_surj)
    ?_ ?_
  · have := idealFactorsFunOfQuotHom_comp fsym_surj f_surj
    simp only [RingEquiv.comp_symm, idealFactorsFunOfQuotHom_id] at this
    rw [← this, OrderHom.coe_eq, OrderHom.coe_eq]
  · have := idealFactorsFunOfQuotHom_comp f_surj fsym_surj
    simp only [RingEquiv.symm_comp, idealFactorsFunOfQuotHom_id] at this
    rw [← this, OrderHom.coe_eq, OrderHom.coe_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean#L1075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79b324db55b900a4c86c965f46a6cfa7f456e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

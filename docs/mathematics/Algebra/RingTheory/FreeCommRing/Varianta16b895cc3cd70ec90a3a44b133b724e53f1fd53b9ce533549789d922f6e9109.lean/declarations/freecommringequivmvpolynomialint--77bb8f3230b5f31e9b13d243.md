# freeCommRingEquivMvPolynomialInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:638b35f1b456518016a94508fb5a5bd1dae2b716826c8f070d1f29d0c9474e04",
  "kind": "def",
  "lexical_name": "freeCommRingEquivMvPolynomialInt",
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
  "slug": "freecommringequivmvpolynomialint--77bb8f3230b5f31e9b13d243",
  "source": {
    "blob": "340451f07ed2935f168109878a4749b3fbc104ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 416,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77bb8f3230b5f31e9b13d2431540802f08ca1e97fd103ebe35bbfaba9319fbcb",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:638b35f1b456518016a94508fb5a5bd1dae2b716826c8f070d1f29d0c9474e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeCommRingEquivMvPolynomialInt : FreeCommRing α ≃+* MvPolynomial α ℤ :=
  RingEquiv.ofHomInv (FreeCommRing.lift <| (fun a => MvPolynomial.X a : α → MvPolynomial α ℤ))
    (MvPolynomial.eval₂Hom (Int.castRingHom (FreeCommRing α)) FreeCommRing.of)
    (by ext; simp) (by ext <;> simp)
#align free_comm_ring_equiv_mv_polynomial_int freeCommRingEquivMvPolynomialInt

/-- The free commutative ring on the empty type is isomorphic to `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `340451f07ed2935f168109878a4749b3fbc104ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

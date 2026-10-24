# AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be9903c91cd6147f9c7306bbd42dcaf4722c6a168d492a10d36034b6cdac504b",
  "kind": "def",
  "lexical_name": "AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin",
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
  "slug": "algebraicindependent-mvpolynomialoptionequivpolynomialadjoin--df53adab4f8d42f0f491f999",
  "source": {
    "blob": "f3ed4d6233f0dcbd821b2b8947f4902f5575eed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 433,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df53adab4f8d42f0f491f9997b9a21f2bbabc54478bacdf34d55dd61338ac964",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be9903c91cd6147f9c7306bbd42dcaf4722c6a168d492a10d36034b6cdac504b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin (hx : AlgebraicIndependent R x) :
    MvPolynomial (Option ι) R ≃+* Polynomial (adjoin R (Set.range x)) :=
  (MvPolynomial.optionEquivLeft _ _).toRingEquiv.trans
    (Polynomial.mapEquiv hx.aevalEquiv.toRingEquiv)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3ed4d6233f0dcbd821b2b8947f4902f5575eed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

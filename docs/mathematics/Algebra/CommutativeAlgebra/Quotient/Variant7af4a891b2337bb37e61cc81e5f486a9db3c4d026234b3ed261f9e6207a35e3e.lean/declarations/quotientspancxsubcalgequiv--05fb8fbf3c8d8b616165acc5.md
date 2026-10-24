# quotientSpanCXSubCAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a00ad528369a90912a8df21279337a17f5910c988429d1ddbf0e6139ca66ed8",
  "kind": "def",
  "lexical_name": "quotientSpanCXSubCAlgEquiv",
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
  "slug": "quotientspancxsubcalgequiv--05fb8fbf3c8d8b616165acc5",
  "source": {
    "blob": "43fd101382dcf65ec91760bd75e076fb391c3dfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05fb8fbf3c8d8b616165acc58149d2e937a30365ebee0a40af676d1fde342cc0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a00ad528369a90912a8df21279337a17f5910c988429d1ddbf0e6139ca66ed8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientSpanCXSubCAlgEquiv (x y : R) :
    (R[X] ⧸ (Ideal.span {C x, X - C y} : Ideal R[X])) ≃ₐ[R] R ⧸ (Ideal.span {x} : Ideal R) :=
  (Ideal.quotientEquivAlgOfEq R (J := _ ⊔ Ideal.span {C x}) <| by
      rw [Ideal.span_insert, sup_comm]).trans <|
    (DoubleQuot.quotQuotEquivQuotSupₐ R _ _).symm.trans <|
      (Ideal.quotientEquivAlg _ _ (quotientSpanXSubCAlgEquiv y) rfl).trans <|
        Ideal.quotientEquivAlgOfEq R <| by
          simp only [Ideal.map_span, Set.image_singleton]; congr 2; exact eval_C

/-- For a commutative ring $R$, evaluating a polynomial at elements $y(X) \in R[X]$ and $x \in R$
induces an isomorphism of $R$-algebras $R[X, Y] / \langle X - x, Y - y(X) \rangle \cong R$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43fd101382dcf65ec91760bd75e076fb391c3dfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

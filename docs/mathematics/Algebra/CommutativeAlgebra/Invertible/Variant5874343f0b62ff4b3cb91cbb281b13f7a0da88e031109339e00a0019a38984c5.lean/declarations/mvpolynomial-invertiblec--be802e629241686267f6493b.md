# MvPolynomial.invertibleC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71981e4143334445116f7f4c98a2b15069f0be9efdfdc0264a5133e40e3d025a",
  "kind": "instance",
  "lexical_name": "MvPolynomial.invertibleC",
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
  "slug": "mvpolynomial-invertiblec--be802e629241686267f6493b",
  "source": {
    "blob": "7235fa7a10a6423cb14618eb5d99983b476a280b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 19,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Invertible/Variant5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be802e629241686267f6493b28010c8de72c4422b6e0e1e1a772af64eaf3998f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Invertible/Variant5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71981e4143334445116f7f4c98a2b15069f0be9efdfdc0264a5133e40e3d025a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance MvPolynomial.invertibleC (σ : Type*) {R : Type*} [CommSemiring R] (r : R)
    [Invertible r] : Invertible (C r : MvPolynomial σ R) :=
  Invertible.map (C : R →+* MvPolynomial σ R) _

/-- A natural number that is invertible when coerced to a commutative semiring `R`
is also invertible when coerced to any polynomial ring with rational coefficients.

Short-cut for typeclass resolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Invertible/Variant5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Invertible/Variant5874343f0b62ff4b3cb91cbb281b13f7a0da88e031109339e00a0019a38984c5.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7235fa7a10a6423cb14618eb5d99983b476a280b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

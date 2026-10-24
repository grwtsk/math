# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:314c7d113723683730db2a1d9ce612098b35adcc8cb2f9467bc50c7d47009c78",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9324ac65a5c5ab0a57baae8b",
  "source": {
    "blob": "e917791cd9952f7a22b9db6c34814674e7b08ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 548,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9324ac65a5c5ab0a57baae8bc47d19a1a99e7edd9217ba6abc4e08c21e25b193",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:314c7d113723683730db2a1d9ce612098b35adcc8cb2f9467bc50c7d47009c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [SMul M X] [Monoid N] [CommRing Y] [MulSemiringAction N Y] :
    CommRing (X →ₑ[σ] Y) where

end

end MulActionHom

section DistribMulAction

variable {M : Type*} [Monoid M]
variable {N : Type*} [Monoid N]
variable {P : Type*} [Monoid P]
variable (φ : M →* N) (φ' : N →* M) (ψ : N →* P) (χ : M →* P)
variable (A : Type*) [AddMonoid A] [DistribMulAction M A]
variable (B : Type*) [AddMonoid B] [DistribMulAction N B]
variable (B₁ : Type*) [AddMonoid B₁] [DistribMulAction M B₁]
variable (C : Type*) [AddMonoid C] [DistribMulAction P C]

variable (A' : Type*) [AddGroup A'] [DistribMulAction M A']
variable (B' : Type*) [AddGroup B'] [DistribMulAction N B']

/-- Equivariant additive monoid homomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e917791cd9952f7a22b9db6c34814674e7b08ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

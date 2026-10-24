# IsSelfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e4eadd973fc4de6ca2791a9d1d2849cc729acf117a354822564b63b30c37c69",
  "kind": "def",
  "lexical_name": "IsSelfAdjoint",
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
  "slug": "isselfadjoint--b52699ffa7ff6206dc38927c",
  "source": {
    "blob": "b936a4c813ee9e5ce378488e6a7c539c4641b693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 484,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b52699ffa7ff6206dc38927c3f0271c4a1aa96578a097e54c745b14cb2a9a9a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e4eadd973fc4de6ca2791a9d1d2849cc729acf117a354822564b63b30c37c69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def IsSelfAdjoint (f : M → M) :=
  IsAdjointPair B B f f

end AddCommMonoid

section AddCommGroup

variable [CommRing R]
variable [AddCommGroup M] [Module R M] [AddCommGroup M₁] [Module R M₁]
variable [AddCommGroup M₂] [Module R M₂] (B F : M →ₗ[R] M →ₗ[R] M₂)

/-- The set of pair-self-adjoint endomorphisms are a submodule of the type of all endomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b936a4c813ee9e5ce378488e6a7c539c4641b693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

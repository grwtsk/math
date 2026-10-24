# mapAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83899d6f46e91ebced57a2592e123787ae33af8cbf85f942cd47ee736dcbdc8c",
  "kind": "def",
  "lexical_name": "mapAlgEquiv",
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
  "slug": "mapalgequiv--9726f1c4b887a56ea77c8c28",
  "source": {
    "blob": "4e0c609a872b2a2bb5626ba04386d7e3f98ef8b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 137,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9726f1c4b887a56ea77c8c285682a1e75c4aa5f8bbbe29c1ca1100246b1f6ad2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83899d6f46e91ebced57a2592e123787ae33af8cbf85f942cd47ee736dcbdc8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAlgEquiv (e : A₁ ≃ₐ[R] A₂) : MvPolynomial σ A₁ ≃ₐ[R] MvPolynomial σ A₂ :=
  { mapAlgHom (e : A₁ →ₐ[R] A₂), mapEquiv σ (e : A₁ ≃+* A₂) with toFun := map (e : A₁ →+* A₂) }
#align mv_polynomial.map_alg_equiv MvPolynomial.mapAlgEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0c609a872b2a2bb5626ba04386d7e3f98ef8b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

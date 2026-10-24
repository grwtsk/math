# ofStarAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c29465f37b93817caad5aada2259a33d8b0c2acd8aae6debd74c1e2a8c5466",
  "kind": "def",
  "lexical_name": "ofStarAlgHom",
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
  "slug": "ofstaralghom--363a981b5ba90344b38d27a1",
  "source": {
    "blob": "24e32e54040cb901ba28cc014c0d2cb96cd8801f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 987,
    "line": 975,
    "path": "GRWTSK/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:363a981b5ba90344b38d27a1e9d73c5ae6a6e2c52ffd2f2125ff0ba5a4e854ed",
  "verification": {
    "reference": "docs/verification/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c29465f37b93817caad5aada2259a33d8b0c2acd8aae6debd74c1e2a8c5466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–987.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofStarAlgHom (f : F) (g : G) (h₁ : ∀ x, g (f x) = x) (h₂ : ∀ x, f (g x) = x) : A ≃⋆ₐ[R] B
    where
  toFun := f
  invFun := g
  left_inv := h₁
  right_inv := h₂
  map_add' := map_add f
  map_mul' := map_mul f
  map_smul' := map_smul f
  map_star' := map_star f
#align star_alg_equiv.of_star_alg_hom StarAlgEquiv.ofStarAlgHom

/-- Promote a bijective star algebra homomorphism to a star algebra equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e32e54040cb901ba28cc014c0d2cb96cd8801f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# appLE_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad1ccf97-6248-ff34-5c86-281a9f0ecc24",
  "kind": "lemma",
  "lexical_name": "appLE_congr",
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
  "slug": "apple-congr--3cbf44dbd4e57588796628fa",
  "source": {
    "blob": "28a8477ec14111170a566fd8e0b59db66b55fefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 188,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cbf44dbd4e57588796628fa80b252f7b0dcbff938aa5e84c770f005fef9c345",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad1ccf97-6248-ff34-5c86-281a9f0ecc24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma appLE_congr (e : V ≤ f ⁻¹ᵁ U) (e₁ : U = U') (e₂ : V = V')
    (P : ∀ {R S : CommRingCat.{u}} (_ : R ⟶ S), Prop) :
    P (f.appLE U V e) ↔ P (f.appLE U' V' (e₁ ▸ e₂ ▸ e)) := by
  subst e₁; subst e₂; rfl

/-- A morphism of schemes `f : X ⟶ Y` induces a local ring homomorphism from
`Y.presheaf.stalk (f x)` to `X.presheaf.stalk x` for any `x : X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a8477ec14111170a566fd8e0b59db66b55fefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

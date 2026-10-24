# mulEquivSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e871ebecdf88ce2adea02091515607a6a16010ca1f8ce7d8898d50cc89dd294",
  "kind": "def",
  "lexical_name": "mulEquivSubgroup",
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
  "slug": "mulequivsubgroup--35c082912c2e25090b8e6613",
  "source": {
    "blob": "6eee6b88295a2404cc78250bccb8979a79ca1821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 245,
    "path": "GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35c082912c2e25090b8e6613854fb5b25c67fa448043e32d0a71aebe7fe66156",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e871ebecdf88ce2adea02091515607a6a16010ca1f8ce7d8898d50cc89dd294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mulEquivSubgroup {H K : Subgroup G} [H.Normal] (h : H.IsComplement' K) :
    H ⋊[(H.normalizerMonoidHom).comp (inclusion (H.normalizer_eq_top ▸ le_top))] K ≃* G :=
  MulEquiv.ofBijective (monoidHomSubgroup _) ((equivProd.bijective_comp _).mpr h)

end lift

section Map

variable {N₁ G₁ N₂ G₂ : Type*} [Group N₁] [Group G₁] [Group N₂] [Group G₂]
  {φ₁ : G₁ →* MulAut N₁} {φ₂ : G₂ →* MulAut N₂}
  (fn : N₁ →* N₂) (fg : G₁ →* G₂)
  (h : ∀ g : G₁, fn.comp (φ₁ g).toMonoidHom = (φ₂ (fg g)).toMonoidHom.comp fn)

/-- Define a map from `N₁ ⋊[φ₁] G₁` to `N₂ ⋊[φ₂] G₂` given maps `N₁ →* N₂` and `G₁ →* G₂` that
  satisfy a commutativity condition `∀ n g, fn (φ₁ g n) = φ₂ (fg g) (fn n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eee6b88295a2404cc78250bccb8979a79ca1821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

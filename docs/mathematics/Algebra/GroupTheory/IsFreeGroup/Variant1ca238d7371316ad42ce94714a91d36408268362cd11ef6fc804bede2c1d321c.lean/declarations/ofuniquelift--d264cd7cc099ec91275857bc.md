# ofUniqueLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:702deffc2640d211207335b497aaa5bcbfb7efff8aaaa0a0828ad176c0a73a02",
  "kind": "def",
  "lexical_name": "ofUniqueLift",
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
  "slug": "ofuniquelift--d264cd7cc099ec91275857bc",
  "source": {
    "blob": "1f817fc47ec7ed9c6dd2d87041bd101da8e7404c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 161,
    "path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d264cd7cc099ec91275857bccb4999843c338c9da0f0aae25ddc8652cb3d1977",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:702deffc2640d211207335b497aaa5bcbfb7efff8aaaa0a0828ad176c0a73a02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofUniqueLift {G : Type u} [Group G] (X : Type u) (of : X → G)
    (h : ∀ {H : Type u} [Group H] (f : X → H), ∃! F : G →* H, ∀ a, F (of a) = f a) :
    FreeGroupBasis X G :=
  let lift {H : Type u} [Group H] : (X → H) ≃ (G →* H) :=
    { toFun := fun f => Classical.choose (h f)
      invFun := fun F => F ∘ of
      left_inv := fun f => funext (Classical.choose_spec (h f)).left
      right_inv := fun F => ((Classical.choose_spec (h (F ∘ of))).right F fun _ => rfl).symm }
  let lift_of {H : Type u} [Group H] (f : X → H) (a : X) : lift f (of a) = f a :=
    congr_fun (lift.symm_apply_apply f) a
  ofLift X of @lift @lift_of

end FreeGroupBasis

namespace IsFreeGroup

variable (G : Type*) [Group G] [IsFreeGroup G]

/-- A set of generators of a free group, chosen arbitrarily -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant1ca238d7371316ad42ce94714a91d36408268362cd11ef6fc804bede2c1d321c.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f817fc47ec7ed9c6dd2d87041bd101da8e7404c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# IsWeakLimit.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:858bdc56322a9ca52d7181696f83b5c8bc2d7be191bee371ee3f4829ba8eef42",
  "kind": "def",
  "lexical_name": "IsWeakLimit.mk",
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
  "slug": "isweaklimit-mk--b1eb9071bc1179fdab3f843f",
  "source": {
    "blob": "3069b29544772d9848dee8bd11ba253ae8928d0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1eb9071bc1179fdab3f843f4bca8cbd13bd9cde346dc7d9f17d156f6269a3bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:858bdc56322a9ca52d7181696f83b5c8bc2d7be191bee371ee3f4829ba8eef42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsWeakLimit.mk {W : C} {fst : W ⟶ X} {snd : W ⟶ Y} (eq : fst ≫ f = snd ≫ g)
    (lift : ∀ s : PullbackCone f g, s.pt ⟶ W)
    (fac_left : ∀ s : PullbackCone f g, lift s ≫ fst = s.fst)
    (fac_right : ∀ s : PullbackCone f g, lift s ≫ snd = s.snd) :
    IsWeakLimit (PullbackCone.mk fst snd eq) :=
  isWeakLimitAux _ lift fac_left fac_right

/-- If `t` is a weak limit pullback cone over `f` and `g` and `h : W ⟶ X` and `k : W ⟶ Y` are such
that `h ≫ f = k ≫ g`, then we get `l : W ⟶ t.pt`, which satisfies `l ≫ fst t = h`
and `l ≫ snd t = k`, see `IsWeakLimit.lift_fst` and `IsWeakLimit.lift_snd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3069b29544772d9848dee8bd11ba253ae8928d0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

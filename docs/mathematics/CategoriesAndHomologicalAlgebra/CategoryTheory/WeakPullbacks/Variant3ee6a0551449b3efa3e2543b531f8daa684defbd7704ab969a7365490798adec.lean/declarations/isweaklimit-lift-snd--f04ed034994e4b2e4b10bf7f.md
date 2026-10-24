# IsWeakLimit.lift_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16c22766-5421-08fa-7c7c-8136663a78f8",
  "kind": "lemma",
  "lexical_name": "IsWeakLimit.lift_snd",
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
  "slug": "isweaklimit-lift-snd--f04ed034994e4b2e4b10bf7f",
  "source": {
    "blob": "a3067cfc8db96867e1608d6a1268aab5c9a9f17e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f04ed034994e4b2e4b10bf7fcebd151ad53698ff1a58df933aced456f7ed41ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16c22766-5421-08fa-7c7c-8136663a78f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsWeakLimit.lift_snd {t : PullbackCone f g} (ht : IsWeakLimit t) {W : C} (h : W ⟶ X)
    (k : W ⟶ Y) (w : h ≫ f = k ≫ g) : IsWeakLimit.lift ht h k w ≫ PullbackCone.snd t = k :=
  ht.fac _ _

/-- If `t` is a weak limit pullback cone over `f` and `g` and `h : W ⟶ X` and `k : W ⟶ Y` are such
that `h ≫ f = k ≫ g`, then we have `l : W ⟶ t.pt` satisfying `l ≫ fst t = h` and `l ≫ snd t = k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3067cfc8db96867e1608d6a1268aab5c9a9f17e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

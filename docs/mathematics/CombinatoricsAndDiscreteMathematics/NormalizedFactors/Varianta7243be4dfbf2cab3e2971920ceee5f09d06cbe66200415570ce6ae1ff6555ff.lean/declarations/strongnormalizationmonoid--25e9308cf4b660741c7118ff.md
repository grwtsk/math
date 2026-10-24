# strongNormalizationMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82fc523953fc219076f22edb64ffa6de2d20238b8d1d49e28f139677d4661878",
  "kind": "def",
  "lexical_name": "strongNormalizationMonoid",
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
  "slug": "strongnormalizationmonoid--25e9308cf4b660741c7118ff",
  "source": {
    "blob": "70ece8047033f2c6116dbfa2da7fb1d9cef78940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 379,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25e9308cf4b660741c7118ffb310238b17c33b7de9a2124b54a57f1c0dcd6cd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82fc523953fc219076f22edb64ffa6de2d20238b8d1d49e28f139677d4661878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def strongNormalizationMonoid : StrongNormalizationMonoid α :=
  strongNormalizationMonoidOfMonoidHomRightInverse
    { toFun := fun a : Associates α =>
        if a = 0 then 0
        else
          ((normalizedFactors a).map
              (Classical.choose mk_surjective.hasRightInverse : Associates α → α)).prod
      map_one' := by nontriviality α; simp
      map_mul' := fun x y => by
        by_cases hx : x = 0
        · simp [hx]
        by_cases hy : y = 0
        · simp [hy]
        simp [hx, hy] }
    (by
      intro x
      dsimp
      by_cases hx : x = 0
      · simp [hx]
      have h : Associates.mkMonoidHom ∘ Classical.choose mk_surjective.hasRightInverse =
          (id : Associates α → Associates α) := by
        ext x
        rw [Function.comp_apply, mkMonoidHom_apply,
          Classical.choose_spec mk_surjective.hasRightInverse x]
        rfl
      rw [ite_eq_right hx, ← mkMonoidHom_apply, MonoidHom.map_multiset_prod, map_map, h, map_id, ←
        associated_iff_eq]
      apply prod_normalizedFactors hx)

@[deprecated (since := "2026-07-08")]
protected alias normalizationMonoid := UniqueFactorizationMonoid.strongNormalizationMonoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70ece8047033f2c6116dbfa2da7fb1d9cef78940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

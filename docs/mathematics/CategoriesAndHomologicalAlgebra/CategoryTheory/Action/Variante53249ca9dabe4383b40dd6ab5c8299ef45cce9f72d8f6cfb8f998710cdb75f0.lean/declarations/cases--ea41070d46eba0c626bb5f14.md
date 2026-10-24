# cases'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "125b9f587029c6c264ffbc877119749d2efc63c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2d44788-4c38-1bf0-e7c3-d1184ca4aec8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b61702ce-1323-7799-bc7c-3e0ee8954d47",
  "kind": "lemma",
  "lexical_name": "cases'",
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
  "slug": "cases--ea41070d46eba0c626bb5f14",
  "source": {
    "blob": "125b9f587029c6c264ffbc877119749d2efc63c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea41070d46eba0c626bb5f14dda7376191a63d0fa80930b588ee95869d306b7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b61702ce-1323-7799-bc7c-3e0ee8954d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cases' ⦃a' b' : ActionCategory G X⦄ (f : a' ⟶ b') :
    ∃ (a b : X) (g : G) (ha : a' = a) (hb : b' = b) (hg : a = g⁻¹ • b),
      f = eqToHom (by rw [ha, hg]) ≫ homOfPair b g ≫ eqToHom (by rw [hb]) := by
  revert a' b' f
  exact ActionCategory.cases (fun t g => ⟨g⁻¹ • t, t, g, rfl, rfl, rfl, by simp⟩)

variable {H : Type*} [Group H]

/-- Given `G` acting on `X`, a functor from the corresponding action groupoid to a group `H`
    can be curried to a group homomorphism `G →* (X → H) ⋊ G`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125b9f587029c6c264ffbc877119749d2efc63c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

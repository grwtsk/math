# IsPullback.hasLiftingProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81d7efc96fac599fc608074237dc925d650678a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2db07c99-3b4a-c7fd-2c26-c7d34a0ba7e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f69d8404-482a-ed50-77d0-06d628cfb5a5",
  "kind": "lemma",
  "lexical_name": "IsPullback.hasLiftingProperty",
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
  "slug": "ispullback-hasliftingproperty--d3de5f86293460b57b9dd365",
  "source": {
    "blob": "81d7efc96fac599fc608074237dc925d650678a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3de5f86293460b57b9dd365fa06c75ef09300195a7569347259cb2c11f21ae3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f69d8404-482a-ed50-77d0-06d628cfb5a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPullback.hasLiftingProperty (h : IsPullback s f g t)
    {X' Y' : C} (f' : X' ⟶ Y') [HasLiftingProperty f' g] : HasLiftingProperty f' f where
  sq_hasLift := fun {u v} sq ↦ by
    have w : (u ≫ s) ≫ g = f' ≫ v ≫ t := by
      rw [Category.assoc, h.toCommSq.w, ← Category.assoc, ← Category.assoc, sq.w]
    exact ⟨h.lift (CommSq.mk w).lift v (by rw [CommSq.fac_right]),
      h.hom_ext (by rw [Category.assoc, h.lift_fst, CommSq.fac_left])
        (by rw [Category.assoc, h.lift_snd, sq.w]), h.lift_snd _ _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81d7efc96fac599fc608074237dc925d650678a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

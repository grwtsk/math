# exists_of_mono_not_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e14e68f-c4f5-98d7-00f5-7d21750a2442",
  "kind": "lemma",
  "lexical_name": "exists_of_mono_not_isIso",
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
  "slug": "exists-of-mono-not-isiso--9b4649b0661c557f9565017e",
  "source": {
    "blob": "52f9efeededcaba39511281e13d960303c303fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b4649b0661c557f9565017e3a2f7e67d512645b1456a1f77b3543ee4d5f1b3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e14e68f-c4f5-98d7-00f5-7d21750a2442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_of_mono_not_isIso {X Y : C} (i : X ⟶ Y) [Mono i] (hi : ¬ IsIso i) :
    ∃ (G : C) (_ : P G) (g : G ⟶ Y), ∀ (f : G ⟶ X), f ≫ i ≠ g := by
  by_contra!
  exact hi (hP.isIso_of_mono i this)

end

end IsStrongGenerator

namespace IsStrongGenerator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52f9efeededcaba39511281e13d960303c303fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# map_fourδ₁Toδ₀_EMap_fourδ₄Toδ₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0af9cd72-6441-309d-59d0-b67414fee16e",
  "kind": "lemma",
  "lexical_name": "map_fourδ₁Toδ₀_EMap_fourδ₄Toδ₃",
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
  "slug": "map-four-to-emap-four-to--d6a42ea26be335ac91bac81e",
  "source": {
    "blob": "fe2152392acdda710d192a7e8d1c4e96820ea0fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6a42ea26be335ac91bac81e7f1d9b160c2c907596aaad641c13e1485b029c11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0af9cd72-6441-309d-59d0-b67414fee16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_fourδ₁Toδ₀_EMap_fourδ₄Toδ₃
    (hn₂ : n₁ + 1 = n₂ := by lia) (hn₃ : n₂ + 1 = n₃ := by lia) :
    X.map f₂₃ f₄ f₅ f₃ f₄ f₅ (fourδ₁Toδ₀ f₂ f₃ f₄ f₅ f₂₃) n₁ n₂ n₃ ≫
      X.map f₃ f₄ f₅ f₃ f₄ f₅₆ (fourδ₄Toδ₃ f₃ f₄ f₅ f₆ f₅₆) n₁ n₂ n₃ =
    X.map f₂₃ f₄ f₅ f₂₃ f₄ f₅₆ (fourδ₄Toδ₃ f₂₃ f₄ f₅ f₆ f₅₆) n₁ n₂ n₃ ≫
      X.map f₂₃ f₄ f₅₆ f₃ f₄ f₅₆ (fourδ₁Toδ₀ f₂ f₃ f₄ f₅₆ f₂₃) n₁ n₂ n₃ := by
  simp only [← map_comp]
  cat_disch

set_option backward.isDefEq.respectTransparency false in
/-- The homology data of the short complex
`E^{n-1}(f₅, f₆, f₇) ⟶ E^{n}(f₃, f₄, f₅) ⟶ E^{n+1}(f₁, f₂, f₃)` for which
* the cycles are `E^n(f₂ ≫ f₃, f₄, f₅)`;
* the opcycles are `E^n(f₃, f₄, f₅ ≫ f₆)`;
* the homology is `E^n(f₂ ≫ f₃, f₄, f₅ ≫ f₆)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Varianta390605aa1dedaffcb24bc86e1a61a631e32f5e95ec24a1939be19add372d2df.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2152392acdda710d192a7e8d1c4e96820ea0fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

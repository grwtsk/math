# zero_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cedf7fb-8ff7-00a0-7c68-609dae229efe",
  "kind": "theorem",
  "lexical_name": "zero_left",
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
  "slug": "zero-left--052676e274e9abdc87a8e84c",
  "source": {
    "blob": "d4b9fe6fd8d06022d38ced6dcefae7f5490c3836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 477,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052676e274e9abdc87a8e84c0dd74f13c7adf7ba70a97ae8cebec3980ca54f0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cedf7fb-8ff7-00a0-7c68-609dae229efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_left (X : C) : IsPullback (0 : 0 ⟶ X) (0 : (0 : C) ⟶ 0) (𝟙 X) (0 : 0 ⟶ X) :=
  { w := by simp
    isLimit' :=
      ⟨{  lift := fun s => 0
          fac := fun s => by
            simpa using
              @PullbackCone.equalizer_ext _ _ _ _ _ _ _ s _ 0 (𝟙 _)
                (by simpa using (PullbackCone.condition s).symm) }⟩ }
#align category_theory.is_pullback.zero_left CategoryTheory.IsPullback.zero_left

/-- The square with `0 : 0 ⟶ 0` on the top and `𝟙 X` on the bottom is a pullback square. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant9429e77bf49e665faff465101a0baa058e33cc01b39c29465313270830d3d280.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b9fe6fd8d06022d38ced6dcefae7f5490c3836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

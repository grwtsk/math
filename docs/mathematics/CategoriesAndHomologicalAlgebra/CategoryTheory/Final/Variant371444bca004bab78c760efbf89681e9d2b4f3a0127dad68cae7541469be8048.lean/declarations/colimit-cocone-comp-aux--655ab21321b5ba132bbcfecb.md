# colimit_cocone_comp_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dabbc015-ed14-b4c0-34a1-834b9ce01fc7",
  "kind": "theorem",
  "lexical_name": "colimit_cocone_comp_aux",
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
  "slug": "colimit-cocone-comp-aux--655ab21321b5ba132bbcfecb",
  "source": {
    "blob": "eed7d9593346333a8b1ea74b3ef71e50fd587595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 264,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant371444bca004bab78c760efbf89681e9d2b4f3a0127dad68cae7541469be8048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:655ab21321b5ba132bbcfecba7ec7d1c3c00f9528818cda0e94ef9fa3d079cba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant371444bca004bab78c760efbf89681e9d2b4f3a0127dad68cae7541469be8048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dabbc015-ed14-b4c0-34a1-834b9ce01fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimit_cocone_comp_aux (s : Cocone (F ⋙ G)) (j : C) :
    G.map (homToLift F (F.obj j)) ≫ s.ι.app (lift F (F.obj j)) = s.ι.app j := by
  -- This point is that this would be true if we took `lift (F.obj j)` to just be `j`
  -- and `homToLift (F.obj j)` to be `𝟙 (F.obj j)`.
  apply induction F fun X k => G.map k ≫ s.ι.app X = (s.ι.app j : _)
  · intro j₁ j₂ k₁ k₂ f w h
    rw [← w]
    rw [← s.w f] at h
    simpa using h
  · intro j₁ j₂ k₁ k₂ f w h
    rw [← w] at h
    rw [← s.w f]
    simpa using h
  · exact s.w (𝟙 _)
#align category_theory.functor.final.colimit_cocone_comp_aux CategoryTheory.Functor.Final.colimit_cocone_comp_aux

variable (F G)

/-- If `F` is cofinal,
the category of cocones on `F ⋙ G` is equivalent to the category of cocones on `G`,
for any `G : D ⥤ E`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant371444bca004bab78c760efbf89681e9d2b4f3a0127dad68cae7541469be8048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant371444bca004bab78c760efbf89681e9d2b4f3a0127dad68cae7541469be8048.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed7d9593346333a8b1ea74b3ef71e50fd587595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

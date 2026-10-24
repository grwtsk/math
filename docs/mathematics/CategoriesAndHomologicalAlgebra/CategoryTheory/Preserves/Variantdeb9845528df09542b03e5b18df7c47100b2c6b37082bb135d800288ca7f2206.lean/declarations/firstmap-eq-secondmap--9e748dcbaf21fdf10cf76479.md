# firstMap_eq_secondMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35605683ea7f8669a00afdff76e130eed4585360",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/deb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbdcf5ce-86a1-2328-4de8-034bc8bfedb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:196279a8-3ff2-ec1f-a1ce-ff9070ae8ee5",
  "kind": "theorem",
  "lexical_name": "firstMap_eq_secondMap",
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
  "slug": "firstmap-eq-secondmap--9e748dcbaf21fdf10cf76479",
  "source": {
    "blob": "35605683ea7f8669a00afdff76e130eed4585360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e748dcbaf21fdf10cf76479566176a366c2901f51f1602587d059fb337c0ebd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:196279a8-3ff2-ec1f-a1ce-ff9070ae8ee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstMap_eq_secondMap :
    Equalizer.Presieve.Arrows.firstMap F X c.inj =
    Equalizer.Presieve.Arrows.secondMap F X c.inj := by
  ext a ⟨i, j⟩
  simp only [Equalizer.Presieve.Arrows.firstMap, Types.pi_lift_π_apply, types_comp_apply,
    Equalizer.Presieve.Arrows.secondMap]
  by_cases hi : i = j
  · rw [hi, Mono.right_cancellation _ _ pullback.condition]
  · have := preservesTerminal_of_isSheaf_for_empty F hF hI
    apply_fun (F.mapIso ((hd hi).isoPullback).op ≪≫ F.mapIso (terminalIsoIsTerminal
      (terminalOpOfInitial initialIsInitial)).symm ≪≫ (PreservesTerminal.iso F)).hom using
      injective_of_mono _
    ext ⟨i⟩
    exact i.elim

include hc hd hF hI in
/--
If `F` is a presheaf which `IsSheafFor` a presieve of arrows and the empty presieve, then it
preserves the product corresponding to the presieve of arrows.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35605683ea7f8669a00afdff76e130eed4585360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

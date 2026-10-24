# isFlasque_skyscraperSheaf_of_epi_from

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57696528-00fa-7ccd-de97-86ae8bc3d17b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d535e0ba-454d-fa47-3ae0-c98b56ccd143",
  "kind": "theorem",
  "lexical_name": "isFlasque_skyscraperSheaf_of_epi_from",
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
  "slug": "isflasque-skyscrapersheaf-of-epi-from--afe935786c77bc1ee4f6ec89",
  "source": {
    "blob": "47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afe935786c77bc1ee4f6ec8984dc1f262d33ace594c842db0d4686db0e3ca6af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d535e0ba-454d-fa47-3ae0-c98b56ccd143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFlasque_skyscraperSheaf_of_epi_from {X : TopCat} (p₀ : ↑X)
    [(U : Opens ↑X) → Decidable (p₀ ∈ U)] {C : Type*} [Category* C] (A : C) [HasTerminal C]
    [Epi <| terminalIsTerminal.from A] :
    (skyscraperSheaf p₀ A).IsFlasque where
  epi {U V} r := by
    by_cases h1 : p₀ ∈ unop U
    · by_cases h2 : p₀ ∈ unop V
      · simp_all only [skyscraperSheaf_obj_obj, skyscraperSheaf_obj_map, ↓reduceDIte]
        infer_instance
      · simp
        grind
    · have h2 : p₀ ∉ unop V := fun hV => h1 (r.unop.le hV)
      have := isIso_of_isTerminal (isTerminalSkyscraperSheafObjObjOfNotMem h1)
        (isTerminalSkyscraperSheafObjObjOfNotMem h2) ((skyscraperSheaf p₀ A).obj.map r)
      infer_instance

/--
If the target category has a zero object, then any skyscraper sheaf valued in this category is a
flasque sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

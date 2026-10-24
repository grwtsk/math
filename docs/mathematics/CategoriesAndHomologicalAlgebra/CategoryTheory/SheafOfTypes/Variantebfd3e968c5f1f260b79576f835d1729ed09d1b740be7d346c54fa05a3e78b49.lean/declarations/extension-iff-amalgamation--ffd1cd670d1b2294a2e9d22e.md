# extension_iff_amalgamation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f92e73-8117-a4ff-c519-75be95d375d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0175c586-f985-c065-5375-d28cd6a683ef",
  "kind": "theorem",
  "lexical_name": "extension_iff_amalgamation",
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
  "slug": "extension-iff-amalgamation--ffd1cd670d1b2294a2e9d22e",
  "source": {
    "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 499,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd1cd670d1b2294a2e9d22e575afd56bccec0e73aac9ae8e071a36a33c62f88",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0175c586-f985-c065-5375-d28cd6a683ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extension_iff_amalgamation {P : Cᵒᵖ ⥤ Type v₁} (x : S.functor ⟶ P) (g : yoneda.obj X ⟶ P) :
    S.functorInclusion ≫ g = x ↔
      (natTransEquivCompatibleFamily x).1.IsAmalgamation (yonedaEquiv g) := by
  change _ ↔ ∀ ⦃Y : C⦄ (f : Y ⟶ X) (h : S f), P.map f.op (yonedaEquiv g) = x.app (op Y) ⟨f, h⟩
  constructor
  · rintro rfl Y f hf
    rw [yonedaEquiv_naturality]
    dsimp
    simp
  -- See note [dsimp, simp].
  · intro h
    ext Y ⟨f, hf⟩
    convert h f hf
    rw [yonedaEquiv_naturality]
    simp [yonedaEquiv]
#align category_theory.presieve.extension_iff_amalgamation CategoryTheory.Presieve.extension_iff_amalgamation

/-- The yoneda version of the sheaf condition is equivalent to the sheaf condition.

C2.1.4 of [Elephant].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c974151d5bc1b2d9b9e8deaf62a471c7cf45100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

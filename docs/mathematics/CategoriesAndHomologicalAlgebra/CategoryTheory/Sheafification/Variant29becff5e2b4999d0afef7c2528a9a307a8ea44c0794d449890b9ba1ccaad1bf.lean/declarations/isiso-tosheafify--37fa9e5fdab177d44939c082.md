# isIso_toSheafify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ffda7c3-72dc-2542-30d0-4f01b2e5fdaa",
  "kind": "theorem",
  "lexical_name": "isIso_toSheafify",
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
  "slug": "isiso-tosheafify--37fa9e5fdab177d44939c082",
  "source": {
    "blob": "b9c5ac5731d77d7da3562ef67dbb9644b05bdc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37fa9e5fdab177d44939c0824dc7ff2c7db9411db4cbbb7928dc19139c00ceb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ffda7c3-72dc-2542-30d0-4f01b2e5fdaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_toSheafify {P : Cᵒᵖ ⥤ D} (hP : Presheaf.IsSheaf J P) : IsIso (toSheafify J P) := by
  refine ⟨(sheafificationAdjunction J D |>.counit.app ⟨P, hP⟩).val, ?_, ?_⟩
  · change _ = (𝟙 (sheafToPresheaf J D ⋙ 𝟭 (Cᵒᵖ ⥤ D)) :).app ⟨P, hP⟩
    rw [← sheafificationAdjunction J D |>.right_triangle]
    rfl
  · change (sheafToPresheaf _ _).map _ ≫ _ = _
    change _ ≫ (sheafificationAdjunction J D).unit.app ((sheafToPresheaf J D).obj ⟨P, hP⟩) = _
    rw [← (sheafificationAdjunction J D).inv_counit_map (X := ⟨P, hP⟩)]
    simp

/-- If `P` is a sheaf, then `P` is isomorphic to `sheafify J P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9c5ac5731d77d7da3562ef67dbb9644b05bdc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

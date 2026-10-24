# isCodetector_iff_reflectsIsomorphisms_yoneda_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a94e7bcf-536f-c5d0-25d7-0e27e05b2b42",
  "kind": "theorem",
  "lexical_name": "isCodetector_iff_reflectsIsomorphisms_yoneda_obj",
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
  "slug": "iscodetector-iff-reflectsisomorphisms-yoneda-obj--a3ca0db0f3747198d94e8925",
  "source": {
    "blob": "e352185595d86cce5376f172b48654f94331ec35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 630,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ca0db0f3747198d94e892539d2d699c69c44bdeca15fa75b69ad0a4650c54a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a94e7bcf-536f-c5d0-25d7-0e27e05b2b42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCodetector_iff_reflectsIsomorphisms_yoneda_obj (G : C) :
    IsCodetector G ↔ (yoneda.obj G).ReflectsIsomorphisms := by
  refine ⟨fun hG => ⟨fun f hf => ?_⟩, fun h => (isCodetector_def _).2 fun X Y f hf => ?_⟩
  · refine (isIso_unop_iff _).1 (hG.def _ ?_)
    rwa [isIso_iff_bijective, Function.bijective_iff_existsUnique] at hf
  · rw [← isIso_op_iff]
    suffices IsIso ((yoneda.obj G).map f.op) by
      exact @isIso_of_reflects_iso _ _ _ _ _ _ _ (yoneda.obj G) _ h
    rwa [isIso_iff_bijective, Function.bijective_iff_existsUnique]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6e6a1c88858ba711e18aa0800a43d37f21ba74c18328ed56135b2352dcca55bd.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e352185595d86cce5376f172b48654f94331ec35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

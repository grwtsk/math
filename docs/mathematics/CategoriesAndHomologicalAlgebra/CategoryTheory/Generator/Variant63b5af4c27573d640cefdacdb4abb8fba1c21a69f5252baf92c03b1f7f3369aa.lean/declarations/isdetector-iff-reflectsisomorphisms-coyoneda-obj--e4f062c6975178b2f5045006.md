# isDetector_iff_reflectsIsomorphisms_coyoneda_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee3ac7b4-260b-9bbc-8bd8-7949071d2223",
  "kind": "theorem",
  "lexical_name": "isDetector_iff_reflectsIsomorphisms_coyoneda_obj",
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
  "slug": "isdetector-iff-reflectsisomorphisms-coyoneda-obj--e4f062c6975178b2f5045006",
  "source": {
    "blob": "514fda0a493b8817781bf2258b55d4d977a84098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 635,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4f062c6975178b2f5045006e7d460f400fb4d41c82d0b04a84a896e466930af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee3ac7b4-260b-9bbc-8bd8-7949071d2223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDetector_iff_reflectsIsomorphisms_coyoneda_obj (G : C) :
    IsDetector G ↔ ReflectsIsomorphisms (coyoneda.obj (op G)) := by
  refine'
    ⟨fun hG => ⟨fun f hf => hG.def _ fun h => _⟩, fun h =>
      (isDetector_def _).2 fun X Y f hf => _⟩
  · rw [isIso_iff_bijective, Function.bijective_iff_existsUnique] at hf
    exact hf h
  · suffices IsIso ((coyoneda.obj (op G)).map f) by
      exact @isIso_of_reflects_iso _ _ _ _ _ _ _ (coyoneda.obj (op G)) _ h
    rwa [isIso_iff_bijective, Function.bijective_iff_existsUnique]
#align category_theory.is_detector_iff_reflects_isomorphisms_coyoneda_obj CategoryTheory.isDetector_iff_reflectsIsomorphisms_coyoneda_obj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `514fda0a493b8817781bf2258b55d4d977a84098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

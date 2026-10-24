# isDetector_iff_reflectsIsomorphisms_coyoneda_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e46cc08-27f9-ef60-09fe-dac1d51cc1e6",
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
  "slug": "isdetector-iff-reflectsisomorphisms-coyoneda-obj--41fec8a03045d91ed6aa78f1",
  "source": {
    "blob": "cfb9ce0dbb604e21f777704c1f7761eeba7f2ee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 811,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41fec8a03045d91ed6aa78f1e1d17c8cfa7d7ea026ce367065a122902bb2079a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e46cc08-27f9-ef60-09fe-dac1d51cc1e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDetector_iff_reflectsIsomorphisms_coyoneda_obj (G : C) :
    IsDetector G ↔ (coyoneda.obj (op G)).ReflectsIsomorphisms := by
  refine
    ⟨fun hG => ⟨fun f hf => hG.def _ fun h => ?_⟩, fun h =>
      (isDetector_def _).2 fun X Y f hf => ?_⟩
  · rw [isIso_iff_bijective, Function.bijective_iff_existsUnique] at hf
    exact hf h
  · suffices IsIso ((coyoneda.obj (op G)).map f) by
      exact @isIso_of_reflects_iso _ _ _ _ _ _ _ (coyoneda.obj (op G)) _ h
    rwa [isIso_iff_bijective, Function.bijective_iff_existsUnique]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb9ce0dbb604e21f777704c1f7761eeba7f2ee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

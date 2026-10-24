# isIso_of_epi_of_isIso_of_isIso_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88573f50-6214-2236-7e14-99bc0e7be14c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:127110eb-cdec-5547-77ba-1e3dbcc5b772",
  "kind": "theorem",
  "lexical_name": "isIso_of_epi_of_isIso_of_isIso_of_mono",
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
  "slug": "isiso-of-epi-of-isiso-of-isiso-of-mono--533e739f33614c642ac10e35",
  "source": {
    "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:533e739f33614c642ac10e355fedb70e1c0e50a484605407de5f63c853a0dd66",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127110eb-cdec-5547-77ba-1e3dbcc5b772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_of_epi_of_isIso_of_isIso_of_mono (h₀ : Epi (app' φ 0)) (h₁ : IsIso (app' φ 1))
    (h₃ : IsIso (app' φ 3)) (h₄ : Mono (app' φ 4)) : IsIso (app' φ 2) := by
  dsimp at h₀ h₁ h₃ h₄
  have : Mono (app' φ 2) := by
    apply mono_of_epi_of_mono_of_mono (δlastFunctor.map φ) (R₁.exact_iff_δlast.1 hR₁).1
      (R₂.exact_iff_δlast.1 hR₂).1 <;> dsimp <;> infer_instance
  have : Epi (app' φ 2) := by
    apply epi_of_epi_of_epi_of_mono (δ₀Functor.map φ) (R₁.exact_iff_δ₀.1 hR₁).2
      (R₂.exact_iff_δ₀.1 hR₂).2 <;> dsimp <;> infer_instance
  apply isIso_of_mono_of_epi

end Five

section Four

variable {n k : ℕ} (h : k + 3 ≤ n) {R₁ R₂ : ComposableArrows C n}
    (hR₁ : R₁.Exact) (hR₂ : R₂.Exact) (φ : R₁ ⟶ R₂)

include hR₁ hR₂ in
/-- Variant of the first 4-lemma for complexes of any size -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc7ad89f9077859102dd593708902dee14ed0db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# epi_of_epi_of_epi_of_mono''

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
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b73349c5-911e-4a09-080b-c044ced8cf9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b012ac41-925e-71d5-c1dd-61e78c675298",
  "kind": "theorem",
  "lexical_name": "epi_of_epi_of_epi_of_mono''",
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
  "slug": "epi-of-epi-of-epi-of-mono--f21cfdf6648a3386727e1132",
  "source": {
    "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f21cfdf6648a3386727e113288c795339a41436783d205e25dc2035a23ec6f98",
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

Occurrence: `result:b012ac41-925e-71d5-c1dd-61e78c675298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_of_epi_of_epi_of_mono'' (k₀ k₁ k₂ k₃ : ℕ)
    (hk₀ : k₀ = k) (hk₁ : k₁ = k + 1)
    (hk₂ : k₂ = k + 2) (hk₃ : k₃ = k + 3)
    (h₀ : Epi (app' φ k₀)) (h₂ : Epi (app' φ k₂))
    (h₃ : Mono (app' φ k₃)) : Epi (app' φ k₁) := by
  subst_vars
  change Epi (app' φ (k₀ + 0)) at h₀
  rw [← natAddLEFunctor_app' h] at h₀ h₂ h₃ ⊢
  exact epi_of_epi_of_epi_of_mono _ (natAddLEFunctor_obj_exact h hR₁)
    (natAddLEFunctor_obj_exact h hR₂) h₀ h₂ h₃

end Four

section Five

variable {n k : ℕ} (h : k + 4 ≤ n) {R₁ R₂ : ComposableArrows C n}
    (hR₁ : R₁.Exact) (hR₂ : R₂.Exact) (φ : R₁ ⟶ R₂)

include hR₁ hR₂ in
/-- Variant of the 5-lemma for complexes of any size -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc7ad89f9077859102dd593708902dee14ed0db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

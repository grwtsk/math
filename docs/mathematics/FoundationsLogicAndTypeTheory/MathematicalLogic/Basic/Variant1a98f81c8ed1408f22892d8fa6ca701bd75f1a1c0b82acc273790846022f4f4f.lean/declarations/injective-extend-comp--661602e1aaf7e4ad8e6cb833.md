# Injective.extend_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2ee3d88-7074-ae2a-3a15-5102fc6f23bf",
  "kind": "theorem",
  "lexical_name": "Injective.extend_comp",
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
  "slug": "injective-extend-comp--661602e1aaf7e4ad8e6cb833",
  "source": {
    "blob": "232af472750295a454209a697754955e009c7428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 896,
    "line": 881,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:661602e1aaf7e4ad8e6cb833340e9b0fbcaa3ea0389ddac9fe4c73e394b22cf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ee3d88-7074-ae2a-3a15-5102fc6f23bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–896.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Injective.extend_comp {α₁ α₂ α₃ : Sort*} {f₁₂ : α₁ → α₂} (h₁₂ : Function.Injective f₁₂)
    {f₂₃ : α₂ → α₃} (h₂₃ : Function.Injective f₂₃) (g : α₁ → γ) (e' : α₃ → γ) :
    extend (f₂₃ ∘ f₁₂) g e' = extend f₂₃ (extend f₁₂ g (e' ∘ f₂₃)) e' := by
  ext a
  by_cases h₃ : ∃ b, f₂₃ b = a
  · obtain ⟨b, rfl⟩ := h₃
    rw [Injective.extend_apply h₂₃]
    by_cases h₂ : ∃ c, f₁₂ c = b
    · obtain ⟨c, rfl⟩ := h₂
      rw [h₁₂.extend_apply]
      exact (h₂₃.comp h₁₂).extend_apply _ _ _
    · rw [extend_apply' _ _ _ h₂, extend_apply', comp_apply]
      exact fun h ↦ h₂ (Exists.casesOn h fun c hc ↦ Exists.intro c (h₂₃ hc))
  · rw [extend_apply' _ _ _ h₃, extend_apply']
    exact fun h ↦ h₃ (Exists.casesOn h fun c hc ↦ Exists.intro (f₁₂ c) (hc))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232af472750295a454209a697754955e009c7428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

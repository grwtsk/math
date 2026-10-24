# cfcₙ_setIntegral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1c726bf-d750-4a08-1cdb-3ae9b791d98b",
  "kind": "lemma",
  "lexical_name": "cfcₙ_setIntegral'",
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
  "slug": "cfc-setintegral--6c752f6d40c85683c342cf91",
  "source": {
    "blob": "b8f0ae33d357eb23cd5f181288aac6bdd75e4c4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 324,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c752f6d40c85683c342cf91c7da95aa90858d0c756e6d5ea26bc727313f3aac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1c726bf-d750-4a08-1cdb-3ae9b791d98b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_setIntegral' {s : Set X} [NormedSpace ℝ A] (f : X → 𝕜 → 𝕜) (a : A)
    (hf₁ : ∀ᵐ x ∂(μ.restrict s), ContinuousOn (f x) (quasispectrum 𝕜 a))
    (hf₂ : ∀ᵐ x ∂(μ.restrict s), f x 0 = 0)
    (hf₃ : IntegrableOn
      (fun x : X => mkD ((quasispectrum 𝕜 a).domRestrict (f x)) 0) s μ)
    (ha : p a := by cfc_tac) :
    cfcₙ (fun z => ∫ x in s, f x z ∂μ) a = ∫ x in s, cfcₙ (f x) a ∂μ :=
  cfcₙ_integral' _ _ hf₁ hf₂ hf₃ ha

open Function Set in
/-- The continuous functional calculus commutes with integration.
This version assumes joint continuity of `f`, see `cfcₙ_integral'` for a statement
with weaker assumptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f0ae33d357eb23cd5f181288aac6bdd75e4c4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

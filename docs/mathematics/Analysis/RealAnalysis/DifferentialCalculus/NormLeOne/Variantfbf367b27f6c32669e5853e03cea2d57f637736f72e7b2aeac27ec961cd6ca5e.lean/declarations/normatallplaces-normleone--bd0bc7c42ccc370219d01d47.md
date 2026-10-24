# normAtAllPlaces_normLeOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c3e9720-7e02-2dec-f8b6-eafea7c83e9e",
  "kind": "theorem",
  "lexical_name": "normAtAllPlaces_normLeOne",
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
  "slug": "normatallplaces-normleone--bd0bc7c42ccc370219d01d47",
  "source": {
    "blob": "6efea0da50e4f59970871dbfa3bfa287293218b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0bc7c42ccc370219d01d4759767067ab253d1bac0d52f45e4fcffc3c8d2b32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c3e9720-7e02-2dec-f8b6-eafea7c83e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normAtAllPlaces_normLeOne :
    normAtAllPlaces '' (normLeOne K) =
    mixedSpaceOfRealSpace ⁻¹'
      (logMap ⁻¹'
          ZSpan.fundamentalDomain ((basisUnitLattice K).ofZLatticeBasis ℝ (unitLattice K))) ∩
      {x | (∀ w, 0 ≤ x w)} ∩
      {x | mixedEmbedding.norm (mixedSpaceOfRealSpace x) ≠ 0} ∩
      {x | mixedEmbedding.norm (mixedSpaceOfRealSpace x) ≤ 1} := by
  ext x
  refine ⟨?_, fun ⟨⟨⟨h₁, h₂⟩, h₃⟩, h₄⟩ ↦ ?_⟩
  · rintro ⟨y, ⟨⟨h₁, h₂⟩, h₃⟩, rfl⟩
    refine ⟨⟨⟨?_, ?_⟩, ?_⟩, ?_⟩
    · rwa [Set.mem_preimage, ← logMap_normAtAllPlaces] at h₁
    · exact fun w ↦ normAtPlace_nonneg w y
    · rwa [Set.mem_ofPred_eq, ← norm_normAtAllPlaces] at h₂
    · rwa [Set.mem_ofPred_eq, ← norm_normAtAllPlaces] at h₃
  · exact ⟨mixedSpaceOfRealSpace x, ⟨⟨h₁, h₃⟩, h₄⟩, normAtAllPlaces_mixedSpaceOfRealSpace h₂⟩

end normLeOne_def

noncomputable section expMap

variable {K}

/--
The component of `expMap` at the place `w`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6efea0da50e4f59970871dbfa3bfa287293218b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

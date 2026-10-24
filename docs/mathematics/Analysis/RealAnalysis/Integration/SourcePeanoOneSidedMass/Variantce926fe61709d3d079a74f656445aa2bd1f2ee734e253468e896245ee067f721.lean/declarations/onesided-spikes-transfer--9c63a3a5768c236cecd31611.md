# oneSided_spikes_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d92fe4a-6371-3300-6394-114323c2f828",
  "kind": "theorem",
  "lexical_name": "oneSided_spikes_transfer",
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
  "slug": "onesided-spikes-transfer--9c63a3a5768c236cecd31611",
  "source": {
    "blob": "edbbb021e3ab2a687ee4af023a8b1f9067f4dd25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c63a3a5768c236cecd316110a978e92e4f111d30e8ffd23f099cb857c5cf5b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d92fe4a-6371-3300-6394-114323c2f828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneSided_spikes_transfer (σ c : ℝ)
    (hspike : ∀ R : ℝ, ∃ T : ℝ, R ≤ T ∧ c * T < criticalOneSidedMass σ T) :
    ∀ R : ℝ, ∃ A : ℝ, max 10 R ≤ A ∧
      (3 * c / 40) * A < actualOneSidedPairing σ A := by
  intro R
  obtain ⟨T, hT, hs⟩ := hspike (max (1 / 2) (R / 20))
  have hT1 := (le_max_left (1 / 2 : ℝ) (R / 20)).trans hT
  have hTR := (le_max_right (1 / 2 : ℝ) (R / 20)).trans hT
  have hA : (10 : ℝ) ≤ 20 * T := by linarith
  refine ⟨20 * T, max_le hA (by linarith), ?_⟩
  have hw := actualOneSidedPairing_dominates_window σ (20 * T) hA
  have he : 20 * T / 20 = T := by ring
  rw [he] at hw
  calc
    _ = (3 / 2) * (c * T) := by ring
    _ < (3 / 2) * criticalOneSidedMass σ T := by linarith
    _ ≤ _ := hw

end
end FormalResearch.RiemannHypothesis.SourcePeanoOneSidedMass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edbbb021e3ab2a687ee4af023a8b1f9067f4dd25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

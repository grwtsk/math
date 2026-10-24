# transport_open_label

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a2b514-4ce8-f5cc-c324-f7db3538cdb3",
  "kind": "theorem",
  "lexical_name": "transport_open_label",
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
  "slug": "transport-open-label--ce328dd35ed80de59a5c3487",
  "source": {
    "blob": "f34c7760419fbf3b10a7893344baa4a491c8e0ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 87,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce328dd35ed80de59a5c3487c0fe905bcad1931c614095e727c7d4277c9d0266",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a2b514-4ce8-f5cc-c324-f7db3538cdb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transport_open_label {Γ : Type*} {S₀ S : Set ℝ} {N₀ N : ℝ → ℝ}
    {labels : Γ → ℝ} (reference : LabelCoding Γ S₀ N₀ labels)
    (honto : ∀ E ∈ S₀, ∃ γ, reference.energy γ = E)
    (target : LabelCoding Γ S N labels)
    (hmono : Monotone N) (hlocal : LocalPlateauCharacterization S N)
    {label a b : ℝ} (hgap : OpenLabelGap S₀ N₀ label a b) :
    ∃ c d, OpenLabelGap S N label c d ∧ 0 < d - c := by
  obtain ⟨γ₁, hγ₁⟩ := honto a hgap.2.1
  obtain ⟨γ₂, hγ₂⟩ := honto b hgap.2.2.1
  have hne : γ₁ ≠ γ₂ := by
    intro heq
    have hab : a = b := hγ₁.symm.trans ((congrArg reference.energy heq).trans hγ₂)
    exact (ne_of_lt hgap.1) hab
  have hl₁ : labels γ₁ = label := by
    rw [← reference.labelled γ₁, hγ₁]
    exact hgap.2.2.2.2 a ⟨le_rfl, hgap.1.le⟩
  have hl₂ : labels γ₂ = label := by
    rw [← reference.labelled γ₂, hγ₂]
    exact hgap.2.2.2.2 b ⟨hgap.1.le, le_rfl⟩
  exact gap_of_distinct_paths target hmono hlocal hne hl₁ hl₂

/-- Quantify every desired label; no finite inventory is substituted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34c7760419fbf3b10a7893344baa4a491c8e0ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

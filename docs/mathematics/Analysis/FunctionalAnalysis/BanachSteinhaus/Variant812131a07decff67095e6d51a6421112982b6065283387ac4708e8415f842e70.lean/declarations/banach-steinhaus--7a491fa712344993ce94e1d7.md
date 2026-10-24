# banach_steinhaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20ca69a6-d9b1-b46c-cb31-de2e8fd5f33e",
  "kind": "theorem",
  "lexical_name": "banach_steinhaus",
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
  "slug": "banach-steinhaus--7a491fa712344993ce94e1d7",
  "source": {
    "blob": "2e3d2b8b07cd15fab908f642b4fdc15b01ff5bb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant812131a07decff67095e6d51a6421112982b6065283387ac4708e8415f842e70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a491fa712344993ce94e1d72e3a3d43443e28b1c0385fb1042e349675774251",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant812131a07decff67095e6d51a6421112982b6065283387ac4708e8415f842e70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ca69a6-d9b1-b46c-cb31-de2e8fd5f33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem banach_steinhaus {ι : Type*} [CompleteSpace E] {g : ι → E →SL[σ₁₂] F}
    (h : ∀ x, ∃ C, ∀ i, ‖g i x‖ ≤ C) : ∃ C', ∀ i, ‖g i‖ ≤ C' := by
  rw [show (∃ C, ∀ i, ‖g i‖ ≤ C) ↔ _ from (NormedSpace.equicontinuous_TFAE g).out 5 2]
  refine (norm_withSeminorms 𝕜₂ F).banach_steinhaus (fun _ x ↦ ?_)
  simpa [bddAbove_def, forall_mem_range] using h x

open ENNReal

/-- This version of Banach-Steinhaus is stated in terms of suprema of `↑‖·‖₊ : ℝ≥0∞`
for convenience. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant812131a07decff67095e6d51a6421112982b6065283387ac4708e8415f842e70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant812131a07decff67095e6d51a6421112982b6065283387ac4708e8415f842e70.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e3d2b8b07cd15fab908f642b4fdc15b01ff5bb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

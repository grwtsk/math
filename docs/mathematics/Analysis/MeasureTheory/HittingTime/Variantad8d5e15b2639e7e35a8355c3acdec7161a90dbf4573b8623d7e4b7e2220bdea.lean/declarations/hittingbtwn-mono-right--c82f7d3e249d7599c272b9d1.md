# hittingBtwn_mono_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfe6c576b7e3b62fbec41ee5f773b8315602c982",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b9f8f4a-a920-aa87-682c-f0fb41a49974",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:794852f9-720e-7fa5-b5a2-142104a167d7",
  "kind": "theorem",
  "lexical_name": "hittingBtwn_mono_right",
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
  "slug": "hittingbtwn-mono-right--c82f7d3e249d7599c272b9d1",
  "source": {
    "blob": "dfe6c576b7e3b62fbec41ee5f773b8315602c982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 347,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c82f7d3e249d7599c272b9d10b95bae97bf38f4d7b0cbefdc6f1048ab5ebab4b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:794852f9-720e-7fa5-b5a2-142104a167d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hittingBtwn_mono_right (u : ι → Ω → β) (s : Set β) (n : ι) :
    Monotone (hittingBtwn u s n · ω) := by
  intro m₁ m₂ hm
  by_cases h : ∃ j ∈ Set.Icc n m₁, u j ω ∈ s
  · exact (hittingBtwn_eq_hittingBtwn_of_exists hm h).le
  · simp_rw [hittingBtwn, ite_eq_right h]
    split_ifs with h'
    · obtain ⟨j, hj₁, hj₂⟩ := h'
      refine le_csInf ⟨j, hj₁, hj₂⟩ ?_
      by_contra! ⟨i, hi₁, hi₂⟩
      exact h ⟨i, ⟨hi₁.1.1, hi₂.le⟩, hi₁.2⟩
    · exact hm

/-- `hittingBtwn` is monotone with respect to the minimal time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe6c576b7e3b62fbec41ee5f773b8315602c982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

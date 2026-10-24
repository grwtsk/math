# exists_measurable_le_lintegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99c6a544-ef0a-3367-6ecd-2c035922d414",
  "kind": "theorem",
  "lexical_name": "exists_measurable_le_lintegral_eq",
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
  "slug": "exists-measurable-le-lintegral-eq--a5402fdb95acabbcbdd6576c",
  "source": {
    "blob": "1ef957f14cd9e7a26cce43a9b409c62fe1dd40f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5402fdb95acabbcbdd6576c036131f3a0b2c1fd87239b9bf372f6dc8e9e6c12",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99c6a544-ef0a-3367-6ecd-2c035922d414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurable_le_lintegral_eq (f : α → ℝ≥0∞) :
    ∃ g : α → ℝ≥0∞, Measurable g ∧ g ≤ f ∧ ∫⁻ a, f a ∂μ = ∫⁻ a, g a ∂μ := by
  rcases eq_or_ne (∫⁻ a, f a ∂μ) 0 with h₀ | h₀
  · exact ⟨0, measurable_zero, zero_le, h₀.trans lintegral_zero.symm⟩
  rcases exists_seq_strictMono_tendsto' h₀.bot_lt with ⟨L, _, hLf, hL_tendsto⟩
  have : ∀ n, ∃ g : α → ℝ≥0∞, Measurable g ∧ g ≤ f ∧ L n < ∫⁻ a, g a ∂μ := by
    intro n
    simpa only [← iSup_lintegral_measurable_le_eq_lintegral f, lt_iSup_iff, exists_prop] using
      (hLf n).2
  choose g hgm hgf hLg using this
  refine
    ⟨fun x => ⨆ n, g n x, .iSup hgm, fun x => iSup_le fun n => hgf n x, le_antisymm ?_ ?_⟩
  · refine le_of_tendsto' hL_tendsto fun n => (hLg n).le.trans <| lintegral_mono fun x => ?_
    exact le_iSup (fun n => g n x) n
  · exact lintegral_mono fun x => iSup_le fun n => hgf n x

/-- `∫⁻ a in s, f a ∂μ` is defined as the supremum of integrals of simple functions
`φ : α →ₛ ℝ≥0∞` such that `φ ≤ f`. This lemma says that it suffices to take
functions `φ : α →ₛ ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef957f14cd9e7a26cce43a9b409c62fe1dd40f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

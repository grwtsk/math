# isCompact_setOfPred_probabilityMeasure_mass_eq_compl_isCompact_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a83535342af0ca8700ecacf175bec691206f6ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90022215-ffe3-3b9c-5447-d30d0c1b3006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1925770-7f86-3f47-f944-a94981f151f7",
  "kind": "lemma",
  "lexical_name": "isCompact_setOfPred_probabilityMeasure_mass_eq_compl_isCompact_le",
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
  "slug": "iscompact-setofpred-probabilitymeasure-mass-eq-compl-iscompact-le--488becf308efb2f39f3ab906",
  "source": {
    "blob": "1a83535342af0ca8700ecacf175bec691206f6ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 505,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488becf308efb2f39f3ab90698354df4ac87571ad0d7aec4bb538c42da092298",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1925770-7f86-3f47-f944-a94981f151f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_setOfPred_probabilityMeasure_mass_eq_compl_isCompact_le {u : ℕ → ℝ≥0}
    {K : ℕ → Set E} (hu : Tendsto u atTop (𝓝 0)) (hK : ∀ n, IsCompact (K n))
    (h : NormalSpace E ∨ Monotone K) :
    IsCompact {μ : ProbabilityMeasure E | ∀ n, μ (K n)ᶜ ≤ u n} := by
  apply (ProbabilityMeasure.toFiniteMeasure_isEmbedding E).isCompact_iff.2
  have : ProbabilityMeasure.toFiniteMeasure '' {μ | ∀ (n : ℕ), μ (K n)ᶜ ≤ u n}
      = {μ : FiniteMeasure E | μ.mass = 1 ∧ ∀ n, μ (K n)ᶜ ≤ u n} := by
    ext μ
    simp only [mem_image, mem_ofPred_eq]
    refine ⟨?_, ?_⟩
    · rintro ⟨ν, hν, rfl⟩
      simpa using! hν
    · rintro ⟨hμ, h'μ⟩
      let ν : ProbabilityMeasure E := ⟨μ, isProbabilityMeasure_iff_real.2 (by simpa using! hμ)⟩
      have : ν.toFiniteMeasure = μ := by ext; rfl
      exact ⟨ν, by simpa [← this] using! h'μ , this⟩
  rw [this]
  exact isCompact_setOfPred_finiteMeasure_mass_eq_compl_isCompact_le 1 hu hK h

@[deprecated (since := "2026-07-09")]
alias isCompact_setOf_probabilityMeasure_mass_eq_compl_isCompact_le :=
  isCompact_setOfPred_probabilityMeasure_mass_eq_compl_isCompact_le

/-- **Prokhorov theorem**: the closure of a tight set of probability measures is compact.
We only require the space to be T2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a83535342af0ca8700ecacf175bec691206f6ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

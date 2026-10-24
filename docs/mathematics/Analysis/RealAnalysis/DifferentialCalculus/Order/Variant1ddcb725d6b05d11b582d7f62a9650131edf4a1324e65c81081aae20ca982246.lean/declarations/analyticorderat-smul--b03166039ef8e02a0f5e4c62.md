# analyticOrderAt_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5dd01cf403100219545c2c7c5c81cacfbf634460",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2ed2d8d-0509-4716-d793-a0ae506f2abf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2993dae-555e-f9ff-8798-82e985e4e70d",
  "kind": "lemma",
  "lexical_name": "analyticOrderAt_smul",
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
  "slug": "analyticorderat-smul--b03166039ef8e02a0f5e4c62",
  "source": {
    "blob": "5dd01cf403100219545c2c7c5c81cacfbf634460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b03166039ef8e02a0f5e4c628e1a8b81e60277706487372f6cf4d6980102d6be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2993dae-555e-f9ff-8798-82e985e4e70d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticOrderAt_smul {f : 𝕜 → 𝕜} (hf : AnalyticAt 𝕜 f z₀) (hg : AnalyticAt 𝕜 g z₀) :
    analyticOrderAt (f • g) z₀ = analyticOrderAt f z₀ + analyticOrderAt g z₀ := by
  -- Trivial cases: one of the functions vanishes around z₀
  by_cases hf' : analyticOrderAt f z₀ = ⊤
  · simp [analyticOrderAt_smul_eq_top_of_left, *]
  by_cases hg' : analyticOrderAt g z₀ = ⊤
  · simp [analyticOrderAt_smul_eq_top_of_right, *]
  -- Non-trivial case: both functions do not vanish around z₀
  obtain ⟨f', h₁f', h₂f', h₃f'⟩ := hf.analyticOrderAt_ne_top.1 hf'
  obtain ⟨g', h₁g', h₂g', h₃g'⟩ := hg.analyticOrderAt_ne_top.1 hg'
  rw [← Nat.cast_analyticOrderNatAt hf', ← Nat.cast_analyticOrderNatAt hg', ← ENat.natCast_add,
      (hf.smul hg).analyticOrderAt_eq_natCast]
  refine ⟨f' • g', h₁f'.smul h₁g', ?_, ?_⟩
  · simp
    tauto
  · obtain ⟨t, h₁t, h₂t, h₃t⟩ := eventually_nhds_iff.1 h₃f'
    obtain ⟨s, h₁s, h₂s, h₃s⟩ := eventually_nhds_iff.1 h₃g'
    exact eventually_nhds_iff.2
      ⟨t ∩ s, fun y hy ↦ (by simp [h₁t y hy.1, h₁s y hy.2]; module), h₂t.inter h₂s, h₃t, h₃s⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd01cf403100219545c2c7c5c81cacfbf634460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

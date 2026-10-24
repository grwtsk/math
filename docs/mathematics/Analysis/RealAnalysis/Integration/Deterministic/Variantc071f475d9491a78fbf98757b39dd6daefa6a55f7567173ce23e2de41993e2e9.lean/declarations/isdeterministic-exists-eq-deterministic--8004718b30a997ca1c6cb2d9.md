# IsDeterministic.exists_eq_deterministic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0946ecf7-8157-b549-ae6a-674c43f529f0",
  "kind": "theorem",
  "lexical_name": "IsDeterministic.exists_eq_deterministic",
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
  "slug": "isdeterministic-exists-eq-deterministic--8004718b30a997ca1c6cb2d9",
  "source": {
    "blob": "9b3bcab2373afa18b082371138b8d6872f5bac12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8004718b30a997ca1c6cb2d9e295108df8b71793deb2f5fb82a606747d599925",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0946ecf7-8157-b549-ae6a-674c43f529f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDeterministic.exists_eq_deterministic [StandardBorelSpace β] (κ : Kernel α β)
    [IsMarkovKernel κ] [IsDeterministic κ] :
    ∃ (f : α → β) (hf : Measurable f), κ = deterministic f hf := by
  choose f hf using fun a ↦ exists_eq_dirac (μ := κ a)
  refine ⟨f, ?_, ?_⟩
  · intro s hs
    have : f ⁻¹' s = (fun a => κ a s) ⁻¹' {1} := by
      simp only [preimage, mem_singleton_iff]
      simp_rw [hf, Measure.dirac_apply' _ hs]
      ext x
      exact (indicator_eq_one_iff_mem ENNReal).symm
    rw [this]
    exact κ.measurable_coe hs <| measurableSet_singleton 1
  · ext a : 1
    exact hf a

/-- The equation of a Positive Markov category: if the composition of two Markov kernels `η ∘ₖ κ` is
deterministic, the distribution over both `η ∘ₖ κ` and `κ` can be obtained by computing `η ∘ₖ κ`
and `κ` independently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3bcab2373afa18b082371138b8d6872f5bac12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

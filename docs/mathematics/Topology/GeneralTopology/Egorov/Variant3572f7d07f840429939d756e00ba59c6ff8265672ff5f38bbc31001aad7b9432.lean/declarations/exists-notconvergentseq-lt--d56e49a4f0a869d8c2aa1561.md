# exists_notConvergentSeq_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18a08eabc4bc74de47b6094d018671bdb722ea4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b7b52eb-1c7d-6fec-eff0-6d644d0c5772",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbde5212-e47e-3262-6cda-b30b4399c8d7",
  "kind": "theorem",
  "lexical_name": "exists_notConvergentSeq_lt",
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
  "slug": "exists-notconvergentseq-lt--d56e49a4f0a869d8c2aa1561",
  "source": {
    "blob": "18a08eabc4bc74de47b6094d018671bdb722ea4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d56e49a4f0a869d8c2aa15615a360aab61c6bbe53abd251ff2674351cb24efdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbde5212-e47e-3262-6cda-b30b4399c8d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_notConvergentSeq_lt (hε : 0 < ε) (hf : ∀ n, StronglyMeasurable (f n))
    (hg : StronglyMeasurable g) (hsm : MeasurableSet s) (hs : μ s ≠ ∞)
    (hfg : ∀ᵐ x ∂μ, x ∈ s → Tendsto (fun n => f n x) atTop (𝓝 (g x))) (n : ℕ) :
    ∃ j : ι, μ (s ∩ notConvergentSeq f g n j) ≤ ENNReal.ofReal (ε * 2⁻¹ ^ n) := by
  have ⟨N, hN⟩ := (ENNReal.tendsto_atTop ENNReal.zero_ne_top).1
    (measure_notConvergentSeq_tendsto_zero hf hg hsm hs hfg n) (ENNReal.ofReal (ε * 2⁻¹ ^ n)) (by
      rw [gt_iff_lt, ENNReal.ofReal_pos]
      exact mul_pos hε (pow_pos (by norm_num) n))
  rw [zero_add] at hN
  exact ⟨N, (hN N le_rfl).2⟩

/-- Given some `ε > 0`, `notConvergentSeqLTIndex` provides the index such that
`notConvergentSeq` (intersected with a set of finite measure) has measure less than
`ε * 2⁻¹ ^ n`.

This definition is useful for Egorov's theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18a08eabc4bc74de47b6094d018671bdb722ea4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

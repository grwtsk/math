# thickenedIndicator_tendsto_indicator_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8bd42ea7c333fe63090fe2f6f3420558ea12fce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3be17855-60e4-7805-2609-408d45b7ce46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01621559-677d-5469-8cc5-dfabc60b6389",
  "kind": "theorem",
  "lexical_name": "thickenedIndicator_tendsto_indicator_closure",
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
  "slug": "thickenedindicator-tendsto-indicator-closure--c3a495b13e11f507ce1b1b1e",
  "source": {
    "blob": "c8bd42ea7c333fe63090fe2f6f3420558ea12fce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3a495b13e11f507ce1b1b1ea3291d1b6c4e4684c75420eb6ae7e30be03cfca0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01621559-677d-5469-8cc5-dfabc60b6389`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thickenedIndicator_tendsto_indicator_closure {δseq : ℕ → ℝ} (δseq_pos : ∀ n, 0 < δseq n)
    (δseq_lim : Tendsto δseq atTop (𝓝 0)) (E : Set α) :
    Tendsto (fun n : ℕ => ((↑) : (α →ᵇ ℝ≥0) → α → ℝ≥0) (thickenedIndicator (δseq_pos n) E)) atTop
      (𝓝 (indicator (closure E) fun _ => (1 : ℝ≥0))) := by
  have key := thickenedIndicatorAux_tendsto_indicator_closure δseq_lim E
  rw [tendsto_pi_nhds] at *
  intro x
  rw [show indicator (closure E) (fun _ => (1 : ℝ≥0)) x =
        (indicator (closure E) (fun _ => (1 : ℝ≥0∞)) x).toNNReal
      by refine (congr_fun (comp_indicator_const 1 ENNReal.toNNReal toNNReal_zero) x).symm]
  refine Tendsto.comp (tendsto_toNNReal ?_) (key x)
  by_cases x_mem : x ∈ closure E <;> simp [x_mem]

end thickenedIndicator

section indicator

variable {α : Type*} [PseudoEMetricSpace α] {β : Type*} [One β]

/-- Pointwise, the multiplicative indicators of δ-thickenings of a set eventually coincide
with the multiplicative indicator of the set as δ>0 tends to zero. -/
@[to_additive "Pointwise, the indicators of δ-thickenings of a set eventually coincide
with the indicator of the set as δ>0 tends to zero."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8bd42ea7c333fe63090fe2f6f3420558ea12fce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

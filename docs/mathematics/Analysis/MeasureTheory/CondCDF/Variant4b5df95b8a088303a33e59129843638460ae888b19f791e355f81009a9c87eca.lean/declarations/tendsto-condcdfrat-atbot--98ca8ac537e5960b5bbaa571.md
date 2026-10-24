# tendsto_condCdfRat_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53baf48d-6ca0-1198-1a7c-40b7530d4190",
  "kind": "theorem",
  "lexical_name": "tendsto_condCdfRat_atBot",
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
  "slug": "tendsto-condcdfrat-atbot--98ca8ac537e5960b5bbaa571",
  "source": {
    "blob": "8ff22f63535d2a22bb2c37e21aea83df0babac79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 635,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98ca8ac537e5960b5bbaa5719c7b9e49316e68e320b2d7e19f763e6be00ff1df",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53baf48d-6ca0-1198-1a7c-40b7530d4190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_condCdfRat_atBot (ρ : Measure (α × ℝ)) (a : α) :
    Tendsto (condCdfRat ρ a) atBot (𝓝 0) := by
  unfold condCdfRat
  split_ifs with h
  · rw [← ENNReal.zero_toReal, ENNReal.tendsto_toReal_iff]
    · exact (hasCondCdf_of_mem_condCdfSet h).tendsto_atBot_zero
    · have h' := hasCondCdf_of_mem_condCdfSet h
      exact fun r => ((h'.le_one r).trans_lt ENNReal.one_lt_top).ne
    · exact ENNReal.zero_ne_top
  · refine' (tendsto_congr' _).mp tendsto_const_nhds
    rw [EventuallyEq, eventually_atBot]
    refine' ⟨-1, fun q hq => (if_pos (hq.trans_lt _)).symm⟩
    linarith
#align probability_theory.tendsto_cond_cdf_rat_at_bot ProbabilityTheory.tendsto_condCdfRat_atBot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ff22f63535d2a22bb2c37e21aea83df0babac79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

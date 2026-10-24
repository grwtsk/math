# levyProkhorovDist_le_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10311ed9-f230-eb69-3ee5-c2bc046fe308",
  "kind": "lemma",
  "lexical_name": "levyProkhorovDist_le_of_forall_le",
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
  "slug": "levyprokhorovdist-le-of-forall-le--a80b5e1593769ff60d4af476",
  "source": {
    "blob": "122cb03ed4e30f9bd309bbab3335759e5d4091df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 318,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a80b5e1593769ff60d4af476e832727c94e59dce9aa90ba294db4e38fedc86aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10311ed9-f230-eb69-3ee5-c2bc046fe308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma levyProkhorovDist_le_of_forall_le
    (μ ν : Measure Ω) [IsProbabilityMeasure μ] [IsProbabilityMeasure ν] {δ : ℝ} (δ_nn : 0 ≤ δ)
    (h : ∀ ε B, δ < ε → MeasurableSet B → μ B ≤ ν (thickening ε B) + ENNReal.ofReal ε) :
    levyProkhorovDist μ ν ≤ δ := by
  apply toReal_le_of_le_ofReal δ_nn
  apply levyProkhorovEDist_le_of_forall_le
  intro ε B ε_gt ε_lt_top B_mble
  have ε_gt' : δ < ε.toReal := by
    refine (ofReal_lt_ofReal_iff ?_).mp ?_
    · exact ENNReal.toReal_pos (ne_zero_of_lt ε_gt) ε_lt_top.ne
    · simpa [ofReal_toReal_eq_iff.mpr ε_lt_top.ne] using ε_gt
  convert h ε.toReal B ε_gt' B_mble
  exact (ENNReal.ofReal_toReal ε_lt_top.ne).symm

end Levy_Prokhorov --section

section Levy_Prokhorov_is_finer

/-! ### The Lévy-Prokhorov topology is at least as fine as convergence in distribution -/

open BoundedContinuousFunction

variable {Ω : Type*} [MeasurableSpace Ω]

variable [PseudoMetricSpace Ω] [OpensMeasurableSpace Ω]

/-- A version of the layer cake formula for bounded continuous functions which have finite integral:
∫ f dμ = ∫ t in (0, ‖f‖], μ {x | f(x) ≥ t} dt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122cb03ed4e30f9bd309bbab3335759e5d4091df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

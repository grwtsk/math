# integral_mul_upcrossingsBefore_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 655,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fc90495-d067-f1ee-a1ce-5aa945d53a5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dccb476d-ebee-a1b4-8e92-d120750dbd00",
  "kind": "theorem",
  "lexical_name": "integral_mul_upcrossingsBefore_le_integral",
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
  "slug": "integral-mul-upcrossingsbefore-le-integral--e98f0a0dc4808c1dd82332f2",
  "source": {
    "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 655,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98f0a0dc4808c1dd82332f2be0d36fe0dc7b85a8fe601ae3ab29ec8683a1c1e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dccb476d-ebee-a1b4-8e92-d120750dbd00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_mul_upcrossingsBefore_le_integral [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ)
    (hfN : ∀ ω, a ≤ f N ω) (hfzero : 0 ≤ f 0) (hab : a < b) :
    (b - a) * μ[upcrossingsBefore a b f N] ≤ μ[f N] :=
  calc
    (b - a) * μ[upcrossingsBefore a b f N] ≤
        μ[∑ k in Finset.range N, upcrossingStrat a b f N k * (f (k + 1) - f k)] := by
      rw [← integral_mul_left]
      refine' integral_mono_of_nonneg _ ((hf.sum_upcrossingStrat_mul a b N).integrable N) _
      · exact eventually_of_forall fun ω => mul_nonneg (sub_nonneg.2 hab.le) (Nat.cast_nonneg _)
      · refine' eventually_of_forall fun ω => _
        simpa using mul_upcrossingsBefore_le (hfN ω) hab
    _ ≤ μ[f N] - μ[f 0] := hf.sum_mul_upcrossingStrat_le
    _ ≤ μ[f N] := (sub_le_self_iff _).2 (integral_nonneg hfzero)
#align measure_theory.integral_mul_upcrossings_before_le_integral MeasureTheory.integral_mul_upcrossingsBefore_le_integral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3b3b33a3e465841f05a443e9584dadfe60e312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

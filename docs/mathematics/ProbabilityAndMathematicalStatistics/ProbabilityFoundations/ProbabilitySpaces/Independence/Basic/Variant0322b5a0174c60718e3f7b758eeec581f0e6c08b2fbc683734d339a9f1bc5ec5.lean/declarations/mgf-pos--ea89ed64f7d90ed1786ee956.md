# mgf_pos'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b05b7b1-80e1-828a-2572-d5c13091d64e",
  "kind": "theorem",
  "lexical_name": "mgf_pos'",
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
  "slug": "mgf-pos--ea89ed64f7d90ed1786ee956",
  "source": {
    "blob": "9a701e09e3611df6e6c139606cc62b2397d2c20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 191,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea89ed64f7d90ed1786ee95693051cfacf6f8f9016d4ede12ab09459693bb3da",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b05b7b1-80e1-828a-2572-d5c13091d64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mgf_pos' (hμ : μ ≠ 0) (h_int_X : Integrable (fun ω => exp (t * X ω)) μ) :
    0 < mgf X μ t := by
  simp_rw [mgf]
  have : ∫ x : Ω, exp (t * X x) ∂μ = ∫ x : Ω in Set.univ, exp (t * X x) ∂μ := by
    simp only [Measure.restrict_univ]
  rw [this, setIntegral_pos_iff_support_of_nonneg_ae _ _]
  · have h_eq_univ : (Function.support fun x : Ω => exp (t * X x)) = Set.univ := by
      ext1 x
      simp only [Function.mem_support, Set.mem_univ, iff_true]
      exact (exp_pos _).ne'
    rw [h_eq_univ, Set.inter_univ _]
    refine Ne.bot_lt ?_
    simp only [hμ, ENNReal.bot_eq_zero, Ne, Measure.measure_univ_eq_zero, not_false_iff]
  · filter_upwards with x
    rw [Pi.zero_apply]
    exact (exp_pos _).le
  · rwa [integrableOn_univ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a701e09e3611df6e6c139606cc62b2397d2c20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# MemLp.lpNorm_condExp_le_lpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bae70a0814cdbf4b3d04248c71387e38d48603e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdc57f4a-1bdf-e20f-408d-0faed2e890e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41c7cd7f-5091-8fd2-4611-eef709a0f674",
  "kind": "theorem",
  "lexical_name": "MemLp.lpNorm_condExp_le_lpNorm",
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
  "slug": "memlp-lpnorm-condexp-le-lpnorm--6aa16d840316b1088c3e2af9",
  "source": {
    "blob": "5bae70a0814cdbf4b3d04248c71387e38d48603e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 251,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa16d840316b1088c3e2af9cf25d622930bd6b802bdd228947c145140913fa5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c7cd7f-5091-8fd2-4611-eef709a0f674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.lpNorm_condExp_le_lpNorm {f : α → E} {p : ℝ≥0∞} (hp : 1 ≤ p) (hf : MemLp f p μ) :
    lpNorm μ[f | m] p μ ≤ lpNorm f p μ := by
  by_cases NeZero μ
  · have hp' : 0 < p := zero_lt_one.trans_le hp
    by_cases! hm : ¬ m ≤ m0
    · simp [condExp_of_not_le hm]
    by_cases! hsig : ¬ SigmaFinite (μ.trim hm)
    · simp [condExp_of_not_sigmaFinite hm hsig]
    · by_cases! hpt : p ≠ ⊤
      · rw [lpNorm_eq_integral_norm_rpow_toReal hp'.ne.symm hpt hf.aestronglyMeasurable,
          lpNorm_eq_integral_norm_rpow_toReal hp'.ne.symm hpt integrable_condExp.1]
        gcongr ?_ ^ ?_
        have : 1 ≤ p.toReal := by
          rwa [← toReal_one, toReal_le_toReal one_ne_top hpt]
        exact integral_norm_condExp_rpow_le this <|
          (integrable_norm_rpow_iff hf.aestronglyMeasurable hp'.ne.symm hpt).2 hf
      · by_cases! h : MemLp μ[f | m] ⊤ μ
        · simp_all only [lpNorm_exponent_top_eq_essSup]
          exact hf.essSup_norm_condExp_le_essSup_norm
        · simp_all
  · simp_all [not_neZero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bae70a0814cdbf4b3d04248c71387e38d48603e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

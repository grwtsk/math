# criticalPrimeTest_deriv_lipschitz_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfbf3016-3f02-10e8-f8a0-c0c3903b0fca",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_deriv_lipschitz_explicit",
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
  "slug": "criticalprimetest-deriv-lipschitz-explicit--2411b16968adde73b0d0c3a9",
  "source": {
    "blob": "9be563938c38bc576512eda5f8b98c7abfa48b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2411b16968adde73b0d0c3a9194a9c7cabbae121e202f3afb1f55c80a55c2f9b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfbf3016-3f02-10e8-f8a0-c0c3903b0fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_deriv_lipschitz_explicit {A : ℝ} (hA : 1 ≤ A) :
    LipschitzWith ⟨28*Real.exp A, by positivity⟩ (deriv (criticalPrimeTest A)) := by
  apply lipschitzWith_of_nnnorm_deriv_le
    ((criticalPrimeTest_contDiff_two (by linarith : 0<A)).deriv'.differentiable_one)
  intro u
  exact_mod_cast (show ‖deriv (deriv (criticalPrimeTest A)) u‖ ≤ 28*Real.exp A by
    simpa only [Real.norm_eq_abs] using criticalPrimeTest_second_deriv_abs_le hA u)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be563938c38bc576512eda5f8b98c7abfa48b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

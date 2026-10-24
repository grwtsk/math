# IsStronglyPredictable.predictablePart_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb5fb8e3-89c0-4a0d-d5fb-89068cb7721a",
  "kind": "lemma",
  "lexical_name": "IsStronglyPredictable.predictablePart_eq",
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
  "slug": "isstronglypredictable-predictablepart-eq--9653cd1e89feedb188838a4e",
  "source": {
    "blob": "6b661578e33ef4373fe78bd6ac267b7d1a4296d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 110,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9653cd1e89feedb188838a4eb5f059b1caf2c6934c4b12b598851bb0c4a69ca9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb5fb8e3-89c0-4a0d-d5fb-89068cb7721a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStronglyPredictable.predictablePart_eq
    [SigmaFiniteFiltration μ ℱ] (hf : IsStronglyPredictable ℱ f)
    (hfint : ∀ n, Integrable (f n) μ) (n : ℕ) :
    predictablePart f ℱ μ n =ᵐ[μ] f n - f 0 := by
  simp only [predictablePart, ← Finset.sum_range_sub]
  exact eventuallyEq_sum fun i hi => (condExp_of_stronglyMeasurable (ℱ.le i)
    ((hf.measurable_add_one i).sub (hf.stronglyAdapted i))
    ((hfint (i + 1)).sub (hfint i))).eventuallyEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variant230e1017c3a4455320c48c927f16360d7437a905c80bd0e012e456b58ba56032.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b661578e33ef4373fe78bd6ac267b7d1a4296d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

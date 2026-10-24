# indepFun_of_bcf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a6cff0e-79d4-e1c4-4c28-a4bb40f54f54",
  "kind": "lemma",
  "lexical_name": "indepFun_of_bcf",
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
  "slug": "indepfun-of-bcf--3a70060dc6578a52ce51139a",
  "source": {
    "blob": "55a4270c1cb09b6774810513d7887b5b7710cfd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 183,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a70060dc6578a52ce51139a3094c40baaecd1f4cdfb6920178888d03f0ec1f2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a6cff0e-79d4-e1c4-4c28-a4bb40f54f54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indepFun_of_bcf (mZ : AEMeasurable Z P) (mU : AEMeasurable U P)
    (h : ∀ (f : G →ᵇ ℝ) (g : H →ᵇ ℝ), P[f ∘ Z * g ∘ U] = P[f ∘ Z] * P[g ∘ U]) :
    IndepFun Z U P := by
  rw [indepFun_iff_map_prod_eq_prod_map_map mZ mU]
  refine eq_prod_of_integral_mul_boundedContinuousFunction fun f g ↦ ?_
  rw [integral_map, integral_map, integral_map]
  · exact h f g
  any_goals fun_prop
  exact Measurable.aestronglyMeasurable (by fun_prop)

end IndepFun

variable [IsProbabilityMeasure P]

section Indicator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a4270c1cb09b6774810513d7887b5b7710cfd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

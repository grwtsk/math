# Verification target: GRWTSK.Algebra.LinearAlgebra.MorphismFactorization.Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0af42bd435467b1fd324ef512ba5d851b29d83b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0af42bd435467b1fd324ef512ba5d851b29d83b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Morphism` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryLogicMatrixMorphismFactorization](../../../../../mathematics/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean/declarations/binarylogicmatrixmorphismfactorization--eb41d0c4ad135c3cfbf07788.md) | 13 | `declaration-track:eb41d0c4ad135c3cfbf077885048f95d526230deff28d84df7a3176679a8381f` |
| 2 | `theorem` | [morphismFactorization_projects_certificate](../../../../../mathematics/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean/declarations/morphismfactorization-projects-certificate--65cbc4aeebe8cb79d693bc11.md) | 21 | `result-track:65cbc4aeebe8cb79d693bc11c4583249e17a38d262778e9b6ecf0c2beb4b9dfc` |
| 3 | `theorem` | [morphismFactorization_not_flow_claim](../../../../../mathematics/Algebra/LinearAlgebra/MorphismFactorization/Variant67ff938fe4eee03206b9bd3db48051cf1ee09a52b5f249bce13f94997b82d5af.lean/declarations/morphismfactorization-not-flow-claim--75dbc23c63ed9edbade0e96d.md) | 28 | `result-track:75dbc23c63ed9edbade0e96db625d74ae07049cc01bfb5f9b23013ae39731c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

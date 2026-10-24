# Verification target: GRWTSK.Algebra.LinearAlgebra.FullOperatorObstruction.Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef1e946065fc6d69587f912f210d5ccac60c8a15",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef1e946065fc6d69587f912f210d5ccac60c8a15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitPhaseGram_norm_invariant](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/declarations/unitphasegram-norm-invariant--de93cc6ad7054b34e0d56f3f.md) | 36 | `result-track:de93cc6ad7054b34e0d56f3f0938ddea6c4bc04409b10b0daeff933907db6892` |
| 2 | `def` | [allOnesRectangularMatrix](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/declarations/allonesrectangularmatrix--015edc37d3bdd32a63ac8b58.md) | 46 | `declaration-track:015edc37d3bdd32a63ac8b58a25a895f03e9f9c28766fad65e0ebd5bf707bef0` |
| 3 | `def` | [allOnesRectangularOperator](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/declarations/allonesrectangularoperator--ab7ac2c4bac6c13eab273a96.md) | 52 | `declaration-track:ab7ac2c4bac6c13eab273a96f7aba5421032bfa26665b1088039950cadf7fffc` |
| 4 | `def` | [constantOneVector](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/declarations/constantonevector--a41ffdd65f5fe03cd0b2c748.md) | 60 | `declaration-track:a41ffdd65f5fe03cd0b2c7487dfe59a848b1733a1fd108750fbe516ed9722768` |
| 5 | `theorem` | [allOnesRectangularOperator_constant](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/declarations/allonesrectangularoperator-constant--bbbdb3324f823d3ed62e50cd.md) | 68 | `result-track:bbbdb3324f823d3ed62e50cd53e9e7e43893493ccd49e3e5c01c9828a31c70ea` |
| 6 | `theorem` | [constantOneVector_norm_sq](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/declarations/constantonevector-norm-sq--ead338b3b537fd0791a5896b.md) | 80 | `result-track:ead338b3b537fd0791a5896b13cdbbf4768c316ba8b16b8e91f34df6f581a881` |
| 7 | `theorem` | [allOnesRectangularOperator_card_mul_le_norm_sq](../../../../../mathematics/Algebra/LinearAlgebra/FullOperatorObstruction/Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc.lean/declarations/allonesrectangularoperator-card-mul-le-norm-sq--cedeed6ecca754ddd7e37f17.md) | 93 | `result-track:cedeed6ecca754ddd7e37f17d8bf9f2455412a96c53bb7a6bfa978b135d99168` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

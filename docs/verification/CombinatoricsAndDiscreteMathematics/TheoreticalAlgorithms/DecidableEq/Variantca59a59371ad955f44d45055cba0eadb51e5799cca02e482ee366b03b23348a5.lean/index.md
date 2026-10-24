# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEq.Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7917103eb09cceb51c3ff19526c3039312c8a2cb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7917103eb09cceb51c3ff19526c3039312c8a2cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEqv_iff_rel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/iseqv-iff-rel--a35a154f0599e25963e1a630.md) | 19 | `result-track:a35a154f0599e25963e1a63038478ef792175c257a03d46de702effe8726dc59` |
| 2 | `theorem` | [isEqv_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/iseqv-eq-decide--e7de4324b8b226fabd4f27a8.md) | 25 | `result-track:e7de4324b8b226fabd4f27a82ddad3cf402f1f1a0f05b1847131d9606f1bc641` |
| 3 | `theorem` | [isEqv_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/iseqv-toarray--cbf1f8f206b8a7fece99c18b.md) | 31 | `result-track:cbf1f8f206b8a7fece99c18b76a3b6f64e2f1c706bbeed00299391355b38c3bd` |
| 4 | `theorem` | [eq_of_isEqv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/eq-of-iseqv--8c680d6fc45cbef5acc54baa.md) | 34 | `result-track:8c680d6fc45cbef5acc54baa7d7f3b6dc44b119468b28b70118bc66fdd928b2f` |
| 5 | `theorem` | [isEqv_self_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/iseqv-self-beq--4694e4c99011c4f474f2346b.md) | 41 | `result-track:4694e4c99011c4f474f2346b22ab5d20bbcf1c2b89b0881dcdd07c329ed76265` |
| 6 | `theorem` | [isEqv_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/iseqv-self--a8907a66cf1792872a19ae03.md) | 45 | `result-track:a8907a66cf1792872a19ae03e35be87120b51c8b3b362b8c2cc5fb23062c2761` |
| 7 | `theorem` | [beq_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/beq-eq-decide--32db09907eb219ed6e5a310a.md) | 49 | `result-track:32db09907eb219ed6e5a310ae5ba2fe5b2b8cd97d230a1d34347b622adf73338` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/instance--72f1b93a1c51666bd1c492cc.md) | 53 | `declaration-track:72f1b93a1c51666bd1c492cc89f66ee657f7c31f9b1ca3a5970dcdbcf1082f1f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5.lean/declarations/instance--a25a9fcba7e6efbca7804682.md) | 56 | `declaration-track:a25a9fcba7e6efbca7804682e1ef660322855f6393d962b3ac60832100ce4965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

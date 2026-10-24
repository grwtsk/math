# Verification target: GRWTSK.Algebra.LinearAlgebra.Fin.Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abaee46483c1718fa09614a443312f3206c06b27",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abaee46483c1718fa09614a443312f3206c06b27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkFinCons](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/mkfincons--a3b7366e3a150eef3eef1ca8.md) | 48 | `declaration-track:a3b7366e3a150eef3eef1ca87c9a470eccde6350ce511dc837f0630d4a9decfb` |
| 2 | `theorem` | [coe_mkFinCons](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/coe-mkfincons--4451dd06aebed4908c558309.md) | 64 | `result-track:4451dd06aebed4908c558309c87046a5207416dae3cc74bca2bd5728f2bbd8f0` |
| 3 | `def` | [mkFinConsOfLE](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/mkfinconsofle--4da40eae692371c890ca8c48.md) | 73 | `declaration-track:4da40eae692371c890ca8c483519305448dc342ab268a8f290f5d96273d4c532` |
| 4 | `theorem` | [coe_mkFinConsOfLE](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/coe-mkfinconsofle--f0cf7b454dad355a7e782fc1.md) | 81 | `result-track:f0cf7b454dad355a7e782fc1b18edcdb38a0d9ca7099a9613a4e25a1a2ca155f` |
| 5 | `def` | [finTwoProd](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/fintwoprod--e6acf21dfc5f333b20264417.md) | 89 | `declaration-track:e6acf21dfc5f333b20264417bfd3617fd41a89259a8fa19af635dea31b7cc30b` |
| 6 | `theorem` | [finTwoProd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/fintwoprod-zero--082b336830f6663d99f3f233.md) | 93 | `result-track:082b336830f6663d99f3f233b772873511bd45a61ec9dd08d761b14ae31e516d` |
| 7 | `theorem` | [finTwoProd_one](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/fintwoprod-one--3774ca11b712f83d382ecfc9.md) | 97 | `result-track:3774ca11b712f83d382ecfc9316a2e79c1335783240ae7f885f008e3de2a9bde` |
| 8 | `theorem` | [coe_finTwoProd_repr](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean/declarations/coe-fintwoprod-repr--2b49af596b29497e8760efee.md) | 101 | `result-track:2b49af596b29497e8760efee462038f763a9b27fb36fd51b71949394e4c3b04e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt01.Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d7564d5f10a6251b76c4eb4177b323d805ddba1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d7564d5f10a6251b76c4eb4177b323d805ddba1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramplus--277260f1ea707fd0a17f49f0.md) | 12 | `declaration-track:277260f1ea707fd0a17f49f0fb6cca1094d2bf71c37056923f7b12fc3bb88557` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramminus--f886d9f1d08bba710b2c4945.md) | 14 | `declaration-track:f886d9f1d08bba710b2c4945be5ed780c6ba1ec498b07948b2efd31e2676b582` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/pairwiseprofile--c8691f479c0c312a3fc161da.md) | 16 | `declaration-track:c8691f479c0c312a3fc161dada1ac4f3a946ca417a44d3c2dd3fa85dad7caf6e` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/triplecycle--127bd6c8fe5cbe31e96ee765.md) | 18 | `declaration-track:127bd6c8fe5cbe31e96ee7653d9929137774d978931719c2f06e267196094ffc` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramplus-hermitian--225df505f284402fdcaff919.md) | 20 | `result-track:225df505f284402fdcaff91928fec88c9eb3f48c823e78294137f0151c2b3484` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramminus-hermitian--ed9b86084119bd9d5c4f0946.md) | 23 | `result-track:ed9b86084119bd9d5c4f094647a7a9b3e413bd730027b1470cb0e79ebe5f9702` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramplus-energy--9f8f7a4a17e3ef35f61fe0c7.md) | 27 | `result-track:9f8f7a4a17e3ef35f61fe0c71e5635931f612245c63c1d824673f10a20ae1ae9` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramminus-energy--1ff3eff93da93220ece8d718.md) | 33 | `result-track:1ff3eff93da93220ece8d71880fc799dfbddaa4bec91e0113c99ff326d6911d6` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/sum-sq-pos--230d21af9efd0daa83f8b69e.md) | 40 | `result-track:230d21af9efd0daa83f8b69e54b6b88a9ea4ac21d31c35f8d8e7bd73d2b0c871` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramplus-posdef--8bf465ab98454421d8c20c5e.md) | 52 | `result-track:8bf465ab98454421d8c20c5e2da463c56f373742db8c402c4bf624c3c85f863d` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramminus-posdef--e5f01dfab74a9360813b0b8e.md) | 57 | `result-track:e5f01dfab74a9360813b0b8ecd50edb30656652be3da6aeaafde4715522c9605` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/positive-gram-factor--e7c5739a275d12dd3ab6e4de.md) | 63 | `result-track:e7c5739a275d12dd3ab6e4de5b76145b2025445c745453bf4448e9badea7018d` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramplus-realizable--20d7b70228050ff8ee1bd5ce.md) | 69 | `result-track:20d7b70228050ff8ee1bd5cef8569b266050e059103fcd849e0f8c6951257868` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/gramminus-realizable--f9bf6207d45198dfeb4483cf.md) | 71 | `result-track:f9bf6207d45198dfeb4483cf0ae9d19e3927f96104db37230bf2505c4677fc1f` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/diagonals-equal--879691f0406e049d3ff562dd.md) | 74 | `result-track:879691f0406e049d3ff562dd72356147a94882c09ddc44be267c6c031a53a0b0` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/pairwise-equal--9ab06a0af577ed0f0e4a5c5d.md) | 77 | `result-track:9ab06a0af577ed0f0e4a5c5d1fa34d580b453cb483c428ddf3e638ce55a5e79c` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/triple-plus--37f3577f1e84f94f687b10c3.md) | 80 | `result-track:37f3577f1e84f94f687b10c38e601f2f2c48e3f83318715ef2c9e65e60c8aeac` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/triple-minus--a508eaccdbbb6d0a562a3cd3.md) | 82 | `result-track:a508eaccdbbb6d0a562a3cd3a26e538b3e0ed3565ed711f277bf84ad2a36493a` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/triple-distinct--7378d2375e6e0a7875800430.md) | 84 | `result-track:7378d2375e6e0a7875800430e173ddf183850965e60f9915b82dfa05bac56850` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/det-plus--cdc51cfb029f8681ab93a92e.md) | 88 | `result-track:cdc51cfb029f8681ab93a92e7cfc356f63c83f7d57693c23ece56cd4709f580e` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/det-minus--df45c5a63e54cf36807ec2b2.md) | 90 | `result-track:df45c5a63e54cf36807ec2b29c952e99c13197fe25b0673f2e95b2ceab249f1c` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/det-distinct--486687dfbe64bcfed50bbb05.md) | 92 | `result-track:486687dfbe64bcfed50bbb058f01d236e1aaad5d67226dc79f9d1b87060f34b2` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/no-pairwise-triple-decoder--4b029e8e1dc714ca1d94730b.md) | 96 | `result-track:4b029e8e1dc714ca1d94730b1296abcdb340f0108ba7efd50695a2c08bf1f134` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variantad7ae422e6df5f31ae9bd2c6ba3a39d8c7c092eae0e64433af19c50d291363ac.lean/declarations/no-pairwise-determinant-decoder--c621db792eae265d90304545.md) | 105 | `result-track:c621db792eae265d9030454513ef0a5c98a113fe4746a760f75b5c08af3d0621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

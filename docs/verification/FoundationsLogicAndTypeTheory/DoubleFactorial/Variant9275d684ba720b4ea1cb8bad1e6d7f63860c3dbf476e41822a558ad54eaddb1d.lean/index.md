# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.DoubleFactorial.Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54db24579e0d66357ebfdfb270051500430e27ef",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54db24579e0d66357ebfdfb270051500430e27ef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doubleFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial--6dbb077dc4061e6e0b646aa5.md) | 29 | `declaration-track:6dbb077dc4061e6e0b646aa55600d9beb60809b3ee7626b596caa9a0eb887ae7` |
| 2 | `lemma` | [doubleFactorial_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial-pos--47f324fb9bf636b64227d169.md) | 37 | `result-track:47f324fb9bf636b64227d1694cadb05e26df6fa015200dcb766fe7a545e699ec` |
| 3 | `theorem` | [doubleFactorial_add_two](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial-add-two--9d0cd6a87640af58d07a7706.md) | 41 | `result-track:9d0cd6a87640af58d07a77064e53c5ebefe1569700a1715a659d7460e1d93523` |
| 4 | `theorem` | [doubleFactorial_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial-add-one--28cceb7ece2939318de309ba.md) | 44 | `result-track:28cceb7ece2939318de309ba77d4838bcd090a81f15f8a5eb44859dfbf2d3483` |
| 5 | `theorem` | [factorial_eq_mul_doubleFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/factorial-eq-mul-doublefactorial--f3d35f1156dab88447b5cb2e.md) | 46 | `result-track:f3d35f1156dab88447b5cb2ebfa99f84999f79efe6542339261c6270a7935bd9` |
| 6 | `lemma` | [doubleFactorial_le_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial-le-factorial--d12191a425658ec77f7ba280.md) | 52 | `result-track:d12191a425658ec77f7ba280bb1839a34d86dd4040285e6b63afd19852c0f969` |
| 7 | `theorem` | [doubleFactorial_two_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial-two-mul--7857f96b9abb51dd20e1e858.md) | 57 | `result-track:7857f96b9abb51dd20e1e8584fc9e3195de10438327aeddd55d3dc965c7eba44` |
| 8 | `theorem` | [doubleFactorial_eq_prod_even](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial-eq-prod-even--5ea60e41c3b8ea598f280cdc.md) | 64 | `result-track:5ea60e41c3b8ea598f280cdceb977acccc5c2afa0016f07628b89b3d738c588d` |
| 9 | `theorem` | [doubleFactorial_eq_prod_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/doublefactorial-eq-prod-odd--8c8b99ff032c0f8056959792.md) | 71 | `result-track:8c8b99ff032c0f805695979269873ae46f7720d3ccda7b827e5affc2ed514bbc` |
| 10 | `def` | [evalDoubleFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/evaldoublefactorial--b9a79ecd933177e172bd8b70.md) | 86 | `declaration-track:b9a79ecd933177e172bd8b70c6ead1d3559bab47f56cea719da2f2b3c3e8dfa8` |
| 11 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d.lean/declarations/example--b5bf9b4bbb393b97e398ddcb.md) | 93 | `declaration-track:b5bf9b4bbb393b97e398ddcb8af3e357896abbc386209556a83f0b2cfd033509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

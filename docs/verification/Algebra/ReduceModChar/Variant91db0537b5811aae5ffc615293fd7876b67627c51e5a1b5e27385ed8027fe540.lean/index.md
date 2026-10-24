# Verification target: GRWTSK.Algebra.ReduceModChar.Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f258ccef81e8c2e1d4d6ceb7eb52b9eb15004ee",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f258ccef81e8c2e1d4d6ceb7eb52b9eb15004ee`.

Source path: `GRWTSK/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CharP.isInt_of_mod](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/charp-isint-of-mod--45369f6894b4424be3f28267.md) | 61 | `result-track:45369f6894b4424be3f28267497841910f641d325c205653ca5c2aa0e399576a` |
| 2 | `lemma` | [CharP.isNat_pow](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/charp-isnat-pow--600c1712cb06ce5715617390.md) | 65 | `result-track:600c1712cb06ce5715617390d0faf5f035a2477fc2c8c6194fb6f749fd93ebf2` |
| 3 | `def` | [normBareNumeral](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/normbarenumeral--1416f4d285e2e6c9fc1542b1.md) | 74 | `declaration-track:1416f4d285e2e6c9fc1542b1b9cab2982a7ce09788815a9237b290ed0031f1d9` |
| 4 | `def` | [normPow](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/normpow--429d0eff4c788d754068d17e.md) | 86 | `declaration-track:429d0eff4c788d754068d17ef0b6411ccd5b9aae0ed04dac5c43565945449ed7` |
| 5 | `def` | [normIntNumeral'](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/normintnumeral--bbf4b44fddbd7ed778db6278.md) | 100 | `declaration-track:bbf4b44fddbd7ed778db6278b620c6697366db61a8db1a6691700c3463bfd627` |
| 6 | `lemma` | [CharP.intCast_eq_mod](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/charp-intcast-eq-mod--f994c04af024e665b269dd96.md) | 106 | `result-track:f994c04af024e665b269dd96b4aa6e6969252c094d3b39f3bdcdcff3d882b1c5` |
| 7 | `def` | [normIntNumeral](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/normintnumeral--248675b3cab8aa29f126e8c5.md) | 112 | `declaration-track:248675b3cab8aa29f126e8c5fcbf15c3054cebaafcbecfa76c153f0a605f23de` |
| 8 | `lemma` | [CharP.neg_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/charp-neg-eq-sub-one-mul--2c40a5551d917ef53256ba58.md) | 117 | `result-track:2c40a5551d917ef53256ba58f0d262d25c587019be3dca05b1b88fcfc51ec0df` |
| 9 | `def` | [normNeg](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/normneg--e8e5f1a209863441f69c8abe.md) | 130 | `declaration-track:e8e5f1a209863441f69c8abe09d28b14d0929340b810130bced94cc9ab237ec2` |
| 10 | `lemma` | [CharP.neg_mul_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/charp-neg-mul-eq-sub-one-mul--4737624db1918e1a715f4639.md) | 146 | `result-track:4737624db1918e1a715f4639ddc1aa87561619bb3573023e0da200c074fe891a` |
| 11 | `def` | [normNegCoeffMul](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/normnegcoeffmul--c9a0ba7298b6320bf8513319.md) | 155 | `declaration-track:c9a0ba7298b6320bf85133199e012d6c490d96db85e9b5c10ba719e7f5eb2b42` |
| 12 | `inductive` | [TypeToCharPResult](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/typetocharpresult--3387fd55f336f840b628a12f.md) | 175 | `declaration-track:3387fd55f336f840b628a12fcf2218c4ee46b4b233c345e449a561d1130b0166` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/instance--8899c2e8afcf165d81ea2ac6.md) | 179 | `declaration-track:8899c2e8afcf165d81ea2ac6703bc1360ce55d0d2acb1c3b2acdc59c26dba210` |
| 14 | `def` | [typeToCharP](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/typetocharp--bc76f7b896d67c4a19a9e717.md) | 186 | `declaration-track:bc76f7b896d67c4a19a9e717c15e1401c5cbe93222a68778b91dfea33923b0f4` |
| 15 | `def` | [matchAndNorm](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/matchandnorm--0b7f3bc1d8255f90c9351c6c.md) | 219 | `declaration-track:0b7f3bc1d8255f90c9351c6cee74248e3dfcb514b59685b9218a480ab589ac3d` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/derive--ad7bf3e2fbf109285075b432.md) | 249 | `declaration-track:ad7bf3e2fbf109285075b43296e5aa7d88015c98c07fb2fb92a6bb926f328dda` |
| 17 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/syntax--7dbc31f186b43d16b2f1f0bd.md) | 298 | `declaration-track:7dbc31f186b43d16b2f1f0bdef293291bb8a42ab2237db3c6db8eeb35ddb6e3e` |
| 18 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/syntax--ad12da895eabba2efa6372cb.md) | 300 | `declaration-track:ad12da895eabba2efa6372cb4ede0021e886a3b33640d5ece8fbd8c26f8ea769` |
| 19 | `elab_rules` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/declarations/elab-rules--c5e7df7c4ef7ddca5931dde5.md) | 303 | `declaration-track:c5e7df7c4ef7ddca5931dde57dba76273a135f5c0cae2fbc78ce173dea0944cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

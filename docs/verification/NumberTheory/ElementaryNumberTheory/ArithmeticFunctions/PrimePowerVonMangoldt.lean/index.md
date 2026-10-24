# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a87a2212241f4c501861c402bde8bf3014f106e3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a87a2212241f4c501861c402bde8bf3014f106e3`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomnat--fe18bcb58ce28dae741a7ba6.md) | 33 | `declaration-track:fe18bcb58ce28dae741a7ba64b7ae586ec23f8e0ca16ed4925c3545007d635f9` |
| 2 | `theorem` | [atomNat_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomnat-pos--31b14955ff03b0ca7ae52592.md) | 36 | `result-track:31b14955ff03b0ca7ae525924b4a444a08ac683e155e9eab720fb1410a11eca4` |
| 3 | `theorem` | [atomNat_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomnat-ne-zero--b96a572a81bf7839124551db.md) | 39 | `result-track:b96a572a81bf7839124551db1d978b9e3cc117b96c714c0b35a7cb7c70b46390` |
| 4 | `theorem` | [vonMangoldt_atomNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/vonmangoldt-atomnat--b209e33d576ba9abf689e65f.md) | 44 | `result-track:b209e33d576ba9abf689e65f1dc4512de1f64e84e63fc0fe0a2509566525d2e6` |
| 5 | `def` | [atomWeight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomweight--dee4722a36bfdf29bcd801ff.md) | 54 | `declaration-track:dee4722a36bfdf29bcd801ffe27415aac861dd83bffa2064de403b533c5a4880` |
| 6 | `theorem` | [atomWeight_eq_log](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomweight-eq-log--8544ca336f44bad9bdbab699.md) | 58 | `result-track:8544ca336f44bad9bdbab6991857f0d8f97ed62bddcbdd94ce4bc7788ecf706e` |
| 7 | `theorem` | [atomWeight_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomweight-nonneg--3f654c7081f602697714da8e.md) | 62 | `result-track:3f654c7081f602697714da8e24299bfbc656d72c51d19c8a207c3eb50c91d91c` |
| 8 | `theorem` | [atomWeight_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomweight-pos--8126380e4e027ca62a0d1d0f.md) | 66 | `result-track:8126380e4e027ca62a0d1d0ff508ee2086b55a54fe67017f67ff8cf1cf069dd2` |
| 9 | `def` | [stageReadout](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/stagereadout--402c88f3b84f8b50bbbc9362.md) | 71 | `declaration-track:402c88f3b84f8b50bbbc9362330fe4b8915b7864c3687d1832da956ef8540c1d` |
| 10 | `def` | [stageEnergy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/stageenergy--49445c68c24c56cb523505d7.md) | 78 | `declaration-track:49445c68c24c56cb523505d76991d5d28bf0d53cdcbc6e4557a40c556258ba73` |
| 11 | `theorem` | [stageEnergy_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/stageenergy-nonneg--01934126240f4e7d795ff684.md) | 83 | `result-track:01934126240f4e7d795ff6841563d34bfb2cfb79c6d80906edd269a3f9fc9d09` |
| 12 | `theorem` | [stageReadout_eq_vonMangoldt_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/stagereadout-eq-vonmangoldt-sum--3fb29fa29f58d7110e450d16.md) | 94 | `result-track:3fb29fa29f58d7110e450d167bfd8a18aa22ca2ccb218ae2c0ab8d09131c1d62` |
| 13 | `theorem` | [stageEnergy_eq_vonMangoldt_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/stageenergy-eq-vonmangoldt-sum--79adfb55006d651047fce925.md) | 103 | `result-track:79adfb55006d651047fce92542cf9516d0a813400428093c9c4cf1f5a5ee7e08` |
| 14 | `theorem` | [atomWeight_same_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/atomweight-same-prime--e8fd54232cd22455683c7fb0.md) | 113 | `result-track:e8fd54232cd22455683c7fb0f36908cbb2724ff2f709a8b741bf3a10dfc07d0a` |
| 15 | `theorem` | [squareAtom_weight_ne_two_unitAtom_weight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/declarations/squareatom-weight-ne-two-unitatom-weight--33d3b3d3ba39238e5b97d94c.md) | 121 | `result-track:33d3b3d3ba39238e5b97d94c86e07b8f806aa25d69deeb13344a3ad925a62d89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

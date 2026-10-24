# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Floor.Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c20d148ea5a903bb39f98cb02e14c826ef11416",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c20d148ea5a903bb39f98cb02e14c826ef11416`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Instances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [floor_def'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/floor-def--bb259528415d0e2495e95652.md) | 33 | `result-track:bb259528415d0e2495e9565241ef77ee8ed0750704e33b801eb646429acfb195` |
| 2 | `theorem` | [le_floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/le-floor--d83b9652b50063c0cc26630f.md) | 39 | `result-track:d83b9652b50063c0cc26630f1532cc4873c71715063648dcea229800af442fb1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/instance--187252d28bbbf66c7fa1164f.md) | 50 | `declaration-track:187252d28bbbf66c7fa1164f9f6c1b7f356dc86cfbdcb40abfaf117c3bbeb068` |
| 4 | `theorem` | [floor_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/floor-def--c18e975720c80da265f6f5a3.md) | 53 | `result-track:c18e975720c80da265f6f5a3006d4090b9031bea08d316606302cead3e137282` |
| 5 | `theorem` | [floor_int_div_nat_eq_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/floor-int-div-nat-eq-div--cae08f91c025fb185a78aba6.md) | 56 | `result-track:cae08f91c025fb185a78aba66bc7a9a212a52614df926e88adb33d75ed5e626c` |
| 6 | `theorem` | [floor_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/floor-cast--c4baafe85a3b9820b4be037f.md) | 70 | `result-track:c4baafe85a3b9820b4be037f9e3a9c632b07ab1fadeb1d07b0905b8a8fcd0745` |
| 7 | `theorem` | [ceil_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/ceil-cast--ee48b694f91136cc677428f0.md) | 75 | `result-track:ee48b694f91136cc677428f053af91eebcdab811c0028b984baaf53eba300763` |
| 8 | `theorem` | [round_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/round-cast--f522ac9897e08754a4ed86a6.md) | 80 | `result-track:f522ac9897e08754a4ed86a6c41893f6f8a429aff2f9772b5d1616f97cda65d7` |
| 9 | `theorem` | [cast_fract](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/cast-fract--7be155e25740e956a0fc0fab.md) | 88 | `result-track:7be155e25740e956a0fc0fabd0b636ca8144af1482e0694c8f6b02e7c0b87f3f` |
| 10 | `theorem` | [Int.mod_nat_eq_sub_mul_floor_rat_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/int-mod-nat-eq-sub-mul-floor-rat-div--c4140f1359c49b22eb4d7d05.md) | 94 | `result-track:c4140f1359c49b22eb4d7d05f9920195e83e0c994a9c3f243fffe9fafdf876c0` |
| 11 | `theorem` | [Nat.coprime_sub_mul_floor_rat_div_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/nat-coprime-sub-mul-floor-rat-div-of-coprime--d567afc8c940c02dd62be110.md) | 98 | `result-track:d567afc8c940c02dd62be1103e6b8508a25d40622a09d91781d1ee109043791b` |
| 12 | `theorem` | [num_lt_succ_floor_mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/num-lt-succ-floor-mul-den--99b9439e37799bdafb4aab89.md) | 108 | `result-track:99b9439e37799bdafb4aab895ebce395437a905f01a5442d8c86d19c90add57c` |
| 13 | `theorem` | [fract_inv_num_lt_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant33495d5326ad41bc2372280a85c452dc19a811b8af99c07f3ae0b67786dd3df8.lean/declarations/fract-inv-num-lt-num-of-pos--ee35ed3581875759b266d211.md) | 131 | `result-track:ee35ed3581875759b266d211331c0a40c39fadf9ba54fd3cbc546be4f17dbfc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

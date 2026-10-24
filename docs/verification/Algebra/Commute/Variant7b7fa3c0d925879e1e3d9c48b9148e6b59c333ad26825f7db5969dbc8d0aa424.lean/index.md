# Verification target: GRWTSK.Algebra.Commute.Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "286a61e7dd6645c4484bd0bc3df460929325ce92",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `286a61e7dd6645c4484bd0bc3df460929325ce92`.

Source path: `GRWTSK/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Semiconj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_inverse_rev'](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/mul-inverse-rev--ac735a054cf52d6f67292664.md) | 30 | `result-track:ac735a054cf52d6f672926648bb64381ea6c8e3482e19da529f1d4d63279df56` |
| 2 | `theorem` | [mul_inverse_rev](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/mul-inverse-rev--a31f20a24eb3c7bf9ed5cedf.md) | 39 | `result-track:a31f20a24eb3c7bf9ed5cedfc4a9258c87ae5d94f54841ebcb30b2bb91d7337e` |
| 3 | `lemma` | [inverse_pow](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/inverse-pow--e0dfde8b92b2e037777ea8fc.md) | 43 | `result-track:e0dfde8b92b2e037777ea8fc5a99464602747c82567ed0829f70f4e142d850da` |
| 4 | `lemma` | [inverse_pow_mul_eq_iff_eq_mul](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/inverse-pow-mul-eq-iff-eq-mul--373ab1a2090ec004f80296de.md) | 49 | `result-track:373ab1a2090ec004f80296dec131c910cbe114a1268ea9cbc56b80b8f2455787` |
| 5 | `theorem` | [Commute.ringInverse_ringInverse](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/commute-ringinverse-ringinverse--d3f89eb137acf178f4b4e3ab.md) | 55 | `result-track:d3f89eb137acf178f4b4e3ab9aca5c4a41ff63d084abbb017dcc8ccaaf677fdb` |
| 6 | `theorem` | [zero_right](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/zero-right--076e3971fbabb4d2a9c2fde5.md) | 66 | `result-track:076e3971fbabb4d2a9c2fde519981d4a07732610734dfb822f5e5dbdb49f568f` |
| 7 | `theorem` | [zero_left](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/zero-left--b0de4ec2cb20b4e94a27e9ba.md) | 70 | `result-track:b0de4ec2cb20b4e94a27e9ba0c31b88838387cacdd5a0a6ad7b6bee058c552dd` |
| 8 | `theorem` | [inv_left_iff₀](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/inv-left-iff--47ed7f5e2f0d1deb3d11d819.md) | 76 | `result-track:47ed7f5e2f0d1deb3d11d819b3af4233f2d28b1b06ee2ab2c10c7dfb3156e6a9` |
| 9 | `theorem` | [inv_left₀](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/inv-left--4afb3b0e9a0c0ecf6b6b2760.md) | 79 | `result-track:4afb3b0e9a0c0ecf6b6b2760868e63bdc4ea25133881de45b416ce62b3dcf00a` |
| 10 | `theorem` | [inv_right_iff₀](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/inv-right-iff--c6ff3db682f7980cf1b6748e.md) | 83 | `result-track:c6ff3db682f7980cf1b6748e9175a4c5484cef7477abc29850a3dbe462c53d70` |
| 11 | `theorem` | [inv_right₀](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/inv-right--ffef9d282c4e674e5454e3d2.md) | 86 | `result-track:ffef9d282c4e674e5454e3d2df7cca05ae0b25d6eaef0e5ffe79aef4b365afac` |
| 12 | `theorem` | [div_right](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/div-right--5869333589ada44961a8b5b0.md) | 90 | `result-track:5869333589ada44961a8b5b08cf00bb751564d8b7336c84a7f9664a81afa2dd3` |
| 13 | `theorem` | [div_left](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/div-left--2065659a290ab13d15b0dfc0.md) | 94 | `result-track:2065659a290ab13d15b0dfc0a33e1b706dd18edccf42ce98e92646118b970809` |
| 14 | `theorem` | [pow_inv_comm₀](../../../../mathematics/Algebra/Commute/Variant7b7fa3c0d925879e1e3d9c48b9148e6b59c333ad26825f7db5969dbc8d0aa424.lean/declarations/pow-inv-comm--350729cc0cbd07e272e20937.md) | 103 | `result-track:350729cc0cbd07e272e209371c972dadbf9a70c0d8dc3bc48ca2157ec2705ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

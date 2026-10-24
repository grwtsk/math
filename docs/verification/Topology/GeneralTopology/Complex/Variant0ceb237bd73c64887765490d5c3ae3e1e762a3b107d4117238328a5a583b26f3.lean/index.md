# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34180b091bfb196b07f06cddfb256d56fbe7c043",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34180b091bfb196b07f06cddfb256d56fbe7c043`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-zero-iff--2377ec220eb1a27480adb8c8.md) | 29 | `result-track:2377ec220eb1a27480adb8c8ce404fd4d110065bd73e9bc564860ddf81772c8e` |
| 2 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-ne-zero-iff--25153a76a050676ebbefae3e.md) | 39 | `result-track:25153a76a050676ebbefae3e2ce6a2f3ceb54163b38ba60b0a7e5b4a91903841` |
| 3 | `theorem` | [sin_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-eq-zero-iff--78a80ad7f600a5642ac7f688.md) | 42 | `result-track:78a80ad7f600a5642ac7f688965ac371b0f28e1722872bf57c709c0889caeb2b` |
| 4 | `theorem` | [sin_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-ne-zero-iff--a272c818e5f640b22256b59a.md) | 54 | `result-track:a272c818e5f640b22256b59af342eba141dcde53a01c6111fc2ae880a469912b` |
| 5 | `theorem` | [tan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-eq-zero-iff--2d0714878f7487da4ce588d9.md) | 62 | `result-track:2d0714878f7487da4ce588d92e806045e166bb504c631104b9164f4caf87a8cc` |
| 6 | `theorem` | [tan_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-ne-zero-iff--060f3d06a8ba72c527a1e99e.md) | 67 | `result-track:060f3d06a8ba72c527a1e99e2eb6296fa632ae5a835eb0834afc0dad12db7fbc` |
| 7 | `theorem` | [tan_int_mul_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-int-mul-pi-div-two--c2e888dc84bb1af22e6b7b48.md) | 70 | `result-track:c2e888dc84bb1af22e6b7b48064f4155e51b341ac1ebc0c3d1a63b96c1d4581c` |
| 8 | `theorem` | [tan_eq_zero_iff'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-eq-zero-iff--6c289884c00e26229e90b477.md) | 77 | `result-track:6c289884c00e26229e90b477398ed76324f549dc1dcf2570eccbf9e73c7873ea` |
| 9 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-cos-iff--fd0d86fe5c72c76e1d69fcd0.md) | 80 | `result-track:fd0d86fe5c72c76e1d69fcd05a6ecdfca84ec3a4c6e61e2087a6d476110f789d` |
| 10 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-eq-sin-iff--51617dd447747c876a533d63.md) | 93 | `result-track:51617dd447747c876a533d63122ba6d01fc3a86ce83828268d7d9b47ad0502d4` |
| 11 | `theorem` | [cos_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-one-iff--8ef094b6eab903ca7faf8610.md) | 98 | `result-track:8ef094b6eab903ca7faf8610a7706b3d554402fab8c3549cc167a340da246098` |
| 12 | `theorem` | [cos_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-neg-one-iff--fa4598bb627733b2287d34c3.md) | 102 | `result-track:fa4598bb627733b2287d34c32cfbdb046484d9396b843302c5f019b8d482c8f1` |
| 13 | `theorem` | [sin_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-eq-one-iff--9470efd8e3c9b971693b1214.md) | 106 | `result-track:9470efd8e3c9b971693b1214fbc021fbcc78378db0c21f4e82cd191cbd046299` |
| 14 | `theorem` | [sin_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-eq-neg-one-iff--915096b880b51cce72c8f976.md) | 110 | `result-track:915096b880b51cce72c8f976e85636d10f01131bf21a0268142fd25e11b89a4c` |
| 15 | `theorem` | [tan_add](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-add--77ccc9a6bab466cad2a1bc0e.md) | 114 | `result-track:77ccc9a6bab466cad2a1bc0e5cee9643b769931338671f1d10cd5fdbd7386108` |
| 16 | `theorem` | [tan_add'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-add--6ffbb12ab43f48ad71a1f3d4.md) | 130 | `result-track:6ffbb12ab43f48ad71a1f3d4e5aed14f6651c2f0e86f93db1ced41bd099629a5` |
| 17 | `theorem` | [tan_two_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-two-mul--46b8ef8a563b4a9f96bb13bf.md) | 135 | `result-track:46b8ef8a563b4a9f96bb13bf450a6c194bd104436c70ea206c49a5f4b47997e2` |
| 18 | `theorem` | [tan_add_mul_I](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-add-mul-i--1452f5932c81171bf264a2af.md) | 141 | `result-track:1452f5932c81171bf264a2af82539d59630a530d7eed9e131ade74ef5c1ed7ef` |
| 19 | `theorem` | [tan_eq](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-eq--7f39d68690442a916f473169.md) | 148 | `result-track:7f39d68690442a916f4731694dddb72eb0d483360977368a43b0540f1c8b8145` |
| 20 | `theorem` | [continuousOn_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/continuouson-tan--cf4dfbb2075396da413913cb.md) | 159 | `result-track:cf4dfbb2075396da413913cb8d96d1c70290b98af7b411508064b12079b07a67` |
| 21 | `theorem` | [continuous_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/continuous-tan--763e5d69f7bb1d90bb432554.md) | 163 | `result-track:763e5d69f7bb1d90bb432554fe1395523431e1cb09ef2573c116c69664e84c1c` |
| 22 | `theorem` | [cos_eq_iff_quadratic](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-iff-quadratic--61382f77b7c8b08e2c7c674e.md) | 166 | `result-track:61382f77b7c8b08e2c7c674eb3d5800e5698b5995a66339d83030a0231ccae1d` |
| 23 | `theorem` | [cos_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-surjective--eb0889553a00130e2c966a1e.md) | 173 | `result-track:eb0889553a00130e2c966a1eb177170da911b80b7201f40da8140bd4a1a87b45` |
| 24 | `theorem` | [range_cos](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/range-cos--7bc8cbbc815d6c6e50d5173f.md) | 188 | `result-track:7bc8cbbc815d6c6e50d5173f5a6d78970dd9d194a3d660fb48ab7d5770cf3183` |
| 25 | `theorem` | [sin_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-surjective--ae12204ce15a09d6ae0c44f5.md) | 191 | `result-track:ae12204ce15a09d6ae0c44f57db76c2bceeb0997b9d355ad5268070e314bde62` |
| 26 | `theorem` | [range_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/range-sin--59b1b52189974a10f6cc317a.md) | 197 | `result-track:59b1b52189974a10f6cc317a430a0d8b46a5df640dfd0de8a4467fbba21c629b` |
| 27 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-zero-iff--321b9d2e7a0d7e8d63def57a.md) | 206 | `result-track:321b9d2e7a0d7e8d63def57a00f1acd8322a463b6160cc8318e7399a4bf398d1` |
| 28 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-ne-zero-iff--901e961631c5435cfae66808.md) | 209 | `result-track:901e961631c5435cfae66808591f4eed36fb871b4b2cadbf1f835946279ae865` |
| 29 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-cos-iff--5093dbfc1e72135deda04c13.md) | 212 | `result-track:5093dbfc1e72135deda04c1352643b72e53c046a5277d5d752c2b0830a500c01` |
| 30 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-eq-sin-iff--a1941ada242e61d872bf94db.md) | 215 | `result-track:a1941ada242e61d872bf94db60fb1d7bf9d3e8da9834530baf4871d9e3b36778` |
| 31 | `theorem` | [cos_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/cos-eq-neg-one-iff--7d7fc5af877346218fbfb305.md) | 219 | `result-track:7d7fc5af877346218fbfb3053edccb3ee8c1d5fab1208cdb3e03399db466dcb9` |
| 32 | `theorem` | [sin_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-eq-one-iff--16033934927cc71051c146f1.md) | 222 | `result-track:16033934927cc71051c146f1dbe1b07385d470324cdba7de44a396e3080fae98` |
| 33 | `theorem` | [sin_eq_neg_one_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/sin-eq-neg-one-iff--b9995741002ad51d826006d5.md) | 225 | `result-track:b9995741002ad51d826006d52747c3ce30c7b0587d4cb15ba11dbb5b5166846f` |
| 34 | `theorem` | [tan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-eq-zero-iff--122dff856bcce90100a7a488.md) | 228 | `result-track:122dff856bcce90100a7a4884b74349425c3273bc5f69d24c9600990a2538e2e` |
| 35 | `theorem` | [tan_eq_zero_iff'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-eq-zero-iff--11b5ed79566eb4c85076baca.md) | 231 | `result-track:11b5ed79566eb4c85076baca0adcf46e24706d4b21892d0c2d85613c9274c194` |
| 36 | `theorem` | [tan_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant0ceb237bd73c64887765490d5c3ae3e1e762a3b107d4117238328a5a583b26f3.lean/declarations/tan-ne-zero-iff--358501557c63a05c0ceff463.md) | 235 | `result-track:358501557c63a05c0ceff463e178489b33495818034b1946295fdcaa6f1216ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

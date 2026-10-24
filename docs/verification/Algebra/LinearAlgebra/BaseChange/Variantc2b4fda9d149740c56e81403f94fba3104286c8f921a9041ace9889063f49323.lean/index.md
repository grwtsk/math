# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa5279c1231f11bf889c68d1d0ce694020ce695",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa5279c1231f11bf889c68d1d0ce694020ce695`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofBaseChangeAux](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/ofbasechangeaux--67ca149e6f5c3b189f122de0.md) | 46 | `declaration-track:67ca149e6f5c3b189f122de0db7b16c83fa1e114a46448becccee632cfe952fa` |
| 2 | `theorem` | [ofBaseChangeAux_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/ofbasechangeaux--d4c8335798eb1ed66e968fa9.md) | 54 | `result-track:d4c8335798eb1ed66e968fa931b74f501ae98f1149090117225214c155449f8d` |
| 3 | `def` | [ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/ofbasechange--691b4ec4f834dfc5cfc961d8.md) | 61 | `declaration-track:691b4ec4f834dfc5cfc961d80fe8a83c0253d2b6b97577335a4f1d0110f3e409` |
| 4 | `theorem` | [ofBaseChange_tmul_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/ofbasechange-tmul--a039cc34c4ab903727ebfa2b.md) | 66 | `result-track:a039cc34c4ab903727ebfa2bd57b81c2c764cb72331a07071d2058e94e028164` |
| 5 | `theorem` | [ofBaseChange_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/ofbasechange-tmul-one--afe8dd21820a576d17b25efa.md) | 72 | `result-track:afe8dd21820a576d17b25efa73035fe73d4ceb7993d05e6912e343d7dd0e51c9` |
| 6 | `def` | [toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange--dc92a89014a3b7d2c051019a.md) | 80 | `declaration-track:dc92a89014a3b7d2c051019abe1aadb43b8381fbc688e316a89758768ad6d282` |
| 7 | `theorem` | [toBaseChange_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange--779691faf6c0a0e4baf76893.md) | 101 | `result-track:779691faf6c0a0e4baf76893e1853780fd6d399a5bfd6d38f9ef6cb558b3bfad` |
| 8 | `theorem` | [toBaseChange_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange-comp-involute--510e5e3621f0de7c68ade1f2.md) | 105 | `result-track:510e5e3621f0de7c68ade1f24d9bd2afbfda89cd35b146365f62da13dd2301cb` |
| 9 | `theorem` | [toBaseChange_involute](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange-involute--9bda278cc8f185bc80b90364.md) | 117 | `result-track:9bda278cc8f185bc80b90364abaf9f8ebc1590bc5031defac00d0d46f646db9e` |
| 10 | `theorem` | [toBaseChange_comp_reverseOp](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange-comp-reverseop--157bf9881f9881430e8b957d.md) | 125 | `result-track:157bf9881f9881430e8b957dcd0b5cd0f7b7cb0628c84457860358148c437ffc` |
| 11 | `theorem` | [toBaseChange_reverse](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange-reverse--6599fcdd1cea12f4fa703f7b.md) | 141 | `result-track:6599fcdd1cea12f4fa703f7b5569d46af2e4c45e9c8beb51652f9c2277dd342a` |
| 12 | `theorem` | [toBaseChange_comp_ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange-comp-ofbasechange--5e0b64489fe68d8a6a5250bd.md) | 156 | `result-track:5e0b64489fe68d8a6a5250bd5cdea1ce98eea5b445efa5c9d8a1119a721f8bdb` |
| 13 | `theorem` | [toBaseChange_ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/tobasechange-ofbasechange--10812c8466a90f1263a227e7.md) | 161 | `result-track:10812c8466a90f1263a227e7cc19ca4fd158c0408fdba83bb53e2a1d04daeb31` |
| 14 | `theorem` | [ofBaseChange_comp_toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/ofbasechange-comp-tobasechange--345d6b99a100b45730106fea.md) | 165 | `result-track:345d6b99a100b45730106fea57463c3da6d651d1ae7ecc2819213d376bda78b0` |
| 15 | `theorem` | [ofBaseChange_toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/ofbasechange-tobasechange--578246043de2d5faed96436e.md) | 172 | `result-track:578246043de2d5faed96436efeb60b5b8343a8552a7c9298876d73dbf7ef79a4` |
| 16 | `def` | [equivBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/declarations/equivbasechange--2950643ea82121f71bb0c924.md) | 183 | `declaration-track:2950643ea82121f71bb0c92438251d69eded6c55b163323cc0b8fe0ae0951b3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

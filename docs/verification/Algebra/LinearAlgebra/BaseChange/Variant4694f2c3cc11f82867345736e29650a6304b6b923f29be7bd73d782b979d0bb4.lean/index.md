# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb22bb3e95b732e1f8cd77b73951d93802ae09dc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb22bb3e95b732e1f8cd77b73951d93802ae09dc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofBaseChangeAux](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/ofbasechangeaux--d199f4e62e1383120511a017.md) | 57 | `declaration-track:d199f4e62e1383120511a017c642b7d5b1e3c016def9785de59118b80119314f` |
| 2 | `theorem` | [ofBaseChangeAux_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/ofbasechangeaux--4feed454ba94256bb20d2144.md) | 65 | `result-track:4feed454ba94256bb20d21447194e00ae912e539b7c443a3b8822b7da1cc043d` |
| 3 | `def` | [ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/ofbasechange--e3a05d1ab18c4f417259faa7.md) | 71 | `declaration-track:e3a05d1ab18c4f417259faa7964a405ce27175db8aa4374e60558c40b498d5da` |
| 4 | `theorem` | [ofBaseChange_tmul_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/ofbasechange-tmul--67f28dad9365992a5b0f84ff.md) | 76 | `result-track:67f28dad9365992a5b0f84ff9f0fc352240b8a5d33890d7a308c594becf2b10d` |
| 5 | `theorem` | [ofBaseChange_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/ofbasechange-tmul-one--1ccd131a639ed17e3f5dd48b.md) | 82 | `result-track:1ccd131a639ed17e3f5dd48bc7ddac3b35b1c7fe1e1caa37a138e63883646fd9` |
| 6 | `def` | [toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange--8acf63b4e9a1f8e556b45537.md) | 90 | `declaration-track:8acf63b4e9a1f8e556b4553764ae2e8e5460afb8efdd158830803955138fe380` |
| 7 | `theorem` | [toBaseChange_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange--5a43538159f34187a1880fd9.md) | 111 | `result-track:5a43538159f34187a1880fd98eea361aabab51f9194ec1e7d995b50d54b703c7` |
| 8 | `theorem` | [toBaseChange_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange-comp-involute--e2c4821a396291102c7dbe8c.md) | 115 | `result-track:e2c4821a396291102c7dbe8cb0a76203e6bc450e5829678714f74d7838c4856a` |
| 9 | `theorem` | [toBaseChange_involute](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange-involute--297ae8b25f4896759bfef14e.md) | 127 | `result-track:297ae8b25f4896759bfef14e82158b4615a4c3fe196f60d0bfd9727ae46d1536` |
| 10 | `theorem` | [toBaseChange_comp_reverseOp](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange-comp-reverseop--a66c0411591d9fd463b82f61.md) | 135 | `result-track:a66c0411591d9fd463b82f61b45c6cbb352b0d7ff885896361aa6fc2ef7b0de8` |
| 11 | `theorem` | [toBaseChange_reverse](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange-reverse--11ad557f29d8b97f49772a32.md) | 151 | `result-track:11ad557f29d8b97f49772a3250c1ff1355364b8286eb24ff470929718581b89b` |
| 12 | `theorem` | [toBaseChange_comp_ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange-comp-ofbasechange--58e7aa11aa844b259e274941.md) | 165 | `result-track:58e7aa11aa844b259e274941235f50cd354bb10faac51a97cd41051f1c304129` |
| 13 | `theorem` | [toBaseChange_ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/tobasechange-ofbasechange--a4a103cb2a4d56761c44717b.md) | 170 | `result-track:a4a103cb2a4d56761c44717bab4dd707f5372f1491fc95117654e68d42acc383` |
| 14 | `theorem` | [ofBaseChange_comp_toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/ofbasechange-comp-tobasechange--d36e63c5724ab39da288ae4c.md) | 174 | `result-track:d36e63c5724ab39da288ae4c4763b77bd49c9ea831667e89649df8576e878b69` |
| 15 | `theorem` | [ofBaseChange_toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/ofbasechange-tobasechange--6f8fd84f0aadcf15ebd42a97.md) | 181 | `result-track:6f8fd84f0aadcf15ebd42a97ffbea536d7dca2dadd76622c3891d2fc6aa91dee` |
| 16 | `def` | [equivBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant4694f2c3cc11f82867345736e29650a6304b6b923f29be7bd73d782b979d0bb4.lean/declarations/equivbasechange--0b9bd7f13e0947de0aa18c73.md) | 191 | `declaration-track:0b9bd7f13e0947de0aa18c731a5b068693fe8f17fef0cb10efff0b5e3f356f60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

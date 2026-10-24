# Verification target: GRWTSK.Algebra.LinearAlgebra.Isometries.Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac6b62d0f006fdb40fd46b1db02354bada3e4696",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac6b62d0f006fdb40fd46b1db02354bada3e4696`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tmul_comp_tensorMap](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-comp-tensormap--261edf868977e1e9dc4605d0.md) | 39 | `result-track:261edf868977e1e9dc4605d02fa379aaf242f92cbfe1f21bf03e589e4378ada1` |
| 2 | `theorem` | [tmul_tensorMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-tensormap-apply--ca62ed0b8e682b9b505f93e6.md) | 51 | `result-track:ca62ed0b8e682b9b505f93e68e9e9a44f046a13bab63181be478729781b716b3` |
| 3 | `def` | [_root_.QuadraticMap.Isometry.tmul](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/root-quadraticmap-isometry-tmul--e173709bc7e5504e104faa8b.md) | 61 | `declaration-track:e173709bc7e5504e104faa8b2ba8584549c95eaf407116add9946be320833928` |
| 4 | `theorem` | [_root_.QuadraticMap.Isometry.tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/root-quadraticmap-isometry-tmul-apply--7f1a2787989648928870ef57.md) | 69 | `result-track:7f1a2787989648928870ef576f3372c2667e34893eee1f2f3968109c25947ee1` |
| 5 | `theorem` | [tmul_comp_tensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-comp-tensorcomm--04a6a88f3ed53e312beaf120.md) | 81 | `result-track:04a6a88f3ed53e312beaf120a462a3c7abf5a345e2e6b7d583c836d2ec08aacb` |
| 6 | `theorem` | [tmul_tensorComm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-tensorcomm-apply--f0ad6fd73b59717f587d7047.md) | 90 | `result-track:f0ad6fd73b59717f587d7047abecd4d86b3d500ff268a5e30e0d28218446978b` |
| 7 | `def` | [tensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorcomm--1a76a82ef6365cdf8982be72.md) | 97 | `declaration-track:1a76a82ef6365cdf8982be729d55ad21bd298be89f3cc35df661f06750d794b2` |
| 8 | `lemma` | [tensorComm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorcomm-apply--3b30b5a031b987b3251c30ef.md) | 102 | `result-track:3b30b5a031b987b3251c30ef93ee14c900f5a3cd0e6e347fa8ff43dcc2f33c7b` |
| 9 | `lemma` | [tensorComm_symm](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorcomm-symm--af603c235a907b7eef83a699.md) | 107 | `result-track:af603c235a907b7eef83a699a2323e14026dfd6eaca0fa0fb281f99ead7f5bf4` |
| 10 | `theorem` | [tmul_comp_tensorAssoc](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-comp-tensorassoc--78bf6c498fbfef1bf9b37482.md) | 116 | `result-track:78bf6c498fbfef1bf9b37482b6edf1689ad84630171e777193f648e07e41ad66` |
| 11 | `theorem` | [tmul_tensorAssoc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-tensorassoc-apply--ff535006ea095f1e396ac2c8.md) | 126 | `result-track:ff535006ea095f1e396ac2c8b24b2eb3314a95e13c09add78c4ff2678d9e93cd` |
| 12 | `def` | [tensorAssoc](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorassoc--cfa96d8182722e503a30d769.md) | 134 | `declaration-track:cfa96d8182722e503a30d76907422fed1b230e38ad12b2bd6234966d053f5f9b` |
| 13 | `lemma` | [tensorAssoc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorassoc-apply--20da778c9cc89a8adcb38487.md) | 139 | `result-track:20da778c9cc89a8adcb3848706bb427fbdae694f047beec19b7634f7621bc6e0` |
| 14 | `lemma` | [tensorAssoc_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorassoc-symm-apply--3b4d985e5f43064a78d74874.md) | 145 | `result-track:3b4d985e5f43064a78d748744637178ba7e59c3a5e4e98c39232b4a4df720f3c` |
| 15 | `theorem` | [comp_tensorRId_eq](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/comp-tensorrid-eq--7b98d8862ff39e3665819d2c.md) | 155 | `result-track:7b98d8862ff39e3665819d2ce932c5cb512cb45adf3e6cb4a50466a72e00ff36` |
| 16 | `theorem` | [tmul_tensorRId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-tensorrid-apply--408d19baae3ab3b95e0d9822.md) | 164 | `result-track:408d19baae3ab3b95e0d9822c772b2c993789a61186fb2f73baeaff7f630bb75` |
| 17 | `def` | [tensorRId](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorrid--2ec8b9a4c2327bf1c13b679a.md) | 171 | `declaration-track:2ec8b9a4c2327bf1c13b679a36a59e367373e8cde3c412909555e3404a2e2938` |
| 18 | `lemma` | [tensorRId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorrid-apply--431cc23445a92655a43c99f7.md) | 176 | `result-track:431cc23445a92655a43c99f7c285281f70320dfa8ac2e8d93fd0eda423f537bf` |
| 19 | `lemma` | [tensorRId_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorrid-symm-apply--08a78219321fea0208a97da8.md) | 180 | `result-track:08a78219321fea0208a97da87f735a2a28a8e1c2377d4038c9f7e24459c2b6ed` |
| 20 | `theorem` | [comp_tensorLId_eq](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/comp-tensorlid-eq--f03c2a40deceecfaf4616eee.md) | 188 | `result-track:f03c2a40deceecfaf4616eee08f50bb65ae06de8503f7b353637300fd3fec7a0` |
| 21 | `theorem` | [tmul_tensorLId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tmul-tensorlid-apply--5204da3eb594814d929ad6ff.md) | 197 | `result-track:5204da3eb594814d929ad6ff628a4ea737cf2fdd70d8029595536fa0ae7f0565` |
| 22 | `def` | [tensorLId](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorlid--1e2033283c52e773582e1740.md) | 204 | `declaration-track:1e2033283c52e773582e1740a45188c89359495ed56403660945eb8daa4b5378` |
| 23 | `lemma` | [tensorLId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorlid-apply--2dcd572638a2aa780662f4ec.md) | 209 | `result-track:2dcd572638a2aa780662f4ece91cd3d6dc480cbea835e3bfd7f515c805627ff7` |
| 24 | `lemma` | [tensorLId_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/declarations/tensorlid-symm-apply--46f1416dcf83226ac70a936c.md) | 213 | `result-track:46f1416dcf83226ac70a936cbbc83b3285140cc7b9aab425573f98d072f6846b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

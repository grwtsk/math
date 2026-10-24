# Verification target: GRWTSK.Algebra.QuarticMatchingAction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "919e3dcba1c6b477325913c31e4c8c594d84a004",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticMatchingAction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticMatchingAction.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticMatchingAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `919e3dcba1c6b477325913c31e4c8c594d84a004`.

Source path: `GRWTSK/Algebra/QuarticMatchingAction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticMatchingAction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.PolygonalQuarticSeparable`](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vertex](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/vertex--74c484888170dc1e20ac3def.md) | 22 | `declaration-track:74c484888170dc1e20ac3defa082849fc9d5afba954c0c5038d27c291fe63461` |
| 2 | `abbrev` | [Edge](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/edge--b061e8fb3704e91cebadb487.md) | 23 | `declaration-track:b061e8fb3704e91cebadb487dd982146bf7433ce34a385c3f1a2f498ba89d00e` |
| 3 | `abbrev` | [Matching](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matching--4bd451301611e7048e61f5f2.md) | 24 | `declaration-track:4bd451301611e7048e61f5f281660379b7b89b5d6500f47d814ba54ac0579ea3` |
| 4 | `def` | [pair](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/pair--2835b47076f83057a073e630.md) | 27 | `declaration-track:2835b47076f83057a073e630789ff6758ab3b6a7e426a46d292fb43d2906450f` |
| 5 | `def` | [matching01_23](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matching01-23--e65c589a3c4e76a5fc2a586f.md) | 30 | `declaration-track:e65c589a3c4e76a5fc2a586f26e34c1a2e31bfe888bc08df9db16648e4246f3a` |
| 6 | `def` | [matching02_13](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matching02-13--9728ff004d2265ef71d17dba.md) | 31 | `declaration-track:9728ff004d2265ef71d17dba74167cddd814aa37d4378a9a7e771e9863f39c66` |
| 7 | `def` | [matching03_12](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matching03-12--d792186cfe1b8cb31c1560b1.md) | 32 | `declaration-track:d792186cfe1b8cb31c1560b1f84636302f0c0fec9b4987c29d97febaf178c4a0` |
| 8 | `def` | [threeMatchings](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/threematchings--2e5037d45dc636a9c46746aa.md) | 35 | `declaration-track:2e5037d45dc636a9c46746aa188c84da8db7508a3461d1211da96f6fb63730a6` |
| 9 | `theorem` | [threeMatchings_card](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/threematchings-card--63aec4f393883f684b90d5a7.md) | 38 | `result-track:63aec4f393883f684b90d5a7fa913af7245b0cf85711a3e5eeb2d50b2d9fc291` |
| 10 | `def` | [relabel](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/relabel--ba9e4e6b61b29ba510c7b4f8.md) | 42 | `declaration-track:ba9e4e6b61b29ba510c7b4f83e7d46804a79c2c2a52bbb1ffcb06da385ca924c` |
| 11 | `theorem` | [relabel_one](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/relabel-one--54cea491a8efd962489e400c.md) | 45 | `result-track:54cea491a8efd962489e400cbbd268345f44de727ce5971227528b4926ec17aa` |
| 12 | `theorem` | [relabel_mul](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/relabel-mul--b5959f8d664208022ec38a6c.md) | 50 | `result-track:b5959f8d664208022ec38a6c6651500b611b8831b12e2fcb6b9882f7dff00204` |
| 13 | `theorem` | [swap_takes_first_to_second](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/swap-takes-first-to-second--a927c8a46759736fd42e3cac.md) | 56 | `result-track:a927c8a46759736fd42e3cacca85d12ee4290e19a9faf06bbf724ebb58129dc7` |
| 14 | `theorem` | [swap_takes_second_to_first](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/swap-takes-second-to-first--61b8d42cf5e361f9a08678ff.md) | 61 | `result-track:61b8d42cf5e361f9a08678ffae5c0a52d811a5c9d2bb74b5cf00941260d7145d` |
| 15 | `theorem` | [reference_matchings_distinct](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/reference-matchings-distinct--3bd4e831dce394704b5af72a.md) | 68 | `result-track:3bd4e831dce394704b5af72a4d4110a3e85776e71d9acb333e9574e2d0e4ffd1` |
| 16 | `theorem` | [threeMatchings_closed](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/threematchings-closed--dac1e265decd2564098cc604.md) | 77 | `result-track:dac1e265decd2564098cc604aefd75037bafc20d7a7cdae92f6b87ed0b5e2323` |
| 17 | `def` | [PerfectMatching](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/perfectmatching--c3a7ae1716b4206529d19a48.md) | 94 | `declaration-track:c3a7ae1716b4206529d19a48ff529d3e11aa60222f60a25dca4bf4a43d9d8cca` |
| 18 | `instance` | [(anonymous)](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/instance--6288ec4b86ee0140c780943a.md) | 96 | `declaration-track:6288ec4b86ee0140c780943afbccff5d7a59f312cdbd587fdb849b2b4d54d2eb` |
| 19 | `instance` | [(anonymous)](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/instance--014ab89d2d268ea5a637097a.md) | 99 | `declaration-track:014ab89d2d268ea5a637097a3fcd2c5836f1bee3094324a507e6d773d0258f41` |
| 20 | `def` | [matchingPerm](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matchingperm--097c25ec454faf8691cfac4d.md) | 104 | `declaration-track:097c25ec454faf8691cfac4dca3260f3d736d7dacec9ef4d5cfb67dc2d3d29e1` |
| 21 | `def` | [matchingActionHom](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matchingactionhom--9206657507eda679bb464f1d.md) | 117 | `declaration-track:9206657507eda679bb464f1d53f110c386ab77951b918d4167b48a8c2f1661d5` |
| 22 | `theorem` | [matchingActionHom_nontrivial](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matchingactionhom-nontrivial--4e796a3bde7d489c9464a698.md) | 130 | `result-track:4e796a3bde7d489c9464a69859b574b1bdabb31ca7d049e21a485d599a3368a0` |
| 23 | `def` | [double01_23](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/double01-23--362658afdc341fff16f1a188.md) | 142 | `declaration-track:362658afdc341fff16f1a188f66667ebd4273c49e49378609bec2c40c962c032` |
| 24 | `def` | [double02_13](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/double02-13--90733fd7ebab89abc93476fa.md) | 145 | `declaration-track:90733fd7ebab89abc93476fab1187477b6dba97b1d1117d040378c6d3c689850` |
| 25 | `def` | [double03_12](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/double03-12--688d1385ec57ef7e3f028343.md) | 148 | `declaration-track:688d1385ec57ef7e3f0283432358c327107310a5777d27c4e5329f20ce423668` |
| 26 | `theorem` | [matchingActionHom_surjective](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matchingactionhom-surjective--33f71a52027531896899cdb3.md) | 152 | `result-track:33f71a52027531896899cdb3fce5db87bc19fc1e36bc84eda36f2192465c9790` |
| 27 | `theorem` | [matchingActionHom_kernel_iff](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matchingactionhom-kernel-iff--caaf540af9f84a952989a4fc.md) | 160 | `result-track:caaf540af9f84a952989a4fcd49e485a33172f0c8fe3fe3c392a248eb0a311db` |
| 28 | `theorem` | [kernel_representatives_distinct](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/kernel-representatives-distinct--d558618b7086c5e89b78152d.md) | 173 | `result-track:d558618b7086c5e89b78152d2b971f3838d84f8969350db746f46c038f5f1aa1` |
| 29 | `theorem` | [matchingActionHom_mem_ker_iff](../../../mathematics/Algebra/QuarticMatchingAction.lean/declarations/matchingactionhom-mem-ker-iff--95eb4218622be124c3cc4d3b.md) | 183 | `result-track:95eb4218622be124c3cc4d3ba5f6bd2e72f101486e9dbecd9ecdf018d1abbd57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

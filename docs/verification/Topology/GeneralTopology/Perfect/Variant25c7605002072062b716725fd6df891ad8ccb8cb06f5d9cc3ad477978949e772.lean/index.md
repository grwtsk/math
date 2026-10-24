# Verification target: GRWTSK.Topology.GeneralTopology.Perfect.Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bef9196e073c8bbd8a4216704cb26a88bf810b24",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bef9196e073c8bbd8a4216704cb26a88bf810b24`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Polish` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CantorScheme` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/accpt-nhds-inter--9aacba1536bbeab76273e0b4.md) | 62 | `result-track:9aacba1536bbeab76273e0b4a510c150e2b547613078db88ea13702672412edc` |
| 2 | `def` | [Preperfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/preperfect--c4a7ce12e1b9850b231b7282.md) | 74 | `declaration-track:c4a7ce12e1b9850b231b7282c31ecddb6f382b713b3a0a7c5b016da5f676cb75` |
| 3 | `structure` | [Perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/perfect--74db60424e54b360f2973532.md) | 81 | `declaration-track:74db60424e54b360f29735321d9f5951ba7be0ff5afdaee4e1784a66ec6b8834` |
| 4 | `theorem` | [preperfect_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/preperfect-iff-nhds--e7bb834537cff058316f9133.md) | 86 | `result-track:e7bb834537cff058316f9133b70cd21b23d01713118f7aab708670a8b8539def` |
| 5 | `theorem` | [Preperfect.open_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/preperfect-open-inter--2329cf4908945e7b24ef40e4.md) | 91 | `result-track:2329cf4908945e7b24ef40e4878ef3488fa9a49f533df1703214193cb09345e4` |
| 6 | `theorem` | [Preperfect.perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/preperfect-perfect-closure--620402aab5e26eca0b981dc8.md) | 100 | `result-track:620402aab5e26eca0b981dc8fd6f7026265f8a4d565a2f883b860968aff93fc2` |
| 7 | `theorem` | [preperfect_iff_perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/preperfect-iff-perfect-closure--fe75041a590b5c247e627bac.md) | 112 | `result-track:fe75041a590b5c247e627bac791f52ccd1e99b276d874bbd846089fd577be04a` |
| 8 | `theorem` | [Perfect.closure_nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/perfect-closure-nhds-inter--da6f530afe9e217995f6b930.md) | 127 | `result-track:da6f530afe9e217995f6b9306f38f3648b891381ef7cc2a5831ef0b484e5b255` |
| 9 | `theorem` | [Perfect.splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/perfect-splitting--ac6cc853dd3583f7f8f7d41e.md) | 138 | `result-track:ac6cc853dd3583f7f8f7d41edab315b8455dc9abc004bbc725983e6dad2aee2b` |
| 10 | `theorem` | [exists_countable_union_perfect_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/exists-countable-union-perfect-of-isclosed--21d4dbe2d915f75ae86168ef.md) | 164 | `result-track:21d4dbe2d915f75ae86168ef6b35424c48106a2a127f3889960c9d9f93702057` |
| 11 | `theorem` | [exists_perfect_nonempty_of_isClosed_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/exists-perfect-nonempty-of-isclosed-of-not-countable--98cc3a99f9d12ba800831cdf.md) | 200 | `result-track:98cc3a99f9d12ba800831cdf06390156a5034ba6513bf6811347da8f15bb9acc` |
| 12 | `theorem` | [Perfect.small_diam_aux](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/perfect-small-diam-aux--32517679899e671d906e9f74.md) | 224 | `result-track:32517679899e671d906e9f747ce5f409398e55a0ff14e9b6637dfb22cc4d45b0` |
| 13 | `theorem` | [Perfect.small_diam_splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/perfect-small-diam-splitting--e0e9286a4eff4f1139e94a31.md) | 244 | `result-track:e0e9286a4eff4f1139e94a31436a151d968a25ad48f5814d7508f31754c8dba1` |
| 14 | `theorem` | [Perfect.exists_nat_bool_injection](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/perfect-exists-nat-bool-injection--fd4f7473e1a3484d51227d01.md) | 262 | `result-track:fd4f7473e1a3484d51227d01263dc367827596fab253f2f41e2fe45ade98e9ed` |
| 15 | `theorem` | [IsClosed.exists_nat_bool_injection_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant25c7605002072062b716725fd6df891ad8ccb8cb06f5d9cc3ad477978949e772.lean/declarations/isclosed-exists-nat-bool-injection-of-not-countable--dcbf2d5dd085e3b159dd818c.md) | 318 | `result-track:dcbf2d5dd085e3b159dd818ceaaa80f65ec77751c0a009ed3021ff4b9764d914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

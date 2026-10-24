# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DershowitzManna.Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0267cead749bdb9b001342a2817104e178710e9c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0267cead749bdb9b001342a2817104e178710e9c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.OrderedMonoid` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/isdershowitzmannalt--8161df1d2409b7b74de8d110.md) | 51 | `declaration-track:8161df1d2409b7b74de8d1109265ac87111247e79e03df065577276c11ca4122` |
| 2 | `lemma` | [IsDershowitzMannaLT.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/isdershowitzmannalt-trans--eddbbdbfedea5ede2549a9a0.md) | 59 | `result-track:eddbbdbfedea5ede2549a9a0c7847283a062e4a518a74270543233603f24bd77` |
| 3 | `def` | [OneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/onestep--29b1e10013ad0f08cbc7bee9.md) | 81 | `declaration-track:29b1e10013ad0f08cbc7bee96238b0aeaa96f2ab0f99306285b73c49dade2cac` |
| 4 | `lemma` | [isDershowitzMannaLT_of_oneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/isdershowitzmannalt-of-onestep--ff3d6442db7676c3a53d2bcd.md) | 87 | `result-track:ff3d6442db7676c3a53d2bcd3c4fdd503f326dc99509994d65e5a0b998902f17` |
| 5 | `lemma` | [isDershowitzMannaLT_singleton_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/isdershowitzmannalt-singleton-insert--ff82a61017a44ac2f7570932.md) | 92 | `result-track:ff82a61017a44ac2f7570932d31f0d36e2ef6e116a35ea6103c233762cd114ca` |
| 6 | `lemma` | [acc_oneStep_cons_of_acc_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/acc-onestep-cons-of-acc-lt--8ab12b0280d1e62d883894da.md) | 109 | `result-track:8ab12b0280d1e62d883894dac18c4fd2652219a1b91d7fcc57fde229694f9abb` |
| 7 | `lemma` | [acc_oneStep_of_acc_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/acc-onestep-of-acc-lt--f5b275cb6bb3048899e8e1eb.md) | 128 | `result-track:f5b275cb6bb3048899e8e1eba1b56504771258974c6d67ff5d5b40ecf444a7b0` |
| 8 | `lemma` | [isDershowitzMannaLT_singleton_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/isdershowitzmannalt-singleton-wf--68d308678b1675823936bdac.md) | 138 | `result-track:68d308678b1675823936bdac126ca1ea1e14d35eba533e509f4c73bdc3b7f69f` |
| 9 | `lemma` | [transGen_oneStep_of_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/transgen-onestep-of-isdershowitzmannalt--0346b7f5ee0c2892e9a9342a.md) | 142 | `result-track:0346b7f5ee0c2892e9a9342a78b9c8fdb3d6c0a0905fa61fc0d8417575a9b846` |
| 10 | `lemma` | [isDershowitzMannaLT_of_transGen_oneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/isdershowitzmannalt-of-transgen-onestep--128863947589fb8c54dbc320.md) | 157 | `result-track:128863947589fb8c54dbc32042fc0c2a43a2a8add1f5cca649050017aa85c76d` |
| 11 | `lemma` | [transGen_oneStep_eq_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/transgen-onestep-eq-isdershowitzmannalt--12505d2a715c7730c80f4236.md) | 163 | `result-track:12505d2a715c7730c80f4236fd694cd71eecce79ecfcf49bee0ff2d31e5c537f` |
| 12 | `theorem` | [wellFounded_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/wellfounded-isdershowitzmannalt--d54672eb96a396f73a33529e.md) | 169 | `result-track:d54672eb96a396f73a33529e6b7f8de180556e13ad79962a8426aa1731c60b6b` |
| 13 | `instance` | [instWellFoundedisDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant1ce0827fe1ae03cde16e490554eef0173f498f969de57379c35cf7d2513b82df.lean/declarations/instwellfoundedisdershowitzmannalt--b267bf0d6e7f9cc1d9aee68c.md) | 174 | `declaration-track:b267bf0d6e7f9cc1d9aee68cb2b0419ad4353e724bc99bd474134c0ce42e46af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Tree.Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aa1a55c83dd0560cc38a479656295fc8692d949",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aa1a55c83dd0560cc38a479656295fc8692d949`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/ctree--552bd61d4445ef85eed60eff.md) | 27 | `declaration-track:552bd61d4445ef85eed60eff551783e934c5b686a63b125c81cac2a48e55e564` |
| 2 | `def` | [internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/internal--ab30f1ffe8e2f886bab78367.md) | 34 | `declaration-track:ab30f1ffe8e2f886bab78367523b4a3aec9d1f089b95e209d4e99b1a8d9cddf7` |
| 3 | `def` | [leaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/leaves--67474a408af1173ff8e88f23.md) | 38 | `declaration-track:67474a408af1173ff8e88f23bf80fa97c6a2cd8f0751332991785c8edccb68f6` |
| 4 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/depth--8e2b37393e8145a302480a34.md) | 42 | `declaration-track:8e2b37393e8145a302480a34ae802995972b94b5a2db466d55c862d669a9b70e` |
| 5 | `def` | [mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/mirror--24b5385320f4268362fe4400.md) | 46 | `declaration-track:24b5385320f4268362fe440070d8f9507ca94339be5642da52bf80c361173c4b` |
| 6 | `theorem` | [leaves_eq_internal_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/leaves-eq-internal-add-one--a34e8c35dd5f9f53c7cd1784.md) | 51 | `result-track:a34e8c35dd5f9f53c7cd17841f710f686b6674d41b7e9591ea10b42d37888a44` |
| 7 | `theorem` | [mirror_mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/mirror-mirror--dde43bbe389554c777668141.md) | 61 | `result-track:dde43bbe389554c77766814135aae3dadbfb262a0a1dd6a78baa6054b3f99acc` |
| 8 | `theorem` | [internal_mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/internal-mirror--b0805170aafa1777d1bbb951.md) | 70 | `result-track:b0805170aafa1777d1bbb951139e2ec8df0914bf184185aa5231b90a17809ff2` |
| 9 | `theorem` | [leaves_mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f.lean/declarations/leaves-mirror--9ec47d529d2595e94e740e40.md) | 80 | `result-track:9ec47d529d2595e94e740e40dcc38f22dcb625c6a9df1c59abc1929d98ed2dea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fin.Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "027350c69ca700a95e9597018fb5e31d24c069a1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `027350c69ca700a95e9597018fb5e31d24c069a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Single` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/tail--c59b8aabf4303f2908db2a75.md) | 29 | `declaration-track:c59b8aabf4303f2908db2a751fea205348acf675c313e5222e6394ee637d4bfd` |
| 2 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons--c52b15f08e414d79cd93d15e.md) | 33 | `declaration-track:c52b15f08e414d79cd93d15ef2b5937fea56ad9c2c6ddf5ec2cf1537de515b13` |
| 3 | `theorem` | [tail_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/tail-apply--005903e580846605e7bd326a.md) | 36 | `result-track:005903e580846605e7bd326ab03ee6051e04cf6b309a0ff1fc336bdccd928ada` |
| 4 | `theorem` | [cons_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-zero--129509b964bf939298db7d47.md) | 40 | `result-track:129509b964bf939298db7d4779da65da091312f623e8bb7c6c2239043ed4c8c2` |
| 5 | `theorem` | [cons_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-succ--e4e3d8ce66810a5da4cafcbb.md) | 44 | `result-track:e4e3d8ce66810a5da4cafcbbc47f62a15a8e4cff4c2d6de095fecfec40eea356` |
| 6 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/tail-cons--d78af3f10ced5a952003321e.md) | 48 | `result-track:d78af3f10ced5a952003321e750d78b672118509ab61324b8e168b5463542194` |
| 7 | `theorem` | [tail_update_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/tail-update-zero--53a7f11a63cee924550d6212.md) | 52 | `result-track:53a7f11a63cee924550d62121d49c8cbd64412c6b80d48ef9275e622dcefadd5` |
| 8 | `theorem` | [tail_update_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/tail-update-succ--010a271e7f705427f61f1c74.md) | 55 | `result-track:010a271e7f705427f61f1c746f7e52d6c9f98d6b5abff1e55e212c92911d3b33` |
| 9 | `theorem` | [cons_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-tail--b0ba33558a822b24b6a4bd4a.md) | 58 | `result-track:b0ba33558a822b24b6a4bd4a91b476f0b498fcf8d0b292827c899606fb6674f1` |
| 10 | `theorem` | [cons_zero_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-zero-zero--ef6b62355f7ce536e8a03671.md) | 65 | `result-track:ef6b62355f7ce536e8a03671a481f23b375a85d2698f10ab4b232c1bdf99d376` |
| 11 | `theorem` | [cons_ne_zero_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-ne-zero-of-left--494f19e6e50280468f5fc8fe.md) | 74 | `result-track:494f19e6e50280468f5fc8fe9680dc109f3019b12b9da9405214d939ae1507ab` |
| 12 | `theorem` | [cons_ne_zero_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-ne-zero-of-right--28e15cc938391b67d37cea9e.md) | 78 | `result-track:28e15cc938391b67d37cea9e29fd83ac69a4814f8a760ae7e190c77a50090535` |
| 13 | `theorem` | [cons_ne_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-ne-zero-iff--499bcff0f14adda6dcbb130a.md) | 83 | `result-track:499bcff0f14adda6dcbb130a221ed0786fd97b94e05695935f04923df3a004aa` |
| 14 | `lemma` | [cons_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-support--7f818aaba3a86c302e7d5999.md) | 88 | `result-track:7f818aaba3a86c302e7d5999810a91f5e9ea88c35a75564a0ffe3d25fd4d5cdd` |
| 15 | `lemma` | [cons_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant0ca198a6bbe9b8a3d1e5c3c6cb49ec729d2a96df67a701d57ab5000364e05358.lean/declarations/cons-right-injective--82982b454c954f517c722bc8.md) | 95 | `result-track:82982b454c954f517c722bc844991127bec24ee5beadf88a1fa15b23d8660130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

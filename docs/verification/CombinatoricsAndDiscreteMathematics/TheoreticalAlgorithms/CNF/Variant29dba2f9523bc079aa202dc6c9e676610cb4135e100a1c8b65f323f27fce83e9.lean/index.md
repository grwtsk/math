# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CNF.Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Literal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/literal--ed057660e84f7e84c686e4a5.md) | 12 | `declaration-track:ed057660e84f7e84c686e4a591a557d43d3efc21c792dfe3c8d5f89eb21c0a09` |
| 2 | `abbrev` | [Clause](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/clause--38b8d066673392e287ada9d2.md) | 18 | `declaration-track:38b8d066673392e287ada9d27fabf6ef3fb26ff4f6f39a30ff9b754bc8185775` |
| 3 | `def` | [Literal.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/literal-eval--d8d46cce60283ee814f7ec2b.md) | 22 | `declaration-track:d8d46cce60283ee814f7ec2b0409e792bd385c140331193ee6a8a6857e84f6f3` |
| 4 | `def` | [Literal.toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/literal-toformula--abaaa303f36122ce337573dd.md) | 27 | `declaration-track:abaaa303f36122ce337573ddae70d9c16cae8bb0e3fdbaf56707d556da7d438e` |
| 5 | `theorem` | [Literal.eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/literal-eval-toformula--b0f4923599a7e7a7c732d273.md) | 31 | `result-track:b0f4923599a7e7a7c732d273dc116c25f7f39bb41b2024d56b5863b6122c5f24` |
| 6 | `def` | [Clause.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/clause-eval--357454bf5f803f429b125449.md) | 38 | `declaration-track:357454bf5f803f429b12544998b50603def9e25b29e5c91a9a0fd41e24b5feea` |
| 7 | `def` | [Clause.toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/clause-toformula--c40b38f5b4b4c112eb0ac42b.md) | 43 | `declaration-track:c40b38f5b4b4c112eb0ac42bc246301fbf3276cee1198c47f6a1d54ccfefd990` |
| 8 | `theorem` | [Clause.eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/clause-eval-toformula--225f5cd847cdc9110c1febbd.md) | 47 | `result-track:225f5cd847cdc9110c1febbda018ebeb5e049a5196d5c244ecb1598f894cd592` |
| 9 | `structure` | [CNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/cnf--44279f742dd65af86ecd51b6.md) | 59 | `declaration-track:44279f742dd65af86ecd51b62a316120a041c1f28f4cdef2c920500f5e0d6ea6` |
| 10 | `def` | [evalClauses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/evalclauses--d88966dfa6960590c1046819.md) | 66 | `declaration-track:d88966dfa6960590c1046819433a11e663950e49781352173cb9370f4f586a09` |
| 11 | `def` | [clausesToFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/clausestoformula--03b46dd64945ab6e16589106.md) | 71 | `declaration-track:03b46dd64945ab6e165891067ef0f015b8c4bbe69b8a2b309c3e778eaa77c5ea` |
| 12 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval--69c02b7623b557d75493e07f.md) | 76 | `declaration-track:69c02b7623b557d75493e07f8f8b54927d5bbbb3c4728036ce82f158afd15969` |
| 13 | `def` | [toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/toformula--a8113c07935b72103ef9399b.md) | 80 | `declaration-track:a8113c07935b72103ef9399bb6159461f4f5043053786346102dc2c81f826270` |
| 14 | `theorem` | [evalClauses_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/evalclauses-toformula--34d6e7c40587e8a9c0325aa3.md) | 83 | `result-track:34d6e7c40587e8a9c0325aa3f642b9a26ccfa4f184937f927435cbbe2af98221` |
| 15 | `theorem` | [eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-toformula--739b7844ee4ecb878ca69d59.md) | 92 | `result-track:739b7844ee4ecb878ca69d59330f7c34818a598c808ad515ab910bd3fd6594d9` |
| 16 | `def` | [truth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/truth--e47eacda6118cf2e5d2b669b.md) | 100 | `declaration-track:e47eacda6118cf2e5d2b669b84630dc283dad2741d49b86bcd9b0c16cc2a0a7b` |
| 17 | `def` | [falsum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/falsum--7b75b2339e6434d217e0e0ec.md) | 104 | `declaration-track:7b75b2339e6434d217e0e0ecf353766e0dc0e2af19188f98dbbb4c8f552cc640` |
| 18 | `def` | [literal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/literal--a150bca8e0f302507ada2bdb.md) | 108 | `declaration-track:a150bca8e0f302507ada2bdb5dc5a8adf656bfbdaeecdc2d2d67bd9bdeed5ae9` |
| 19 | `def` | [conj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/conj--442604076c94693171ad5a30.md) | 112 | `declaration-track:442604076c94693171ad5a3002e2516fd08ee2f42219181d76899afd4ab556fe` |
| 20 | `def` | [disjoinClauses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/disjoinclauses--a06a90d460ff6f3152c48abf.md) | 116 | `declaration-track:a06a90d460ff6f3152c48abf844db67bbf0fcf4288596638e1b7ca2548bf39ca` |
| 21 | `def` | [disj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/disj--9543bcb117f408ae5f913d4b.md) | 124 | `declaration-track:9543bcb117f408ae5f913d4bf0490820ba0a39d272d14fa51b8dded4c5183bd7` |
| 22 | `theorem` | [Clause.eval_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/clause-eval-append--33908d5eaa91fb012324fdbc.md) | 127 | `result-track:33908d5eaa91fb012324fdbc44b5c267254e4db818d832a9a808bdcb681122a3` |
| 23 | `theorem` | [evalClauses_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/evalclauses-append--90ab9037932972d91fd7b1e7.md) | 140 | `result-track:90ab9037932972d91fd7b1e76f5d687cb30840076c8cca55551ed76ae2da3f21` |
| 24 | `theorem` | [evalClauses_map_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/evalclauses-map-append-left--4c46725cf21b3881ceefaf92.md) | 153 | `result-track:4c46725cf21b3881ceefaf92a614b3e663cbc719aa6f33fbc94006a7c14a9bf7` |
| 25 | `theorem` | [eval_disjoinClauses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-disjoinclauses--58d80f904a43853647965ef3.md) | 168 | `result-track:58d80f904a43853647965ef34102b8cc81688002d58d45569250b75da155a71f` |
| 26 | `theorem` | [eval_truth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-truth--4e6120ca8a65fbe50d853477.md) | 196 | `result-track:4e6120ca8a65fbe50d853477230466c3d4e6d39a794d06a14a2b189caf6097a5` |
| 27 | `theorem` | [eval_falsum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-falsum--ff9e390a737cd570af43e7cc.md) | 200 | `result-track:ff9e390a737cd570af43e7ccc5735fefad14f9edee2ff8eaf6ec09dc5d09ac1e` |
| 28 | `theorem` | [eval_literal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-literal--a8bec919214b2ac592dec35d.md) | 204 | `result-track:a8bec919214b2ac592dec35dae57c63f79d997c0999a01283f8473ec664f7826` |
| 29 | `theorem` | [eval_conj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-conj--d325263326f5fd6d931307e8.md) | 210 | `result-track:d325263326f5fd6d931307e80eef185190ec3bf6ae79f713802bd0d5b0ccb4c4` |
| 30 | `theorem` | [eval_disj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-disj--530bc42a603d812cf186b5c2.md) | 218 | `result-track:530bc42a603d812cf186b5c273ba75de62e1ef16620f1e038b05d6426c528505` |
| 31 | `def` | [toCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/tocnf--f49bc761c610bb7824638712.md) | 231 | `declaration-track:f49bc761c610bb7824638712ed540303727c0ec244b03729d0dae52785e19aa4` |
| 32 | `def` | [negToCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/negtocnf--4e9d1f25a2c806a2908dfbd8.md) | 245 | `declaration-track:4e9d1f25a2c806a2908dfbd8495e6bd9c7fe3bb7c531b1f3748cc112c3c68229` |
| 33 | `theorem` | [eval_toCNF_and_negToCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-tocnf-and-negtocnf--dd7ba7dc694b7223a5fc71c2.md) | 260 | `result-track:dd7ba7dc694b7223a5fc71c24d6a8e36d49da59a96543a244c854edc6673c647` |
| 34 | `theorem` | [eval_toCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-tocnf--12e11e8d7b314bfb7bb82bf2.md) | 301 | `result-track:12e11e8d7b314bfb7bb82bf22583292fa7ffc8b6e19369ae2419eeed2bb5b05d` |
| 35 | `theorem` | [eval_negToCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/declarations/eval-negtocnf--6d197d2277dfb4b063d0de13.md) | 307 | `result-track:6d197d2277dfb4b063d0de13091e4e9498d7f4f158b9e4c594339eacc876ee83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

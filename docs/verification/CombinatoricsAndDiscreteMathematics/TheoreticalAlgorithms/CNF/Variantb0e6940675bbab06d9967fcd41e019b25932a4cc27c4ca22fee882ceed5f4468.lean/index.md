# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CNF.Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bd7d1e2cf0af415589435c2b71a17ead5cf7c23",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bd7d1e2cf0af415589435c2b71a17ead5cf7c23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Literal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/literal--62d6dca972633383da8ee6a9.md) | 20 | `declaration-track:62d6dca972633383da8ee6a9a09a1e49491106f8f99f38c4618ff5b7e74ae9f2` |
| 2 | `abbrev` | [Clause](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/clause--737963602b4a1a3d8d7cbde8.md) | 26 | `declaration-track:737963602b4a1a3d8d7cbde8179b4e9c3dfad4143056f2c32bbb608028b74d23` |
| 3 | `def` | [Literal.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/literal-eval--2e76dc317ce6d1f9c4a938d0.md) | 30 | `declaration-track:2e76dc317ce6d1f9c4a938d06fc21f52c359878ba0f46b2882ed23ef53d9d71b` |
| 4 | `def` | [Literal.toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/literal-toformula--603940a4a1c80882d3fce3d2.md) | 35 | `declaration-track:603940a4a1c80882d3fce3d2d30dc4a8a374721773212fd0f1dde5c799d55da3` |
| 5 | `theorem` | [Literal.eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/literal-eval-toformula--72074e0f1e76fbd5b82b92f0.md) | 39 | `result-track:72074e0f1e76fbd5b82b92f004fbc766498fa697c1b1b52eedaa6664c6a78918` |
| 6 | `def` | [Clause.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/clause-eval--0105bdcb039dfc3db6ebbfcc.md) | 46 | `declaration-track:0105bdcb039dfc3db6ebbfcc9b78978070ea29dbeac40dab82dc7a2d67a88d80` |
| 7 | `def` | [Clause.toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/clause-toformula--6d206008b976b3928511b87a.md) | 51 | `declaration-track:6d206008b976b3928511b87a22656706b3e4a6d77540813a81df8f5192d90570` |
| 8 | `theorem` | [Clause.eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/clause-eval-toformula--efe6ef2ff8f086db9077c9b0.md) | 55 | `result-track:efe6ef2ff8f086db9077c9b036d114c500df21327edcb0af6c426332b4d2903f` |
| 9 | `structure` | [CNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/cnf--f34980ba431b5d43a5384a02.md) | 67 | `declaration-track:f34980ba431b5d43a5384a02bc6f27bf4754594dc0437c6bb34444c1f107e12e` |
| 10 | `def` | [evalClauses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/evalclauses--78bba40e386d7ff4b5964167.md) | 74 | `declaration-track:78bba40e386d7ff4b5964167097e9781ea36098f74207a6911395cad60623598` |
| 11 | `def` | [clausesToFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/clausestoformula--eacd8fa046f3d33da0bdc293.md) | 79 | `declaration-track:eacd8fa046f3d33da0bdc293912be8fa7e2043950aea65bfb22b1f7ff326d8ad` |
| 12 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval--2e5619dfc805df22537066e1.md) | 84 | `declaration-track:2e5619dfc805df22537066e14ee34de5a944ffd7f8f34f1b38c738e749795f6b` |
| 13 | `def` | [toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/toformula--c1a4e891a58bdec10d8f0457.md) | 88 | `declaration-track:c1a4e891a58bdec10d8f0457101eae960edad5e900aa738cfd04d4d2d1524fa0` |
| 14 | `theorem` | [evalClauses_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/evalclauses-toformula--e93d74b5dc5588056993631c.md) | 91 | `result-track:e93d74b5dc5588056993631cd2f8f6edaee7453e9eb126481a57261e27730ac2` |
| 15 | `theorem` | [eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-toformula--ed61b56bc181737da9cabd52.md) | 100 | `result-track:ed61b56bc181737da9cabd5204b2bc0fe71738f346e42c3a2ea3530f1035149e` |
| 16 | `def` | [truth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/truth--6c50dddb18f072c044a7e9bf.md) | 108 | `declaration-track:6c50dddb18f072c044a7e9bf4a7f52624d028140d77f89966f5b45e6ebabf5e9` |
| 17 | `def` | [falsum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/falsum--e21634713e1859e582b4814c.md) | 112 | `declaration-track:e21634713e1859e582b4814cb041e26984c6c2cdf7bd0a26691826c59c486f56` |
| 18 | `def` | [literal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/literal--4f3f672d8bc3435e18772e04.md) | 116 | `declaration-track:4f3f672d8bc3435e18772e049bb84afb40e6e71730665ed9a46de90f272f6f93` |
| 19 | `def` | [conj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/conj--42fd6b8448fa51920995a1c6.md) | 120 | `declaration-track:42fd6b8448fa51920995a1c65a5be675b78cc2d4b8eb2a1d179129c6511a0cf0` |
| 20 | `def` | [disjoinClauses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/disjoinclauses--e7c58b43508d8418b63cb45c.md) | 124 | `declaration-track:e7c58b43508d8418b63cb45cb501a466fb0ce789cf99188eed5346c59463a841` |
| 21 | `def` | [disj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/disj--afb54517b5437a0dc92c4f8f.md) | 132 | `declaration-track:afb54517b5437a0dc92c4f8f77c42c5dce2123368d2cec1a8a050fe4c717ad39` |
| 22 | `theorem` | [Clause.eval_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/clause-eval-append--8eb03cb11b8c995e2b300228.md) | 135 | `result-track:8eb03cb11b8c995e2b300228113ad823666a96fe19db48716c1ae4255739b3f2` |
| 23 | `theorem` | [evalClauses_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/evalclauses-append--dccb534e1dffd1d491d9f762.md) | 148 | `result-track:dccb534e1dffd1d491d9f762704ed024c5b63c15b824247d5d10e15779d75f09` |
| 24 | `theorem` | [evalClauses_map_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/evalclauses-map-append-left--73ec3e2f456274868f3c92bc.md) | 161 | `result-track:73ec3e2f456274868f3c92bc246add25978f7f12c5be1875bc828df749104f5e` |
| 25 | `theorem` | [eval_disjoinClauses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-disjoinclauses--d14de7d193373b45908fd313.md) | 176 | `result-track:d14de7d193373b45908fd31326eb1b5746f1f644515f8a784a351f246a340cda` |
| 26 | `theorem` | [eval_truth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-truth--4eceef8717905a794a20a305.md) | 204 | `result-track:4eceef8717905a794a20a3057017542806d1397bbc9bedbe342b2c77757ded16` |
| 27 | `theorem` | [eval_falsum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-falsum--54417a911c340ee97cabc49f.md) | 208 | `result-track:54417a911c340ee97cabc49f9af655948ef886e6f4c5ad6f53a5ee68094d401d` |
| 28 | `theorem` | [eval_literal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-literal--15a0c917b4bb8bb5da195c1c.md) | 212 | `result-track:15a0c917b4bb8bb5da195c1cc64fc4806a349634f0596e18e8ea342c2c759567` |
| 29 | `theorem` | [eval_conj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-conj--9186b4671c092f1092dc8a37.md) | 218 | `result-track:9186b4671c092f1092dc8a37cc9b135bc25e251c6ccf6e9143e729ebd0772eb3` |
| 30 | `theorem` | [eval_disj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-disj--1b829c1c0b4fe2242f3a6610.md) | 226 | `result-track:1b829c1c0b4fe2242f3a6610f735a520f69a6574c4edeef05eba3e40d78473b2` |
| 31 | `def` | [toCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/tocnf--fb1a896ed3d1f71f099dc730.md) | 239 | `declaration-track:fb1a896ed3d1f71f099dc730d448eba3173970d57b27ee25f7566627c7e79f22` |
| 32 | `def` | [negToCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/negtocnf--26505f04804f8fa391d191ac.md) | 253 | `declaration-track:26505f04804f8fa391d191ac9e7069fed91ca0f924443c589d8d692ac1235b44` |
| 33 | `theorem` | [eval_toCNF_and_negToCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-tocnf-and-negtocnf--7246b46f0a60daaa7f098deb.md) | 268 | `result-track:7246b46f0a60daaa7f098debaac9590a2c6de3d8585f055e220f9c54de7832ba` |
| 34 | `theorem` | [eval_toCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-tocnf--ba751ae3f37ca2f7746a6061.md) | 309 | `result-track:ba751ae3f37ca2f7746a60610d85f5fdf00c018f34ed21bd164c9e249d7983f7` |
| 35 | `theorem` | [eval_negToCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/declarations/eval-negtocnf--6bdc23c1d1c17639b582b34c.md) | 315 | `result-track:6bdc23c1d1c17639b582b34c8ad1e16dcf9181b15791a9feb4287c189fe41d1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

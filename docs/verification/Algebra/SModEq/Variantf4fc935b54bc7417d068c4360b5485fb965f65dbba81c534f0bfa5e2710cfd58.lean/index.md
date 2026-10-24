# Verification target: GRWTSK.Algebra.SModEq.Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cbb76a1c0f1b5dc9dc9813b653c2014c7d7aa9f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/index.md) · [Full source](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cbb76a1c0f1b5dc9dc9813b653c2014c7d7aa9f`.

Source path: `GRWTSK/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Map` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SModEq](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/smodeq--be72d98aa358f41e70ad08fe.md) | 34 | `declaration-track:be72d98aa358f41e70ad08fe1835c0e5c60c154d2537fce86452b629db280729` |
| 2 | `theorem` | [SModEq.def](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/smodeq-def--83184bf46aac8f2609a9eee5.md) | 41 | `result-track:83184bf46aac8f2609a9eee5237e222128178f20faf98a6d309aa1ff509125fa` |
| 3 | `theorem` | [sub_mem](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/sub-mem--33b7d9d8b6074fe3484ec11d.md) | 47 | `result-track:33b7d9d8b6074fe3484ec11dc2cf334c0979b24eabba3c66dd48caa4df2326e2` |
| 4 | `theorem` | [top](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/top--370c092021181ca9c2d6b567.md) | 50 | `result-track:370c092021181ca9c2d6b567e7126f507beb0a17c01bb8de7fc4d0318a3020f1` |
| 5 | `theorem` | [bot](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/bot--f614092e56bff2ba5756dff9.md) | 54 | `result-track:f614092e56bff2ba5756dff9a6048f9f28977bd6fc4bcc3251455187881692d9` |
| 6 | `theorem` | [mono](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/mono--abd6193d5d6680dc22c20d0c.md) | 58 | `result-track:abd6193d5d6680dc22c20d0c6cdcfa23610fa6a1b6c52f475ffa5a834829aa29` |
| 7 | `theorem` | [refl](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/refl--000a3d65577f472eb97dfd64.md) | 62 | `result-track:000a3d65577f472eb97dfd64705837f5549f20a427ff4a6cb8230dc6a00b6e13` |
| 8 | `theorem` | [rfl](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/rfl--441d2dbce884998908598144.md) | 65 | `result-track:441d2dbce88499890859814437f3b80e24705bf7c36b2276d4390b159f62ce05` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/instance--fab3da0d1490e0b401d6f419.md) | 68 | `declaration-track:fab3da0d1490e0b401d6f419e6845f8dc8c298a84cb66c19128dd352e32a3eed` |
| 10 | `theorem` | [symm](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/symm--ae1a756a4eef2f890529654b.md) | 72 | `result-track:ae1a756a4eef2f890529654beb61914447b5e9f938ec444cc5157e46d8e7a5c7` |
| 11 | `theorem` | [trans](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/trans--dce3377c43cdbe722c950dc3.md) | 76 | `result-track:dce3377c43cdbe722c950dc3b2c37121bb89bf8aa5c41e04a2778faa446e0034` |
| 12 | `instance` | [instTrans](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/insttrans--885a406c6e17fa08d0e5222f.md) | 79 | `declaration-track:885a406c6e17fa08d0e5222fb2a45d90cb283b1726ad3555ad4f9bff0c5ed5d8` |
| 13 | `theorem` | [add](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/add--88364b3f7bc1b71044ecedd0.md) | 82 | `result-track:88364b3f7bc1b71044ecedd0b2389e3aea219ab101eda092a678236a509cf080` |
| 14 | `theorem` | [smul](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/smul--4ae25baa1b18e103bbc278d2.md) | 86 | `result-track:4ae25baa1b18e103bbc278d26f3e47fef799571bd174efe0dec84ceaf14469d0` |
| 15 | `lemma` | [nsmul](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/nsmul--130bde383f10728aed48e4a4.md) | 90 | `result-track:130bde383f10728aed48e4a48eb928156151856039df46717fc9da41ed4c4cdb` |
| 16 | `lemma` | [zsmul](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/zsmul--7836bb16b6ccb6871b8d30c7.md) | 94 | `result-track:7836bb16b6ccb6871b8d30c7f5fe8d738e10bad3279e52b4eb2cda0cd87d5c1c` |
| 17 | `theorem` | [mul](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/mul--689d639f7cf9663192a5fc8c.md) | 98 | `result-track:689d639f7cf9663192a5fc8cb786c97715f8d7cc111a45da7e3ce8fee5b85f52` |
| 18 | `lemma` | [pow](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/pow--d864d4ba2bb1782dc786c81d.md) | 103 | `result-track:d864d4ba2bb1782dc786c81de95a06c3f0ea4d9b091c095893e01638d3a99deb` |
| 19 | `lemma` | [neg](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/neg--38292b71267f27a95e4d6eb7.md) | 108 | `result-track:38292b71267f27a95e4d6eb7ab955ec6eb40aebe50b47a9d2eb4d172ab62ac0d` |
| 20 | `lemma` | [sub](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/sub--714c976fc762db13c821c9a0.md) | 111 | `result-track:714c976fc762db13c821c9a06391570f8e7c8f3cf0475be26a4bfbfb92e8e481` |
| 21 | `theorem` | [zero](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/zero--5cb128faacdc7b80996c529e.md) | 115 | `result-track:5cb128faacdc7b80996c529e95d38d5cb7cb7045b766bb02c8e3fdb36df871ae` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.SModEq.Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.sub_smodEq_zero](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/root-grwtsk-algebra-smodeq-variant8231c3194701240bb52b57b64a7118fb38c625--f7d172cff0748ef47551008f.md) | 117 | `result-track:f7d172cff0748ef47551008fc8bed605745fbdc030f1efc309386d5ba6d28cbb` |
| 23 | `theorem` | [map](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/map--766b049ff941165f1baca340.md) | 120 | `result-track:766b049ff941165f1baca3406d74e1c92c6cd3c2036d88ad518a1daac0f8782a` |
| 24 | `theorem` | [comap](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/comap--6916fba78446d1b7612caa97.md) | 123 | `result-track:6916fba78446d1b7612caa977335d5247aa7c01db66e5a0afe4e36b770913bba` |
| 25 | `theorem` | [eval](../../../../mathematics/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/declarations/eval--9f49fa0ef9f2f07cd3fd0339.md) | 127 | `result-track:9f49fa0ef9f2f07cd3fd03399ef2904043a0fd5ce4e320913a0850a6d316f41d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.SModEq.Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cea1133c43b6ae3ffb8987649ae24dab7305bfb8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/index.md) · [Full source](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cea1133c43b6ae3ffb8987649ae24dab7305bfb8`.

Source path: `GRWTSK/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Map` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SModEq](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/smodeq--0b5f9a5a3ad2822a54890ffa.md) | 26 | `declaration-track:0b5f9a5a3ad2822a54890ffa812156397d915800f2498b625b668a8e2d6b8715` |
| 2 | `theorem` | [SModEq.def](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/smodeq-def--31022776e0cebc609e179b37.md) | 33 | `result-track:31022776e0cebc609e179b379bb92fefc7732590aee78485102f7fc851969d53` |
| 3 | `theorem` | [sub_mem](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/sub-mem--13c7b0e6822d67c457aa966f.md) | 39 | `result-track:13c7b0e6822d67c457aa966f95c1e471b6fe52a97236b9b764c951e819eb1e5a` |
| 4 | `theorem` | [top](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/top--9eb61a34f764390f5de40576.md) | 42 | `result-track:9eb61a34f764390f5de40576ec39be6539cb9bc263fc6a772ceaa873c49c4ba2` |
| 5 | `theorem` | [bot](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/bot--65989689c9784555a6f38ead.md) | 46 | `result-track:65989689c9784555a6f38ead8288b0d49c139d5874082a2853ccddfd90bc58f2` |
| 6 | `theorem` | [mono](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/mono--867fe3a46e8c213e92dd776d.md) | 50 | `result-track:867fe3a46e8c213e92dd776df3c5e8b6ae3ab3355db6597b9ed4f07fa9aad3a7` |
| 7 | `theorem` | [refl](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/refl--d8819da75dc058f896d3f09a.md) | 54 | `result-track:d8819da75dc058f896d3f09a74f3df1050437299df37aaba917f727956f6edd3` |
| 8 | `theorem` | [rfl](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/rfl--b1b377976c56a61c83c6f656.md) | 57 | `result-track:b1b377976c56a61c83c6f6562bf21dd44264dfebd1d499d648966cba6b4d6120` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/instance--d5cd81785451694d440ded25.md) | 60 | `declaration-track:d5cd81785451694d440ded2554ad3aa7f023071f840ba1ac7cf5dde157ff8a24` |
| 10 | `theorem` | [symm](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/symm--5d0068865f56c1a7809ebfae.md) | 64 | `result-track:5d0068865f56c1a7809ebfae3fe7b807da25c7efec3401c81ff8432c0fa5ecfe` |
| 11 | `theorem` | [trans](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/trans--827428479f98ca7881991868.md) | 68 | `result-track:827428479f98ca7881991868b5ddef20feeaf1cb98d5a1c7a76eda0ee8468b78` |
| 12 | `instance` | [instTrans](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/insttrans--52d5e15113f743815b5d58ea.md) | 71 | `declaration-track:52d5e15113f743815b5d58eac1ad470cf7ae588d95aa6aff1e43fb863a8f5b09` |
| 13 | `theorem` | [add](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/add--fc575070db04a5216132cd5c.md) | 74 | `result-track:fc575070db04a5216132cd5c2b6b5d2fe5e525070131b1654bfa223dc73c7532` |
| 14 | `theorem` | [smul](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/smul--b06e79de09e3bd89dc42c1f5.md) | 78 | `result-track:b06e79de09e3bd89dc42c1f5158566ffeb1c4cdbfd72da595016aec72a072639` |
| 15 | `lemma` | [nsmul](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/nsmul--aa765bb98410eaaa5ee80553.md) | 82 | `result-track:aa765bb98410eaaa5ee8055354b6a208959492692d5f08936b715dfc2c133bfa` |
| 16 | `lemma` | [zsmul](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/zsmul--dccfd77edac39c524523de46.md) | 86 | `result-track:dccfd77edac39c524523de46352434662b4d4f93cbd60b72c5ad7c850cb2ce17` |
| 17 | `theorem` | [mul](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/mul--05d89d654ef6867bedcc8454.md) | 90 | `result-track:05d89d654ef6867bedcc8454b2143260391732581ce5a95e3575be3ecc35514a` |
| 18 | `lemma` | [pow](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/pow--d989e7168afede76e867e517.md) | 95 | `result-track:d989e7168afede76e867e517271c7907f2e895330070c67d9e2b692595379d24` |
| 19 | `lemma` | [neg](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/neg--4ac895b3db14539c36c8eda7.md) | 100 | `result-track:4ac895b3db14539c36c8eda7c688edda188a82c8c3f5ece5327e8c3ba1630b9e` |
| 20 | `lemma` | [sub](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/sub--afd4e66e1e6f6ac62da61610.md) | 103 | `result-track:afd4e66e1e6f6ac62da61610924235f46fdfbab56a47d109ac1fa2137beec1ed` |
| 21 | `theorem` | [zero](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/zero--d1fd10389103f776fa4fe19f.md) | 107 | `result-track:d1fd10389103f776fa4fe19f9b393d9e725f52368483ff6aa9c0a0e0b5381584` |
| 22 | `theorem` | [_root_.sub_smodEq_zero](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/root-sub-smodeq-zero--726fa93a3dc395a5b87afd85.md) | 109 | `result-track:726fa93a3dc395a5b87afd8561bda3c78d318ff3b811ff03d9c56b378944e886` |
| 23 | `theorem` | [map](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/map--ad8c7e1ce054adbb4670de89.md) | 112 | `result-track:ad8c7e1ce054adbb4670de89098fb2563910da9c72365eb27e00c97cd050baa3` |
| 24 | `theorem` | [comap](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/comap--4b0f8cb7c4d1cbc0001f3293.md) | 115 | `result-track:4b0f8cb7c4d1cbc0001f32938911887b708427d27b87fdd91f25664e41da2e37` |
| 25 | `theorem` | [eval](../../../../mathematics/Algebra/SModEq/Variant8231c3194701240bb52b57b64a7118fb38c625e10b5f64d955a36859dd3eeab4.lean/declarations/eval--4d074e247678bc8134b4040f.md) | 119 | `result-track:4d074e247678bc8134b4040f82091baee8865d6a7059c4048db363d722e47974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

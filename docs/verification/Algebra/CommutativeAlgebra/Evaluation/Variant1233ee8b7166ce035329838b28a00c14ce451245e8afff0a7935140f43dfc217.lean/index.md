# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Evaluation.Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27ce3d9ebba355f73df1ad5a6afe17a377769c62",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27ce3d9ebba355f73df1ad5a6afe17a377769c62`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval--6622a5c503627f0cc5da6afa.md) | 69 | `declaration-track:6622a5c503627f0cc5da6afa6b6274f319c08491fcd07efdddb10f42edca3be0` |
| 2 | `theorem` | [hasEval_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-def--d44ab8a0ae686df98c1768e2.md) | 71 | `result-track:d44ab8a0ae686df98c1768e2aa95370ffa549eb4e62c8a0b7a07a549d06e340e` |
| 3 | `theorem` | [hasEval_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-iff--ea5aa4088ed0ca82a44b1281.md) | 73 | `result-track:ea5aa4088ed0ca82a44b128153e1c0203333a5284116564ff3cc5f9cde9ea789` |
| 4 | `theorem` | [hasEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval--fd30bd698326ed22f99d5335.md) | 77 | `result-track:fd30bd698326ed22f99d5335cab8370be43745f5ccb905a7bcc9c113dee94013` |
| 5 | `theorem` | [HasEval.mono](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-mono--4004aecd47af21e92043ca26.md) | 80 | `result-track:4004aecd47af21e92043ca269d2a9238a09fd632cd0da21d3aef9e5b65c8d9c9` |
| 6 | `theorem` | [HasEval.zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-zero--4f2d2a400a4f36023b3d5e52.md) | 86 | `result-track:4f2d2a400a4f36023b3d5e524cd2b41ff63206d0d343c173397eb3622d312568` |
| 7 | `theorem` | [HasEval.add](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-add--6906c28e2803fccbbef695b1.md) | 89 | `result-track:6906c28e2803fccbbef695b12b4a24a30464cbb6437579753cfaa291b124b7f0` |
| 8 | `theorem` | [HasEval.mul_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-mul-left--120825781ddd96d13dd5f774.md) | 94 | `result-track:120825781ddd96d13dd5f7744d5f5a0365c05e4750d7292475145af3580bb1d9` |
| 9 | `theorem` | [HasEval.mul_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-mul-right--9ebce8c018e2a4df539f4915.md) | 99 | `result-track:9ebce8c018e2a4df539f491588cb8a9ccaa6634dc1415cc85b6d43b4543b8dcf` |
| 10 | `theorem` | [HasEval.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-map--0ce6fe2bd1ae546c3fc7cc8a.md) | 105 | `result-track:0ce6fe2bd1ae546c3fc7cc8ac131e47e43d403232974ef65dc81d4890c0e818c` |
| 11 | `theorem` | [HasEval.X](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/haseval-x--f51a72f95186929f33eb47b7.md) | 110 | `result-track:f51a72f95186929f33eb47b7ff5f0caf5ecae042290f56a0573be1bec82e9862` |
| 12 | `def` | [hasEvalIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/hasevalideal--5dbde88f1faca7b3d6d22689.md) | 120 | `declaration-track:5dbde88f1faca7b3d6d226891f1f0ab3b529e4e6475c89673ae14ed05bee3bfc` |
| 13 | `theorem` | [mem_hasEvalIdeal_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/mem-hasevalideal-iff--3c8fd215aa18afef98dcd473.md) | 126 | `result-track:3c8fd215aa18afef98dcd473fdde934a8fd0b62942547fce98f4ef8db3d95d78` |
| 14 | `def` | [eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/eval--b4999bcfe5f3e864647e26ee.md) | 140 | `declaration-track:b4999bcfe5f3e864647e26eea7bcfff872b79242dc487163da6f88f670363d62` |
| 15 | `theorem` | [eval₂_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/eval-coe--0ec53132a23c7e66a37f586d.md) | 144 | `result-track:0ec53132a23c7e66a37f586d3879b79077cf6296bacad81b28e6283859dff435` |
| 16 | `theorem` | [eval₂_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/eval-c--a66aee772c79213926a53ae2.md) | 150 | `result-track:a66aee772c79213926a53ae2e47aea561636896b35716376fa3b05a2c8d7de83` |
| 17 | `theorem` | [eval₂_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/eval-x--d0cf3389af277d6ab0a44e0b.md) | 155 | `result-track:d0cf3389af277d6ab0a44e0bfcea31ef7bae8862e562bc089802f0d5762987cb` |
| 18 | `def` | [eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/eval-hom--45f8f17fae628489997ce428.md) | 166 | `declaration-track:45f8f17fae628489997ce4286a4065b67a0bf732098d78ecbf92ea8f80dff459` |
| 19 | `theorem` | [coe_eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/coe-eval-hom--5f864e93b11138046bca58d2.md) | 170 | `result-track:5f864e93b11138046bca58d2a489e48d30b0abc097435eb7f13d6f5ffed0b20b` |
| 20 | `theorem` | [uniformContinuous_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/uniformcontinuous-eval--008b43cfd216738ad96e5261.md) | 177 | `result-track:008b43cfd216738ad96e52617f9dae93c8a0a47c16bde36044a85c44ba927e80` |
| 21 | `theorem` | [continuous_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/continuous-eval--bc0aee0229a927c08f8e7281.md) | 181 | `result-track:bc0aee0229a927c08f8e7281968a04fb50d96b98f0da50e46ff3db103aafa6dc` |
| 22 | `theorem` | [hasSum_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/hassum-eval--1fdadd7a4981de9e83563ba3.md) | 185 | `result-track:1fdadd7a4981de9e83563ba3ee86981963d08efae077f00a9a3a3326926a812f` |
| 23 | `theorem` | [eval₂_eq_tsum](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/eval-eq-tsum--428e2091bbdba412e03d7ea7.md) | 194 | `result-track:428e2091bbdba412e03d7ea750869574e909adfead461429064450ed20f46ae7` |
| 24 | `theorem` | [eval₂_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/eval-unique--c51942b94fc45671cc092d76.md) | 199 | `result-track:c51942b94fc45671cc092d768fef11f98a47893c8697063b4dbca5c30329de97` |
| 25 | `theorem` | [comp_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/comp-eval--025ba24ac1540fefdba0fbb4.md) | 206 | `result-track:025ba24ac1540fefdba0fbb47ab202d1ee4122bd1a62ce4c2da6487d2a7e9f85` |
| 26 | `def` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/aeval--69e144f02e52e4a2b64a422a.md) | 219 | `declaration-track:69e144f02e52e4a2b64a422a62861889f3b7de860476651f2142d33d9f54efd9` |
| 27 | `theorem` | [coe_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/coe-aeval--0c9db502b733d7d7b3b41e6a.md) | 223 | `result-track:0c9db502b733d7d7b3b41e6aa54c4b055763f37051bccadfc9d76fac604dfcfd` |
| 28 | `theorem` | [continuous_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/continuous-aeval--2acc43a1cc2c65d086e92daa.md) | 227 | `result-track:2acc43a1cc2c65d086e92daa131037fed97fc748b23b7fdac32ba109f49317cc` |
| 29 | `theorem` | [aeval_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/aeval-coe--7cff4d186a21b370e4f99d1d.md) | 232 | `result-track:7cff4d186a21b370e4f99d1dd0a8858b0090f305735b5d9a072d604075fe0e7b` |
| 30 | `theorem` | [aeval_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/aeval-unique--968f08dfde422eda2ad84801.md) | 236 | `result-track:968f08dfde422eda2ad84801827ab2b6a37cfbfe162ee84b69ba82c986a3613d` |
| 31 | `theorem` | [hasSum_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/hassum-aeval--42a18cac786fe383354380ef.md) | 240 | `result-track:42a18cac786fe383354380efecb76b70554ddd51a18014b076443b5fb2a9f5f4` |
| 32 | `theorem` | [aeval_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/aeval-eq-sum--0989d90ec81a73d830f339f6.md) | 245 | `result-track:0989d90ec81a73d830f339f6d798dfd0cb0bbab88c6929f2403baeac961ca9cc` |
| 33 | `theorem` | [comp_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant1233ee8b7166ce035329838b28a00c14ce451245e8afff0a7935140f43dfc217.lean/declarations/comp-aeval--5dfae7f103c16519f07585f7.md) | 249 | `result-track:5dfae7f103c16519f07585f72a488e11edfb8716eff3d10eab92f58cf7d6403d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

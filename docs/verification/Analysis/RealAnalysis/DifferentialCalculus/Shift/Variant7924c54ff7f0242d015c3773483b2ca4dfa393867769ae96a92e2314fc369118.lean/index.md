# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Shift.Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f3cf8994feb7963f1c228692d5370b62487d3d3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f3cf8994feb7963f1c228692d5370b62487d3d3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.CompMul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HasDerivAt.comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/hasderivat-comp-const-add--02bcea5d99bc9eb501cd33b1.md) | 23 | `result-track:02bcea5d99bc9eb501cd33b12516b149b08ece091b0d2d5f6b02a2daec288aeb` |
| 2 | `lemma` | [HasDerivAt.comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/hasderivat-comp-add-const--ee0f76d08f46da7ee2db979a.md) | 28 | `result-track:ee0f76d08f46da7ee2db979a4c4b1ef9463abb4d46c53cad12f17b890f10fd78` |
| 3 | `lemma` | [HasDerivAt.comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/hasderivat-comp-const-sub--5b2d71ff543df21237ef00ea.md) | 33 | `result-track:5b2d71ff543df21237ef00eacd55d3b409eca1b3f029c6a85c029a941a961e37` |
| 4 | `lemma` | [HasDerivAt.comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/hasderivat-comp-sub-const--b8cacb8177289da5a2ee6b5c.md) | 38 | `result-track:b8cacb8177289da5a2ee6b5c4422b12ece1aca78cd3f5e5ba46da9f9765911ee` |
| 5 | `lemma` | [derivWithin_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/derivwithin-comp-neg--be4def1c5b407b5d13cc7bd7.md) | 45 | `result-track:be4def1c5b407b5d13cc7bd7e9ed65532c84e47fb45fb8ab481bc5cc0f2a38b6` |
| 6 | `lemma` | [deriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/deriv-comp-neg--52ef93b136186797df9937fc.md) | 49 | `result-track:52ef93b136186797df9937fcd2254417dac3acfdeb1804672a31f15a6ba5908b` |
| 7 | `lemma` | [derivWithin_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/derivwithin-comp-const-add--3b93916cfdb2f2479be1cdb0.md) | 53 | `result-track:3b93916cfdb2f2479be1cdb07a4ed84ed4f76d3ce093144e2b0d282affd89f2e` |
| 8 | `lemma` | [deriv_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/deriv-comp-const-add--6d65ff778dc36b56b7f49df2.md) | 58 | `result-track:6d65ff778dc36b56b7f49df20ef4756aefa7e080d1d1b25b4904b9d0889e7cdb` |
| 9 | `lemma` | [derivWithin_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/derivwithin-comp-add-const--d2de838f7dd43921b5c49223.md) | 62 | `result-track:d2de838f7dd43921b5c49223aac8f00eb6fe509566eefc9eddb00b2b28fb6558` |
| 10 | `lemma` | [deriv_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/deriv-comp-add-const--e0def5c1a1ff4a1a46aef539.md) | 67 | `result-track:e0def5c1a1ff4a1a46aef5395ab17871443ef25d6e72979cd6cd2dc043cca05e` |
| 11 | `lemma` | [derivWithin_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/derivwithin-comp-const-sub--a004147435763cbc6024fff4.md) | 70 | `result-track:a004147435763cbc6024fff4419c57fab6af6225516f69d45c8e477869868756` |
| 12 | `lemma` | [deriv_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/deriv-comp-const-sub--f982fad1ba8e09533cf8fec7.md) | 75 | `result-track:f982fad1ba8e09533cf8fec7313e864edb21825c2629f2d0985f689782f39d79` |
| 13 | `lemma` | [derivWithin_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/derivwithin-comp-sub-const--bccbdffd4fabff4620c5bfa1.md) | 78 | `result-track:bccbdffd4fabff4620c5bfa1a32f5d231bf1e24bceccda85f85cbaf645ee702a` |
| 14 | `lemma` | [deriv_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant7924c54ff7f0242d015c3773483b2ca4dfa393867769ae96a92e2314fc369118.lean/declarations/deriv-comp-sub-const--435f7e3bb98ce035650ab3b3.md) | 82 | `result-track:435f7e3bb98ce035650ab3b311308b197d1986d9531aa10fe3e4437490a38ec9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

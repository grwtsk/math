# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Shift.Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05f866051adf681336afa414117292b0d533054d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05f866051adf681336afa414117292b0d533054d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HasDerivAt.comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/hasderivat-comp-const-add--f45255bc33145e76751172c0.md) | 35 | `result-track:f45255bc33145e76751172c07c4b7fc993b697eb0df2d95eeee9ad951d396f5f` |
| 2 | `lemma` | [HasDerivAt.comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/hasderivat-comp-add-const--036ae872599bffb282dc7b6d.md) | 40 | `result-track:036ae872599bffb282dc7b6d62d9022bdd89aa4f4823802104fc756481884dc7` |
| 3 | `lemma` | [HasDerivAt.comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/hasderivat-comp-const-sub--b0da0bf884583c3b483c3bcf.md) | 45 | `result-track:b0da0bf884583c3b483c3bcf0c13cfe1c805f1798f439fd440b21889b508b11a` |
| 4 | `lemma` | [HasDerivAt.comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/hasderivat-comp-sub-const--97fcc4f675947e1cc3f4bcf1.md) | 50 | `result-track:97fcc4f675947e1cc3f4bcf11ba5c7abe7592fc296d541182ca02b1220d5d722` |
| 5 | `lemma` | [derivWithin_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/derivwithin-comp-neg--1ac7eddb2e14f262b4eebc28.md) | 57 | `result-track:1ac7eddb2e14f262b4eebc283d20d6b46afd87eaddc473774f4d5e56dc643609` |
| 6 | `lemma` | [deriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/deriv-comp-neg--b68b78fe86d5f244892932f3.md) | 61 | `result-track:b68b78fe86d5f244892932f32a0695bd3d737f2101df6e432854f239cd09dc43` |
| 7 | `lemma` | [derivWithin_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/derivwithin-comp-const-add--b5cf49874581c1ef48ee2a91.md) | 65 | `result-track:b5cf49874581c1ef48ee2a91b7468e69a699b2ff219343eb6f50afe84d1b1e02` |
| 8 | `lemma` | [deriv_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/deriv-comp-const-add--f3965299e93158be740a32da.md) | 70 | `result-track:f3965299e93158be740a32da85f917ce4f87fea6796b0f6847631f0db4e00428` |
| 9 | `lemma` | [derivWithin_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/derivwithin-comp-add-const--fa886d0117805310c9750273.md) | 74 | `result-track:fa886d0117805310c9750273affe0d517e5932c274b491aa1bff292597a5bb99` |
| 10 | `lemma` | [deriv_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/deriv-comp-add-const--51d71638842c37baa3b940ea.md) | 79 | `result-track:51d71638842c37baa3b940eaa6bc0165fdc74fe1460e82546e67cc885380ac95` |
| 11 | `lemma` | [derivWithin_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/derivwithin-comp-const-sub--66b996c52dcbc9e75bc31245.md) | 82 | `result-track:66b996c52dcbc9e75bc312456456b8f8f759ee376be688adbc3a954705290686` |
| 12 | `lemma` | [deriv_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/deriv-comp-const-sub--5c7e5716a706710152a5b1da.md) | 87 | `result-track:5c7e5716a706710152a5b1dae5d5d95941f065546ecdd8a8a6a84c244e88fff1` |
| 13 | `lemma` | [derivWithin_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/derivwithin-comp-sub-const--68151a887792d668c2269fe2.md) | 90 | `result-track:68151a887792d668c2269fe2afbafee0e2bcaa5296245fdc76dd21880d783a55` |
| 14 | `lemma` | [deriv_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variantbf915a874d333aaffdf0ec2b8db8c901f715b7e026cf1e58e6ca4fd27309efd0.lean/declarations/deriv-comp-sub-const--0f58d7fafe7c8afb0b71c367.md) | 94 | `result-track:0f58d7fafe7c8afb0b71c3674e7b0570c7d16ae5629b74e388cda99287fda1fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

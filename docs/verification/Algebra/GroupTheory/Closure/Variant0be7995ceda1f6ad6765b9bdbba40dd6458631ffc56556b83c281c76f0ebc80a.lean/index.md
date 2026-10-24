# Verification target: GRWTSK.Algebra.GroupTheory.Closure.Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "261f2253437460ae65b20b126b381c11c74c1cc2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `261f2253437460ae65b20b126b381c11c74c1cc2`.

Source path: `GRWTSK/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean.json)

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
| 1 | `def` | [closure](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/closure--72478e6a499e1714f406498f.md) | 21 | `declaration-track:72478e6a499e1714f406498fcf41e5c121a89d4ea95102840a2be8c243555d4f` |
| 2 | `theorem` | [mem_closure](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/mem-closure--084fa1ccc330c07b85ea8084.md) | 27 | `result-track:084fa1ccc330c07b85ea8084150a65f7e9a9900e65594765699b013e3b5586e3` |
| 3 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/subset-closure--69e4fcd2da5b31be10ca44dc.md) | 31 | `result-track:69e4fcd2da5b31be10ca44dc8107be2b89650048f4740f1a948553eff949214a` |
| 4 | `theorem` | [mem_closure_of_mem](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/mem-closure-of-mem--fd524b3420b593b8577045a2.md) | 34 | `result-track:fd524b3420b593b8577045a2ca2781613f614f7c555d131079d729035a0099d8` |
| 5 | `theorem` | [closure_le](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/closure-le--da21943d48e5e4e3b9e2be44.md) | 37 | `result-track:da21943d48e5e4e3b9e2be441eaa81e0499e4b11e776039c2c954eaab7e1b8e3` |
| 6 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/closure-mono--ca56a5905ede14aa9789175e.md) | 41 | `result-track:ca56a5905ede14aa9789175ed2e87bcf431198228598246fe37d0e5065016525` |
| 7 | `def` | [FG](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/fg--4de40360d38823a2b4b79b77.md) | 46 | `declaration-track:4de40360d38823a2b4b79b77932f75a4ae85c00c1a5f6bbf0f669388acc314b5` |
| 8 | `theorem` | [fg_iff](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/declarations/fg-iff--f22a121ae353273f0bf55d11.md) | 50 | `result-track:f22a121ae353273f0bf55d11b6935609e8f39397d8d2e77937fbcd602beadbd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

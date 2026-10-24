# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Shift.Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2334f530254d4629e44ddcb993cb93362262700",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2334f530254d4629e44ddcb993cb93362262700`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean.json)

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
| 1 | `lemma` | [HasDerivAt.comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/hasderivat-comp-const-add--7ea96e7d354ebd04e948b911.md) | 27 | `result-track:7ea96e7d354ebd04e948b911544264d7ae7097a9bfa6b4d7947269acfa116181` |
| 2 | `lemma` | [HasDerivAt.comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/hasderivat-comp-add-const--c0848f29f735757f834cd0be.md) | 32 | `result-track:c0848f29f735757f834cd0be02da374f2372245f98e067ddc4f1a51ffcf17cc8` |
| 3 | `lemma` | [HasDerivAt.comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/hasderivat-comp-const-sub--d78ffdd60999701fe9c7de2d.md) | 37 | `result-track:d78ffdd60999701fe9c7de2dccd9f5a08385eee0cf806d4246192ab4111367ef` |
| 4 | `lemma` | [HasDerivAt.comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/hasderivat-comp-sub-const--19e5fddeafb9a0544eaac163.md) | 42 | `result-track:19e5fddeafb9a0544eaac163acff1d36ae18a3973a7b0251b89053efa3cd8173` |
| 5 | `lemma` | [derivWithin_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/derivwithin-comp-neg--8c9d93aa10ffff40512e83ef.md) | 49 | `result-track:8c9d93aa10ffff40512e83ef200dcc6fe637a22768868183fca94123f9540a50` |
| 6 | `lemma` | [deriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/deriv-comp-neg--04fc542b646772eb53c0f1a3.md) | 53 | `result-track:04fc542b646772eb53c0f1a373ad6cba5c28dfc969740a9c389cffbc5c24ca96` |
| 7 | `lemma` | [derivWithin_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/derivwithin-comp-const-add--ad2f3df966e8494131ab9ccb.md) | 57 | `result-track:ad2f3df966e8494131ab9ccbba20f4a71a7569a072bf07e0dff2ad7cafe07439` |
| 8 | `lemma` | [deriv_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/deriv-comp-const-add--8390d9f8d0febfb88e7d6ab7.md) | 62 | `result-track:8390d9f8d0febfb88e7d6ab7c0dc9dc159a8a927cc65c1373c1f33d0d542d186` |
| 9 | `lemma` | [derivWithin_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/derivwithin-comp-add-const--4361bb94abceb3735d86296c.md) | 66 | `result-track:4361bb94abceb3735d86296c5f2f0847d8353f476e0cf3a09397b8df14841a65` |
| 10 | `lemma` | [deriv_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/deriv-comp-add-const--d6ff966cc4542cb62077bcd5.md) | 71 | `result-track:d6ff966cc4542cb62077bcd52531e00284b1a98270420c2c41aaf4aa583c125c` |
| 11 | `lemma` | [derivWithin_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/derivwithin-comp-const-sub--79aeceb257a4e947440f5243.md) | 74 | `result-track:79aeceb257a4e947440f52432b51dc5efc7797206f149a8470aa53fa827bf07d` |
| 12 | `lemma` | [deriv_comp_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/deriv-comp-const-sub--90bccef9fcf330428c254c3f.md) | 79 | `result-track:90bccef9fcf330428c254c3f0fc1dff0dbccdb1d854d90e11e3ea009646d619a` |
| 13 | `lemma` | [derivWithin_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/derivwithin-comp-sub-const--8505c9b0e2165bccd5ef3273.md) | 82 | `result-track:8505c9b0e2165bccd5ef32732e5ff9f2c0f85a0d6a85534b38d91c0bd1c877bc` |
| 14 | `lemma` | [deriv_comp_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Shift/Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c.lean/declarations/deriv-comp-sub-const--b89a00f4aabff2fd396b6404.md) | 86 | `result-track:b89a00f4aabff2fd396b64044b32df882b448d692a30df0a1c91e9617039922f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

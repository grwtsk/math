# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca2c8dc5264ffed0c226dffa56ff7126586c65e6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca2c8dc5264ffed0c226dffa56ff7126586c65e6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMonoid` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFiltration](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/declarations/isfiltration--aff30102989ea17765593de1.md) | 52 | `declaration-track:aff30102989ea17765593de1794c474d998094c2780109eb839c000fcffd8cf4` |
| 2 | `lemma` | [IsFiltration.F_lt_le_F](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/declarations/isfiltration-f-lt-le-f--7304edd1c46f939059a61f68.md) | 57 | `result-track:7304edd1c46f939059a61f68cfe7a87009761b0cf54b78805b5ac8d7bb40877f` |
| 3 | `lemma` | [IsFiltration.mk_int](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/declarations/isfiltration-mk-int--39089e1d886e9a2e982e0925.md) | 62 | `result-track:39089e1d886e9a2e982e0925aeca9dc643b682d7630db35a890d82c1636940af` |
| 4 | `class` | [IsRingFiltration](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/declarations/isringfiltration--e010b862a6f336492b0f55c4.md) | 78 | `declaration-track:e010b862a6f336492b0f55c4bce9fd995af620fa594e864704c896d9f4552c5e` |
| 5 | `lemma` | [IsRingFiltration.mk_int](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/declarations/isringfiltration-mk-int--2f946d315f407c3631749999.md) | 82 | `result-track:2f946d315f407c3631749999abe65c18c71ed58eb752b9cd27e1a8b875a823dc` |
| 6 | `class` | [IsModuleFiltration](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/declarations/ismodulefiltration--11d7ebfdcdf66119c6b7f715.md) | 98 | `declaration-track:11d7ebfdcdf66119c6b7f715bcdeb387faa15123a0db61e26936a8f0acc0b264` |
| 7 | `lemma` | [IsModuleFiltration.mk_int](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant55f005e9a3276f5efba059a2e4a936a4bf5a114bfb1059d130dda78ecd021d5e.lean/declarations/ismodulefiltration-mk-int--90c7d73f52cff9eb0395e670.md) | 103 | `result-track:90c7d73f52cff9eb0395e670d0484d0bd7312e7a956b6dc3cfaf9ff0b9c4d4a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

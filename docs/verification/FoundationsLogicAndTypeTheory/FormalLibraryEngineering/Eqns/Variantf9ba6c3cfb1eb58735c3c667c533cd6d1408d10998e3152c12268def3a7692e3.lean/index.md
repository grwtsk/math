# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.EqnsUtils` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.NamedPatterns` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unfoldThmType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/unfoldthmtype--8b47d07d9adafc5f2115ea03.md) | 38 | `declaration-track:8b47d07d9adafc5f2115ea034a0376e988b93a3b1758e48be456b4eb1fb5e341` |
| 2 | `def` | [unfoldLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/unfoldlhs--74f58963148e85deff447c0a.md) | 49 | `declaration-track:74f58963148e85deff447c0a870f7310046cb0aacbdc23f9bbdb47568ec25b3c` |
| 3 | `def` | [mkEqnProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/mkeqnproof--c8ee3694ed2770c5e9df5bb0.md) | 66 | `declaration-track:c8ee3694ed2770c5e9df5bb08e317254576972fe747b2410e60589bdac265aa4` |
| 4 | `def` | [lhsDependsOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/lhsdependson--033877190893882800a6b074.md) | 113 | `declaration-track:033877190893882800a6b074b970df94813fb0aed9c305b02c5627a96a8bba51` |
| 5 | `def` | [simpEqnType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/simpeqntype--83ce6fe8fb26349eac8009c8.md) | 123 | `declaration-track:83ce6fe8fb26349eac8009c8de445f9d8fe5f9837fc0aabb2d8362c5640515cc` |
| 6 | `def` | [saveEqn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/saveeqn--2673cb1c4696fd7e8da6a0de.md) | 163 | `declaration-track:2673cb1c4696fd7e8da6a0de1294cb02b9dc92679cd964aa8192ea8086a7e7bd` |
| 7 | `def` | [expand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/expand--cb1a5b73a904b50c5eda9a74.md) | 221 | `declaration-track:cb1a5b73a904b50c5eda9a7479ea93814d72706d0dae277b6fac713a8581bd35` |
| 8 | `def` | [expandRHS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/expandrhs--6a78cb41347ac78b76ebc0f6.md) | 227 | `declaration-track:6a78cb41347ac78b76ebc0f62a42e21d98b6ec17576c16d557b96dce99e6cc6e` |
| 9 | `def` | [shouldUseSimpMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/shouldusesimpmatch--0f222deb9694dd2ee8f07238.md) | 238 | `declaration-track:0f222deb9694dd2ee8f07238af565f84fa7a4b41cfc54442c84c513a238f20d2` |
| 10 | `def` | [findMatchToSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/findmatchtosplit--afd1d82560cf54210bdada00.md) | 249 | `declaration-track:afd1d82560cf54210bdada00037e8be9b796727e03578a74c358fc6d4f67f095` |
| 11 | `def` | [splitMatch?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/splitmatch--dc58b1264ce43117d7eb18ce.md) | 286 | `declaration-track:dc58b1264ce43117d7eb18ceb0f23558cab1046266545211613ee8543adedea4` |
| 12 | `def` | [mkEqnTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/mkeqntypes--31f2db664f71df31595e3106.md) | 301 | `declaration-track:31f2db664f71df31595e3106a3327a1c3f1c5839b8f12814717d3e953c2c50ea` |
| 13 | `def` | [removeUnusedEqnHypotheses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/removeunusedeqnhypotheses--e2d4467ce522b47e1ca05da1.md) | 327 | `declaration-track:e2d4467ce522b47e1ca05da1351cb958f4a3958ffc5c7519437762a861498cc0` |
| 14 | `def` | [mkEqns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/mkeqns--7cec95537c3d02bc2c508f6c.md) | 359 | `declaration-track:7cec95537c3d02bc2c508f6c5634d6342795db44c98115c65d24c129b2d2a5a8` |
| 15 | `def` | [getEqnsFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/geteqnsfor--5c15e9f5ef131483c18aa6dd.md) | 390 | `declaration-track:5c15e9f5ef131483c18aa6dddb006dd73a1ca8d5372fb2e19ab4410910e83922` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/declarations/builtin-initialize--f497b97fd4abc1a9f2d92410.md) | 406 | `declaration-track:f497b97fd4abc1a9f2d92410c3505e85309bf6ffc6881090754602c68d3d2617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

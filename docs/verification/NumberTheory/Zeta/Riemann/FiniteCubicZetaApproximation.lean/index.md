# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaApproximation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46ddd85c851d0748432a29612e952f385ce02433",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46ddd85c851d0748432a29612e952f385ce02433`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaIdentity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/cutoff--42876d3108055e4f5f837b4d.md) | 27 | `declaration-track:42876d3108055e4f5f837b4d555dc39cd46ab12b40f949dad3a4c0beaa742df7` |
| 2 | `def` | [terminalFactor](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/terminalfactor--81fbf3d54247c768a498d0d3.md) | 29 | `declaration-track:81fbf3d54247c768a498d0d36494734cc0ee8c04ed644a57777b34d068e76ef3` |
| 3 | `def` | [terminalSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/terminalslope--a1514a113aa060789e0cd332.md) | 32 | `declaration-track:a1514a113aa060789e0cd332e575d3596b6dfaf1ff29adf30716be283d5ef467` |
| 4 | `def` | [approximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/approximation--c52eb4e8a4b30d69030a14ef.md) | 36 | `declaration-track:c52eb4e8a4b30d69030a14ef21e3efe744f0b5447c14f7d52c0d350f94f32a24` |
| 5 | `def` | [approximationSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/approximationslope--3f995712413eb1546a8536a4.md) | 41 | `declaration-track:3f995712413eb1546a8536a416134cf69722aa2308550ebb0487a6e6514ef4bf` |
| 6 | `def` | [cellPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/cellprefix--12ed356bdfd113792e615714.md) | 48 | `declaration-track:12ed356bdfd113792e6157140c6fa78783c108c5964a74d9dc6c16ad3b4014d0` |
| 7 | `def` | [analyticTail](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/analytictail--967462ff4783baf3220a665a.md) | 51 | `declaration-track:967462ff4783baf3220a665a3542c49c62c7f71e2a802490d752b6a0289aeacf` |
| 8 | `theorem` | [cutoff_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/cutoff-pos--79977c9fdc4930e42b36b636.md) | 54 | `result-track:79977c9fdc4930e42b36b6365e3fbac412675dbb4a81ce7590fc3c4eb5b3f12b` |
| 9 | `theorem` | [hasDerivAt_negative_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/hasderivat-negative-power--c7273b97926814a39c5e706d.md) | 57 | `result-track:c7273b97926814a39c5e706d08e039d7756771d77f6d61457b4a1b4ee3ccf06e` |
| 10 | `theorem` | [hasDerivAt_terminalFactor](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/hasderivat-terminalfactor--a1ff5d09261ae9dc04b42e1e.md) | 63 | `result-track:a1ff5d09261ae9dc04b42e1e987ddd950d7d1090d83d4d3e9e613d1fbf200831` |
| 11 | `theorem` | [hasDerivAt_approximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/hasderivat-approximation--2221d40cdcff7bdb593ac3f8.md) | 70 | `result-track:2221d40cdcff7bdb593ac3f82c919d6c96deb238d7bc9d388e623196c9992c04` |
| 12 | `theorem` | [terminal_power_identities](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/terminal-power-identities--93fa18fdc95dcc8b19cc2309.md) | 78 | `result-track:93fa18fdc95dcc8b19cc23091033823ef7cbef37e7f504eb44f9f6b112eb9121` |
| 13 | `theorem` | [zeta_sub_approximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/zeta-sub-approximation--4cf5edc3f256188f83bcac53.md) | 92 | `result-track:4cf5edc3f256188f83bcac53f3d18885a29e6000865c12df1c1cf33221c7ee6c` |
| 14 | `theorem` | [analyticAt_cellPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/analyticat-cellprefix--b8f25df5931d583c7e96c923.md) | 114 | `result-track:b8f25df5931d583c7e96c9234a9e6ab6ecf6fc0029487f2e76d8220eba20599a` |
| 15 | `theorem` | [analyticAt_analyticTail](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/analyticat-analytictail--b7fcaafda0287dd21ce793c6.md) | 129 | `result-track:b7fcaafda0287dd21ce793c603dac05b592ef69934356386316e14d21a98124b` |
| 16 | `theorem` | [slope_defect_eq_deriv_tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/declarations/slope-defect-eq-deriv-tail--41949c727eab12a5f83bb22f.md) | 136 | `result-track:41949c727eab12a5f83bb22f92519ecbf459edee67c0b6cd83f194fb70b62fae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

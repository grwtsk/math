# Verification target: GRWTSK.Analysis.LaxMilgram.Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e702fd38f691e81ed9c978ac8b92ef345716230",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/index.md) · [Full source](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e702fd38f691e81ed9c978ac8b92ef345716230`.

Source path: `GRWTSK/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bounded_below](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/bounded-below--a736db208a902b6e271b3427.md) | 49 | `result-track:a736db208a902b6e271b342776158e0d8ffb066d33ea547f69a24020d46e6a4e` |
| 2 | `theorem` | [antilipschitz](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/antilipschitz--c3fe7e50a18893c4e1979985.md) | 62 | `result-track:c3fe7e50a18893c4e19799852238a6c41a280ddfc40850df0695fa6a5439dabd` |
| 3 | `theorem` | [ker_eq_bot](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/ker-eq-bot--38c4e457f5e9b12c956e74c9.md) | 70 | `result-track:38c4e457f5e9b12c956e74c97f25d6def9cccf4874bed84deb7559bbcfb8c07e` |
| 4 | `theorem` | [isClosed_range](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/isclosed-range--6bd6c934369957e57a74a892.md) | 75 | `result-track:6bd6c934369957e57a74a8925df60445090fa32491f992f3f92f3cffa4201a62` |
| 5 | `theorem` | [range_eq_top](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/range-eq-top--8136a590bde8c27b2bb35e1d.md) | 80 | `result-track:8136a590bde8c27b2bb35e1ddc13a863cd2249d1b0af7d4222931f47191d25bb` |
| 6 | `def` | [continuousLinearEquivOfBilin](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/continuouslinearequivofbilin--8f9777c5ec58e4b5c679dbac.md) | 102 | `declaration-track:8f9777c5ec58e4b5c679dbacd00966810ce7920532a4536aec173ff5bcf55cd1` |
| 7 | `theorem` | [continuousLinearEquivOfBilin_apply](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/continuouslinearequivofbilin-apply--0590b556e99aa32c506315eb.md) | 106 | `result-track:0590b556e99aa32c506315eb522d20f45dc6d6a57877a1d6009069b242ff884c` |
| 8 | `theorem` | [unique_continuousLinearEquivOfBilin](../../../../mathematics/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/declarations/unique-continuouslinearequivofbilin--40f57e8939b689b7f9b61cf9.md) | 110 | `result-track:40f57e8939b689b7f9b61cf90548ab812de472f17a80a8c6c1e14e7c76a56321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

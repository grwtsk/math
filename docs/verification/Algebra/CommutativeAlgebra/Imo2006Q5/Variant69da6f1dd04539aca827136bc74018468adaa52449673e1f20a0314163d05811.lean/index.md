# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Imo2006Q5.Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9db9f67a501201b03a4406201ae94795eaf5cdc9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9db9f67a501201b03a4406201ae94795eaf5cdc9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.natAbs_eq_of_chain_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/declarations/int-natabs-eq-of-chain-dvd--db39ede359fd82b767cf2a54.md) | 56 | `result-track:db39ede359fd82b767cf2a54b7320b59cd51a815db7fce2673b2669b026bf3b4` |
| 2 | `theorem` | [Int.add_eq_add_of_natAbs_eq_of_natAbs_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/declarations/int-add-eq-add-of-natabs-eq-of-natabs-eq--d9f48675d28428af1706c628.md) | 61 | `result-track:d9f48675d28428af1706c628552477662215dc434e3c54e3360fe674a86c1ae0` |
| 3 | `theorem` | [Polynomial.isPeriodicPt_eval_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/declarations/polynomial-isperiodicpt-eval-two--d8dd71dcba36b6f0e10e2784.md) | 71 | `result-track:d8dd71dcba36b6f0e10e278444ad2e96efed4f1b5b3625481f0803474fcb1928` |
| 4 | `theorem` | [Polynomial.iterate_comp_sub_X_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/declarations/polynomial-iterate-comp-sub-x-ne--1566ddf0e5c1478a6eb0d7ca.md) | 129 | `result-track:1566ddf0e5c1478a6eb0d7ca9a72f8421e53b9fbf8dca206268a8f3447e2bafa` |
| 5 | `theorem` | [imo2006_q5'](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/declarations/imo2006-q5--f2962959dff9f5a9f28f9cc8.md) | 136 | `result-track:f2962959dff9f5a9f28f9cc8e14d1e0e88a509cd701d13aabd957274fc58cb13` |
| 6 | `theorem` | [imo2006_q5](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/declarations/imo2006-q5--520f3ae12400b143aa72f512.md) | 198 | `result-track:520f3ae12400b143aa72f51236389e40a7628f94c1ea0c5234b5d54c3b22fe77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.HEval.Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af619ae62b6ced6cabfb2bae7ef6fd41f2afe1c6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/index.md) · [Full source](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af619ae62b6ced6cabfb2bae7ef6fd41f2afe1c6`.

Source path: `GRWTSK/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Summable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [powerSeriesFamily](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/powerseriesfamily--3b1f5e370c59b3f0e839ffde.md) | 52 | `declaration-track:3b1f5e370c59b3f0e839ffde1547b82fe25376df9cc84ebb4e666e579501ae9e` |
| 2 | `theorem` | [powerSeriesFamily_of_not_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/powerseriesfamily-of-not-ordertop-pos--db7ba8c2bcdbb8f9792ebdf8.md) | 55 | `result-track:db7ba8c2bcdbb8f9792ebdf8f3f0eab4be73ff0bdb1e1febcaa2e6b7f5c34ce9` |
| 3 | `theorem` | [powerSeriesFamily_of_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/powerseriesfamily-of-ordertop-pos--4ca2e7e723534b4e4ea81289.md) | 61 | `result-track:4ca2e7e723534b4e4ea81289ee3d1ac1ae994eaef62948e7787f5477ab3661cf` |
| 4 | `theorem` | [powerSeriesFamily_hsum_zero](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/powerseriesfamily-hsum-zero--ecdd24c09b8575b3cf5a66bd.md) | 66 | `result-track:ecdd24c09b8575b3cf5a66bdf46b6e03692778f4d7b2e4f4c347707a879f7fa9` |
| 5 | `theorem` | [powerSeriesFamily_add](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/powerseriesfamily-add--c86148b5884425da578a96b5.md) | 77 | `result-track:c86148b5884425da578a96b57fc89a46fbd2d5b4e3f28d2b48528b101ba069e5` |
| 6 | `theorem` | [powerSeriesFamily_smul](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/powerseriesfamily-smul--5f2c10eaae0ecf37b7300e76.md) | 82 | `result-track:5f2c10eaae0ecf37b7300e76f50b52162c78de07e36cbb3523250f680fbb1e59` |
| 7 | `theorem` | [support_powerSeriesFamily_subset](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/support-powerseriesfamily-subset--770aaee59a905578f2f1d1f0.md) | 87 | `result-track:770aaee59a905578f2f1d1f0edb995ce9e75be6af7dd07af9bdd44ea87e2987d` |
| 8 | `theorem` | [hsum_powerSeriesFamily_mul](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/hsum-powerseriesfamily-mul--fb828df668895bf2e53d8657.md) | 117 | `result-track:fb828df668895bf2e53d8657afdde9620ae06c03e411e268460ee8844f0845ad` |
| 9 | `def` | [heval](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/heval--a2fc32787bcda5b373443d72.md) | 169 | `declaration-track:a2fc32787bcda5b373443d72fe9fbefaed6137e3ba56a49cff092b6276dec93a` |
| 10 | `theorem` | [heval_mul](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/heval-mul--14e5d90ec63f0c81c4327d04.md) | 193 | `result-track:14e5d90ec63f0c81c4327d0457c29f47276ae7c4ae4371ff002856a6478ae17e` |
| 11 | `theorem` | [heval_unit](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/heval-unit--36ef968b09725b6f93471f01.md) | 197 | `result-track:36ef968b09725b6f93471f011e2a2fa42559c093e1a85d93a524c21e164ec01d` |
| 12 | `theorem` | [coeff_heval](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/coeff-heval--5eba7f913c0e489b4c3ed3cc.md) | 202 | `result-track:5eba7f913c0e489b4c3ed3cc17248238aaaf4cdc6eb28a92cd572a88a438fe98` |
| 13 | `theorem` | [coeff_heval_zero](../../../../mathematics/Algebra/HEval/Variant018477852b1b486c497b9175bd2933b36b82d1c985a12c595cd75a817a99dcda.lean/declarations/coeff-heval-zero--a871e39849659e822d695edd.md) | 207 | `result-track:a871e39849659e822d695edd08f6ab1a3c758521bd20f78411d5dbb6d3ce72c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

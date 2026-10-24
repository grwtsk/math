# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bf08ae1c11eb79af0d4ee296ab12b2f6fe0ef59",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bf08ae1c11eb79af0d4ee296ab12b2f6fe0ef59`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.QuotientRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Pi` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientEquivPiSpan](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/declarations/quotientequivpispan--35bae4ce874c45742378df49.md) | 40 | `declaration-track:35bae4ce874c45742378df495935b374bb6610e272f97e495dccc9a85527bdd4` |
| 2 | `def` | [quotientEquivPiZMod](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/declarations/quotientequivpizmod--0f808585a59d1411ff194fde.md) | 86 | `declaration-track:0f808585a59d1411ff194fdecf85b4e5401b3b4558f7e8e5d8899b969269f2a2` |
| 3 | `theorem` | [finiteQuotientOfFreeOfRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/declarations/finitequotientoffreeofrankeq--0a9511e7ec1e2b53aa9f0f1a.md) | 99 | `result-track:0a9511e7ec1e2b53aa9f0f1acc9ac9aed55bb307e2a93a338206297cad671707` |
| 4 | `def` | [quotientEquivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/declarations/quotientequivdirectsum--aa043558297c01e91d515f12.md) | 116 | `declaration-track:aa043558297c01e91d515f12d41548912dd33c71e99077af4150c2e16b9da384` |
| 5 | `theorem` | [finrank_quotient_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant848ca2fb93d30e439200180304fb00f0b5a1356e174af0ee3c3da833a753957a.lean/declarations/finrank-quotient-eq-sum--3784ec02b1642d571cb8d2bf.md) | 122 | `result-track:3784ec02b1642d571cb8d2bf45f1417f317160581869c1235994876980195462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

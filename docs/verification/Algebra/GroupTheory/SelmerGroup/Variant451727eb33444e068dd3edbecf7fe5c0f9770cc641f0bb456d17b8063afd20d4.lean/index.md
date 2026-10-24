# Verification target: GRWTSK.Algebra.GroupTheory.SelmerGroup.Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b8af6368c643baf541a6c8e8c9c62caba000a2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b8af6368c643baf541a6c8e8c9c62caba000a2`.

Source path: `GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.TypeTags` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valuationOfNeZeroToFun](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuationofnezerotofun--74376062dd6f18139b3f0cab.md) | 93 | `declaration-track:74376062dd6f18139b3f0cab36e102da039f7d302dc31c2fa1bcba466d4e55d6` |
| 2 | `theorem` | [valuationOfNeZeroToFun_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuationofnezerotofun-eq--8afb3da8bd40b53760b59070.md) | 100 | `result-track:8afb3da8bd40b53760b59070e65bde508b523097234d0337a6649a9597a36444` |
| 3 | `def` | [valuationOfNeZero](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuationofnezero--b7529b447ba87d1203477875.md) | 113 | `declaration-track:b7529b447ba87d1203477875c345a2e23636713f8cadecdef5fbcf5f64b29360` |
| 4 | `theorem` | [valuationOfNeZero_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuationofnezero-eq--bfbc61ce5287dc7c1bf7a938.md) | 121 | `result-track:bfbc61ce5287dc7c1bf7a9383ee37609f9c1f551e5a641ecda5fb1f20dd20bc4` |
| 5 | `theorem` | [valuation_of_unit_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuation-of-unit-eq--9b77772d1ffba0853028b833.md) | 125 | `result-track:9b77772d1ffba0853028b833b0839b65c76cb5168bef4adc210e6077b1e49818` |
| 6 | `def` | [valuationOfNeZeroMod](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuationofnezeromod--12c34194f0b79a86c8b15e2c.md) | 142 | `declaration-track:12c34194f0b79a86c8b15e2c30fa1f6b6e865538ce08361caef989cd4cf373ff` |
| 7 | `theorem` | [valuation_of_unit_mod_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuation-of-unit-mod-eq--4d6b2148a21183609d042286.md) | 155 | `result-track:4d6b2148a21183609d04228605e37b886dcfdff38672865a0f6741226ff21339` |
| 8 | `def` | [selmerGroup](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/selmergroup--0d1786a68712f3d20ac3b6b6.md) | 170 | `declaration-track:0d1786a68712f3d20ac3b6b6773b4e2dc88f14bf2c3e95c26b59e07e7c5c0c4f` |
| 9 | `theorem` | [monotone](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/monotone--07ee1066c9565458bbadb8a9.md) | 181 | `result-track:07ee1066c9565458bbadb8a98fdb0f4bbcbe7595a112f4a7f5684e81952374eb` |
| 10 | `def` | [valuation](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuation--63dc67a87282f9bb70051772.md) | 184 | `declaration-track:63dc67a87282f9bb70051772cf74da583ed6999f153a62b27479e5f9bcf5b047` |
| 11 | `theorem` | [valuation_ker_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/valuation-ker-eq--e425a5d9237a7107589e6841.md) | 189 | `result-track:e425a5d9237a7107589e6841113eaa4bb81ba16d2218a5f8fe2308e4528ffcf0` |
| 12 | `def` | [fromUnit](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/fromunit--4cb14bb1d5f17e780f2f5db0.md) | 200 | `declaration-track:4cb14bb1d5f17e780f2f5db0823e6326d81755e3d4910f45394f5c6c7008b56b` |
| 13 | `theorem` | [fromUnit_ker](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/fromunit-ker--8ba05f44b71579f8ac8098ec.md) | 208 | `result-track:8ba05f44b71579f8ac8098ec69321dd298f1f8d59aba560a2d3fb80714637749` |
| 14 | `def` | [fromUnitLift](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/fromunitlift--a5304d0035cfff59a0910d04.md) | 236 | `declaration-track:a5304d0035cfff59a0910d0420f3d81738e94582ec8c2dd20b618f73b67654f3` |
| 15 | `theorem` | [fromUnitLift_injective](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/declarations/fromunitlift-injective--e13cad733de4864b867a77d8.md) | 240 | `result-track:e13cad733de4864b867a77d8adf6f2d2a9bb70f3cba3bff3d34252ef1d452bcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

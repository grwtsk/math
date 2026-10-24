# Verification target: GRWTSK.Algebra.GroupTheory.SelmerGroup.Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27ac06be850384a397a483d581bf0163a7668bde",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27ac06be850384a397a483d581bf0163a7668bde`.

Source path: `GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.TypeTags` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.TypeTags` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valuationOfNeZeroToFun](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuationofnezerotofun--fe7790fde2d45776dc27ec93.md) | 85 | `declaration-track:fe7790fde2d45776dc27ec93f26338c0c4b5cd38b3047e5934c1fb27401f686b` |
| 2 | `theorem` | [valuationOfNeZeroToFun_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuationofnezerotofun-eq--641442d67f8bc3309bbaea92.md) | 92 | `result-track:641442d67f8bc3309bbaea92eb23681263ed54d29dad57b144cec3a57384bedc` |
| 3 | `def` | [valuationOfNeZero](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuationofnezero--659204b0a0a3377f14ed8a9c.md) | 105 | `declaration-track:659204b0a0a3377f14ed8a9ca1e4ffa174f662ce98db7b6702feda36ee560276` |
| 4 | `theorem` | [valuationOfNeZero_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuationofnezero-eq--96ae30705b0eed9cd4c32e97.md) | 113 | `result-track:96ae30705b0eed9cd4c32e97019b7a85b3168769ecc7ab4a687aa3f21ce37932` |
| 5 | `theorem` | [valuation_of_unit_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuation-of-unit-eq--eddef4a591fd33d3454f3289.md) | 117 | `result-track:eddef4a591fd33d3454f3289493a2c94013cd8f25a815bd7bbf2900bbdd906f2` |
| 6 | `def` | [valuationOfNeZeroMod](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuationofnezeromod--5d81f71ee1148700332da280.md) | 134 | `declaration-track:5d81f71ee1148700332da2803671772ab7a336a3d7d9dabffafdfcbe75414698` |
| 7 | `theorem` | [valuation_of_unit_mod_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuation-of-unit-mod-eq--a94fb3e857718b09069c5aad.md) | 147 | `result-track:a94fb3e857718b09069c5aad6c0e525765d1ce2e4c6e7f44eb13d8d9bdb5f0a2` |
| 8 | `def` | [selmerGroup](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/selmergroup--a9b053bcff6c40fb81626cf2.md) | 162 | `declaration-track:a9b053bcff6c40fb81626cf2cdbd7107186c3599193b25fd7ecbfab7de4236ff` |
| 9 | `theorem` | [monotone](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/monotone--9143d687464f953354fb8930.md) | 173 | `result-track:9143d687464f953354fb8930ac676b0e0a988bed57c7263b4867f74a7fe24856` |
| 10 | `def` | [valuation](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuation--f167f253ae7d859513a70eeb.md) | 176 | `declaration-track:f167f253ae7d859513a70eeb02c73feb2c0ee3444703607576a2a34c3c2f7778` |
| 11 | `theorem` | [valuation_ker_eq](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/valuation-ker-eq--55f4c155829630c329282b32.md) | 181 | `result-track:55f4c155829630c329282b32809dca8a519ea318073754919763c98d36bb063d` |
| 12 | `def` | [fromUnit](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/fromunit--dd189c1bc71f3bc5da56c1da.md) | 192 | `declaration-track:dd189c1bc71f3bc5da56c1daf125e358b668ff705e8415156b7d4db2a20a5995` |
| 13 | `theorem` | [fromUnit_ker](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/fromunit-ker--a6dac6261d023075540e9b8d.md) | 200 | `result-track:a6dac6261d023075540e9b8dc1d5297acdebbd9504c661effc219867f2d28976` |
| 14 | `def` | [fromUnitLift](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/fromunitlift--fef651718b920ebb450d8bb7.md) | 228 | `declaration-track:fef651718b920ebb450d8bb7c2d796cde92e5c190b1594f70bf3fbeff95ef4d9` |
| 15 | `theorem` | [fromUnitLift_injective](../../../../../mathematics/Algebra/GroupTheory/SelmerGroup/Variant814bd03a2c360a4ce9eee64509609958ce4787150d5935d8c63fde8d5aada595.lean/declarations/fromunitlift-injective--7be63fa625d120710fc3e41c.md) | 232 | `result-track:7be63fa625d120710fc3e41cb276b12533e277f1c85a64ff7023b8150ff55a05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

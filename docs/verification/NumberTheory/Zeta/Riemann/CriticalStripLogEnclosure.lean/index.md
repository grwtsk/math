# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripLogEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73aac60196c2d9ca34352aef6fcf2a57024c7e1e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73aac60196c2d9ca34352aef6fcf2a57024c7e1e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealLogEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/reallogenclosure--eb73007508cc00a98e5143d6.md) | 30 | `declaration-track:eb73007508cc00a98e5143d67eada3f1b9eba5a5155e64c8c689da1998e48f9c` |
| 2 | `def` | [enlarge](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/enlarge--b63a48efa5b85eefe803335c.md) | 39 | `declaration-track:b63a48efa5b85eefe803335cfebc6936f013643ea3107530f4c4f0e992ecf7a8` |
| 3 | `def` | [recenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/recenter--26b4e058e369880f4c672cfc.md) | 47 | `declaration-track:26b4e058e369880f4c672cfc7b82bbd720d10bb090219119e8fa9287ebfb8584` |
| 4 | `def` | [mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/mul--6816c2bb57e6071840a1677f.md) | 60 | `declaration-track:6816c2bb57e6071840a1677fe9813f5b1175493dd08bd0c720ac7b88d9e48ca6` |
| 5 | `def` | [powNat](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/pownat--dcc4a5a180ee0da959c56118.md) | 74 | `declaration-track:dcc4a5a180ee0da959c56118b0d1c8cd3e204e4f434593d09aaa3955f18f1bfb` |
| 6 | `def` | [transport](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/transport--98377bd70a8af250e032e083.md) | 83 | `declaration-track:98377bd70a8af250e032e083b48facc6b24b46f905f3fafa98d91ccc72f466b8` |
| 7 | `def` | [ratioLogCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/ratiologcenter--916fc78e122e5393a51adc1e.md) | 89 | `declaration-track:916fc78e122e5393a51adc1e94bf36b2759223a4aa4bc6a4d814c717847e3771` |
| 8 | `def` | [ratioLogRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/ratiologradius--fa3a5da3e801da3a92e1acd4.md) | 94 | `declaration-track:fa3a5da3e801da3a92e1acd49f087afdbe36d76ac8a371d7f3ae361448d8c4dc` |
| 9 | `lemma` | [ratioLogRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/ratiologradius-nonneg--7d792adbb0972117d1d4a143.md) | 97 | `result-track:7d792adbb0972117d1d4a143ae126f110ae890d4cfae8cba7abef06fd523bef5` |
| 10 | `theorem` | [ratioLog_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/ratiolog-encloses--d9b008bd09698c46e1e17463.md) | 104 | `result-track:d9b008bd09698c46e1e17463b565a172dc62bb028832103d7365c16a15e737e1` |
| 11 | `def` | [logEnclosureOfRatio](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/logenclosureofratio--c8c1e7e812e9e7d6badaf7f5.md) | 133 | `declaration-track:c8c1e7e812e9e7d6badaf7f53b223aef8e9e2ec6164b38057d018f99aa9d4264` |
| 12 | `def` | [dyadicLogEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/dyadiclogenclosure--c40266f22c454a8bc94fdd11.md) | 149 | `declaration-track:c40266f22c454a8bc94fdd11c0677859e08e0bc2c3d40cb8e66d4ef6c20be98f` |
| 13 | `theorem` | [dyadic_ratio_le_one_third](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/dyadic-ratio-le-one-third--bdac663f4945b9ae9243b49d.md) | 156 | `result-track:bdac663f4945b9ae9243b49ddcd857772feaef1457405239b0e33c170eb5a079` |
| 14 | `theorem` | [log_two_low_order_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/log-two-low-order-enclosure--9a51a3e1f5f3a0e8a1d7d644.md) | 163 | `result-track:9a51a3e1f5f3a0e8a1d7d64405e50b7e75f5f028f42d2e03139c64d23887df11` |
| 15 | `def` | [logTwoLowOrder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/declarations/logtwoloworder--5818f8fcf1abcf1789766ef5.md) | 169 | `declaration-track:5818f8fcf1abcf1789766ef54b3ade0cc36e44fe9bfe3d71567ee1b78ff14898` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

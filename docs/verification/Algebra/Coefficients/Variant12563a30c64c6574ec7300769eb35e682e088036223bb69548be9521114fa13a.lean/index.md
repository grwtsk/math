# Verification target: GRWTSK.Algebra.Coefficients.Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75175c62c4d7c7efdb9cbc968e75e6a5c129d363",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75175c62c4d7c7efdb9cbc968e75e6a5c129d363`.

Source path: `GRWTSK/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoefficientContext](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/coefficientcontext--df4aafab73cdbec94b86db46.md) | 27 | `declaration-track:df4aafab73cdbec94b86db4612708bc50bc74d6afbc6eae9f362190a3907cde4` |
| 2 | `def` | [integral](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/integral--ddfdd21f926ce720d2e6f628.md) | 36 | `declaration-track:ddfdd21f926ce720d2e6f628026038883b12f6b355acd58f37907d123a503e49` |
| 3 | `def` | [integralLifted](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/integrallifted--89fc0fc05c940865bf749ae9.md) | 40 | `declaration-track:89fc0fc05c940865bf749ae9c5ae34ccbc867bc36f159d102a53f89a29a02788` |
| 4 | `def` | [rational](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/rational--77d00e2fedae43f62b5173f1.md) | 44 | `declaration-track:77d00e2fedae43f62b5173f1787ffc00c47e1ba47944b5437f317290b0db3ffd` |
| 5 | `def` | [modulo](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/modulo--87ee2f4281ab6657d1de5fc7.md) | 48 | `declaration-track:87ee2f4281ab6657d1de5fc7ad2005e1106892bfeaa519bf8b292a13c9b5fc77` |
| 6 | `structure` | [LocalizationDatum](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/localizationdatum--4fc13e3177dd84b0cccc15fe.md) | 54 | `declaration-track:4fc13e3177dd84b0cccc15fe8360aa85ecebe66fc8e25fb3cb521a219c1f200e` |
| 7 | `def` | [context](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/context--186fc2c1c25da6c98153a14e.md) | 60 | `declaration-track:186fc2c1c25da6c98153a14e870ff67459c044a52074e004761419e6532059b7` |
| 8 | `def` | [algebraMapComparison](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/algebramapcomparison--52932a94052294c668c0f9ad.md) | 65 | `declaration-track:52932a94052294c668c0f9adc13e0e5a854c61261c93e2831a19d57d053c30d4` |
| 9 | `structure` | [CompletionDatum](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/completiondatum--715d56cef3807c6cc163296d.md) | 76 | `declaration-track:715d56cef3807c6cc163296d4127fe210051dd95b54129f7e83840e66d40d54f` |
| 10 | `def` | [context](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/context--9f5eee2c2140b044a6fede66.md) | 85 | `declaration-track:9f5eee2c2140b044a6fede661920884cc8fa1fe004ba417dafd30bacad4c055f` |
| 11 | `def` | [algebraMapComparison](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/algebramapcomparison--852df04ad8cfe5b05e603264.md) | 89 | `declaration-track:852df04ad8cfe5b05e603264e760883392a9c7f2f293c9642741b8e0a81bde4f` |
| 12 | `structure` | [CoefficientChange](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/coefficientchange--3c1126f7bb961be7e1ba4f96.md) | 96 | `declaration-track:3c1126f7bb961be7e1ba4f96b55f78181a5a725b3e8d3317819f9c0bc262ba77` |
| 13 | `def` | [id](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/id--c0aaeb67fbc6a2f6879de258.md) | 103 | `declaration-track:c0aaeb67fbc6a2f6879de2586c7038cb770c81b7f60c9aa3603bf0754c163085` |
| 14 | `def` | [comp](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/comp--f260183e4f206d1d9f013768.md) | 107 | `declaration-track:f260183e4f206d1d9f0137683b0227e48c74bb0a6ff25d714272c49683a518bb` |
| 15 | `theorem` | [id_apply](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/id-apply--2e06178721d5244a0c340821.md) | 116 | `result-track:2e06178721d5244a0c340821508a239c25cb006a8cfaf2c910f2aa8c58938014` |
| 16 | `theorem` | [comp_apply](../../../../mathematics/Algebra/Coefficients/Variant12563a30c64c6574ec7300769eb35e682e088036223bb69548be9521114fa13a.lean/declarations/comp-apply--e56422e622864b2fd129c771.md) | 121 | `result-track:e56422e622864b2fd129c771283a4cff3a3e9fcfec22ca9cd05c320fa27b7169` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

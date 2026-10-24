# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RationalPhase.Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69884be1a7ea9035271d39910e5282124520f383",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69884be1a7ea9035271d39910e5282124520f383`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/planecode--8bd953da127264f60a6738d4.md) | 27 | `declaration-track:8bd953da127264f60a6738d488b5d55f4942dfb0ef1f620ffb9a6a7063d94564` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/encode--b6216a73bfeaa319e49a09d4.md) | 34 | `declaration-track:b6216a73bfeaa319e49a09d418dbd8e5820eaf66a85f7d5fa04e962fc15632fa` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/interpret--b1f0163f592b8dcd0f630182.md) | 38 | `declaration-track:b1f0163f592b8dcd0f6301823843c0be049bd1433e65721660e4224bdb940580` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/supported--e269d4c10b8d92ced03a03a4.md) | 42 | `declaration-track:e269d4c10b8d92ced03a03a495315d16f8fe4d6414354338af1827d563230fb7` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/coefficients--73994387086ddbdebe93fd08.md) | 45 | `declaration-track:73994387086ddbdebe93fd087b2a9bc460d59ca5ad1212e7e95d78d789775a23` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/operation--70451305b6e6a4fb2f9512c4.md) | 49 | `declaration-track:70451305b6e6a4fb2f9512c4e0fbf163043496bf06f104709c2cf73b998511c6` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/move--2e25238581f02b558b59bb76.md) | 54 | `declaration-track:2e25238581f02b558b59bb767a41de4ff8485dac87876c9855ec71ad02db7c8d` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/operation-eq-coefficients--83e56b87cd0bd8ad882210ed.md) | 61 | `result-track:83e56b87cd0bd8ad882210ed3125a3324fd07208444c909da7ea7621207060db` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/interpret-encode--9aaa896909037095e29facdd.md) | 70 | `result-track:9aaa896909037095e29facdd151187d531983a10305c650948c7bd82f3baff92` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/interpret-move--22ca77a87486d3810a86da06.md) | 74 | `result-track:22ca77a87486d3810a86da069a44dfa89c5a863d5f26f73e4925bff432c96b8c` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/interpret-move-encode--b94206a5bb63a1aa4470bd7e.md) | 80 | `result-track:b94206a5bb63a1aa4470bd7e3f82110b60110485916d7f940ab46e82af7eedaa` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/quadratic--ace9d0c254c53d978cd59c4c.md) | 85 | `declaration-track:ace9d0c254c53d978cd59c4c79991eb44d8e34146f4340acde49dc6dee39fd16` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/operation-quadratic--3eccb6d5f0d9300df9ec4b55.md) | 88 | `result-track:3eccb6d5f0d9300df9ec4b55f322df9b4f9652de457f0fd8157adc12343b3c02` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/move-quadratic--d20d24bae7c832c90ca5d9a2.md) | 96 | `result-track:d20d24bae7c832c90ca5d9a24e212d4fcb71ec706dea6bbe522563ecc0b96dc5` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/reflection--24024d4ba55f346b2c80fcd1.md) | 101 | `declaration-track:24024d4ba55f346b2c80fcd1576ebad97dacb558cde26a6f52589b32f2464e05` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/reflection-sq--8f0061af521c97027bc701b9.md) | 105 | `result-track:8f0061af521c97027bc701b9ad1e4453769bf231d7d00246ce5daa29418e1051` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/reflection-reversal--3836e9207cea8312f426838d.md) | 109 | `result-track:3836e9207cea8312f426838d561fcc86a4cebd9ccab30c64d6ede041ed9c8365` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/operation-inverse--4db7ee8c246e97d9d2e5ca11.md) | 115 | `result-track:4db7ee8c246e97d9d2e5ca1129a7555dca6a9db651c91cbea8c23b1527a99423` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phasereflection--8a99eac6f78b3e858112e0ef.md) | 122 | `declaration-track:8a99eac6f78b3e858112e0efd8eb535757d2c483fb06929feb18f3f5b8d487a5` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phasereflection-sq--61f65d225e2a65084416924c.md) | 126 | `result-track:61f65d225e2a65084416924c08152da9b9a17f0e0f8af10ef9814b59698fb462` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/coefficients-one--8b2b47f89ce6f0f1ff30b148.md) | 136 | `result-track:8b2b47f89ce6f0f1ff30b1483f2a722cae0a2a326f3752c0091d83f1bcbdae1c` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/operation-one--c531908c9ee94ec409a49d05.md) | 140 | `result-track:c531908c9ee94ec409a49d05fc44eca8329b87fd24277965bebf31b4d10550a0` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/integralat--4bb5aa5abace1b05b94010e4.md) | 154 | `declaration-track:4bb5aa5abace1b05b94010e455110e9fcc79b69bb35fd8f724904e13fbe86f1e` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/integralvector--13aebdea9be5e3dfa04c0a5b.md) | 158 | `declaration-track:13aebdea9be5e3dfa04c0a5b5bd6d59f8f8bd3d38bb933b415572ec465c96607` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/operation-integral--d845dca42ae8a37fc4b8f920.md) | 161 | `result-track:d845dca42ae8a37fc4b8f920e637429361ed86ec30c929a4f87b15fa65893c74` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/integralat-iff-preserves-integral--1456c2a2137bed85c39f8552.md) | 178 | `result-track:1456c2a2137bed85c39f85529feef1c40bd91a5a08cbc293051b105583f5c828` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/instance--3c6e3e1d6c4efbc12ad78a73.md) | 192 | `declaration-track:3c6e3e1d6c4efbc12ad78a7341ba0e349b9e94f9cc2759c5c5fe790159ed327f` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/instance--c4e9aa4927fddc159eb1397f.md) | 193 | `declaration-track:c4e9aa4927fddc159eb1397fa2b85dfbfd9f0495d7053e0f4adbc558424de4ed` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/coefficients-two-rat--0dd641924584bdfbe3e2afa8.md) | 196 | `result-track:0dd641924584bdfbe3e2afa8204cbdbaaf4879ffb1d912b6785ab1180ab60633` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-two-supported-five--c98161d46019656d17caad26.md) | 201 | `result-track:c98161d46019656d17caad265ea47a25af772f1f389c020c99bf2c6a9a407139` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/coefficients-two-five-diagonal-norm--6f746457c0786a6f23a552da.md) | 205 | `result-track:6f746457c0786a6f23a552dae128e99119f461af9e661d721d94d57becbe1fb4` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-two-five-not-integral--62c505f75febdb9f70ca2ee8.md) | 216 | `result-track:62c505f75febdb9f70ca2ee848d5e3d4844b9215d4c0494a6eb48a7a6319c317` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-two-not-supported-mod-five--2f79ea3bf7afd0b7abe408aa.md) | 223 | `result-track:2f79ea3bf7afd0b7abe408aa2e4f42181e4004a0acd2b373478082a76d39cf46` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-one-not-supported-mod-two--3eed6bc9c256e74fc8acc272.md) | 228 | `result-track:3eed6bc9c256e74fc8acc27232bc5125eb0d5899a53446cced402c5cf2e2a257` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-one-supported-two--c62be5b08720618cb8d8f7cb.md) | 233 | `result-track:c62be5b08720618cb8d8f7cb7345271afda1a24be6a736d890436aab6248c35e` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-one-two-denominator-norm--24d7d33eda0f19be441c20d8.md) | 237 | `result-track:24d7d33eda0f19be441c20d828fb6798d02b8a24fa4321c3dbef68425603822c` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-one-two-integral--c8638c41f266054552033513.md) | 242 | `result-track:c8638c41f266054552033513e00a48ad151d6980964ee0429dfacaa1639a9c24` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-two-five-basis-nonintegral--5face3c9e4238ab6422178ca.md) | 249 | `result-track:5face3c9e4238ab6422178ca06c8354ae56a3fb7df0133e6912bcb12baf5ad81` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variant86e65b85e15859af473714af4b3ff2d450e69d495677b597e44c67951b7e697f.lean/declarations/phase-one-two-preserves-integral--b9a85a930fa7c655c13e448c.md) | 255 | `result-track:b9a85a930fa7c655c13e448c76034bbc31efb78a96c64107d3661da72af5324e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

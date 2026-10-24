# Verification target: GRWTSK.Algebra.LinearAlgebra.ArithmeticAdversaryProfile.Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1db5bb93b675ce72424b7a52ef16f72192c10275",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1db5bb93b675ce72424b7a52ef16f72192c10275`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.AdversaryInvariant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.EffectiveArithmeticSource` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticKernelLift](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/arithmetickernellift--5622754aabc265554c5fbc1e.md) | 27 | `declaration-track:5622754aabc265554c5fbc1edcaafa591bce62f6979ceb4378426d8f75d11e76` |
| 2 | `structure` | [ArithmeticAdversaryWitness](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/arithmeticadversarywitness--427afa6e13de7577915c2cbb.md) | 39 | `declaration-track:427afa6e13de7577915c2cbb4ac114d2396745f66c7975803a6e9150bd1f30fe` |
| 3 | `def` | [globalNorm](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/globalnorm--c7a6b8c9bb9abfde993bc197.md) | 59 | `declaration-track:c7a6b8c9bb9abfde993bc197d2e481797979edc1774598edee462c9f5f92de67` |
| 4 | `def` | [queryLocalNorm](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/querylocalnorm--87b3b4c452b3cb9eca1044f7.md) | 63 | `declaration-track:87b3b4c452b3cb9eca1044f77f1a19e0031c4839e62e109f68b08dff32390b4b` |
| 5 | `structure` | [NormProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/normprofile--51254618ff72eb7e30f650d5.md) | 69 | `declaration-track:51254618ff72eb7e30f650d5ff1910e70a23f4634ffb31a079186f30741d1170` |
| 6 | `def` | [normProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/normprofile--9e64b730e98c7a0f37c0ea9a.md) | 73 | `declaration-track:9e64b730e98c7a0f37c0ea9ab84d8e2f94f171a41c4dfbafe0f9060bb96c2a3c` |
| 7 | `structure` | [ResourceSensitiveProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/resourcesensitiveprofile--328288c296f2144095408268.md) | 83 | `declaration-track:328288c296f214409540826838af60c9250295441fe599dd0ca46ca49d904836` |
| 8 | `def` | [resourceSensitiveProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/resourcesensitiveprofile--ced69d1163a605c246366b8f.md) | 95 | `declaration-track:ced69d1163a605c246366b8f1ccc2d906a53ddbe7b709f98d2a618e5917dd285` |
| 9 | `def` | [ResourceSensitiveProfile.hardnessRatio](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/resourcesensitiveprofile-hardnessratio--425220fc0fc53384f70cf7bc.md) | 116 | `declaration-track:425220fc0fc53384f70cf7bc94d1fab625f3385b8f385fd03d91cd4bbe749823` |
| 10 | `def` | [ratio](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/ratio--d7f82d4e72d9215b3be27553.md) | 121 | `declaration-track:d7f82d4e72d9215b3be275530c2e7431e7d2a77771db195a70806d03a511a81a` |
| 11 | `theorem` | [ratio_eq_global_div_queryLocal](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/ratio-eq-global-div-querylocal--c1c8d6eec7bd06275921d13c.md) | 125 | `result-track:c1c8d6eec7bd06275921d13cf2946c248ab00c9d126b6c3be67cd21f075a3e27` |
| 12 | `theorem` | [resourceSensitiveProfile_hardnessRatio_eq](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/resourcesensitiveprofile-hardnessratio-eq--6eb316bf4b46915e5d5a5c0b.md) | 133 | `result-track:6eb316bf4b46915e5d5a5c0b4b949d40a2bd8aa252f91b902d2a8313e27193b3` |
| 13 | `structure` | [ResourceProfileReduction](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/resourceprofilereduction--4e2aa2d214e25ed416a50e08.md) | 144 | `declaration-track:4e2aa2d214e25ed416a50e08d4f3cbc7875edb5e8af1f62908baa15756dd78c8` |
| 14 | `def` | [arithmeticAdversaryRatios](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/arithmeticadversaryratios--d758af9f6291250a55ccb614.md) | 158 | `declaration-track:d758af9f6291250a55ccb6143a31039fff1484fb401f36af1503f2117a66ac07` |
| 15 | `def` | [arithmeticAdversaryCoupling](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/arithmeticadversarycoupling--eb3216677e152a38b5f4bce0.md) | 169 | `declaration-track:eb3216677e152a38b5f4bce02e81409dd7ac7dcf4676e5648535fb8273110eee` |
| 16 | `def` | [generalAdversaryRatios](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/generaladversaryratios--4262a693def58fafeae5adfa.md) | 179 | `declaration-track:4262a693def58fafeae5adfa44d5cdd7ac056a282757414fb4302f259b7af3f2` |
| 17 | `def` | [generalAdversaryOptimum](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/generaladversaryoptimum--76bda18ae00f395f9b605d66.md) | 187 | `declaration-track:76bda18ae00f395f9b605d66b31f27842ce2af4417e7c47aabefbe92573359d7` |
| 18 | `theorem` | [arithmeticAdversaryRatios_subset_general](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/arithmeticadversaryratios-subset-general--844c9de4208ff3ed73928960.md) | 194 | `result-track:844c9de4208ff3ed739289602d71a4c380329ca48aee6cf2fa465a1055edd750` |
| 19 | `theorem` | [arithmeticAdversaryCoupling_le_general](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/arithmeticadversarycoupling-le-general--29a368566aa376e2de8dd3f5.md) | 206 | `result-track:29a368566aa376e2de8dd3f51ddd0642eda1766622e67a57b05dec714192a0a1` |
| 20 | `structure` | [ArithmeticKernelNormCertificate](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/arithmetickernelnormcertificate--a51422cf26e5181586902d67.md) | 222 | `declaration-track:a51422cf26e5181586902d67bf3df01a63455b7ee7f0150682b0c1de174ab87c` |
| 21 | `theorem` | [ratio_lower_bound](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/ratio-lower-bound--ad760ecb9d8cee75b9f44296.md) | 248 | `result-track:ad760ecb9d8cee75b9f4429666fac456ba6466796f4b8aafc4ba1a64e5dedeb6` |
| 22 | `theorem` | [coupling_lower_bound](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variant1bd252a8866f9da7406de5300a88bf079a22dc74ad5b9fdb671e588f83feab80.lean/declarations/coupling-lower-bound--ab5b858d772eac92cb6550d0.md) | 262 | `result-track:ab5b858d772eac92cb6550d0f0b435f870e2769859bd58642f4ad88fdb9e1a7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicRemainderStatements.Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d92171258494330735b9e8fda98c3ba18eae7d2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d92171258494330735b9e8fda98c3ba18eae7d2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetaconstant--6b2076751a232f6f6796ea3b.md) | 19 | `declaration-track:6b2076751a232f6f6796ea3b891177e66e09702e43319f12236aef6440cae996` |
| 2 | `def` | [thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetatail--ae013918e5f629508d66aee9.md) | 21 | `declaration-track:ae013918e5f629508d66aee98faf6278d19e56d53ab9062c9612bda79025b681` |
| 3 | `def` | [thetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetaremainder--706e2a626a48cc4313850f48.md) | 23 | `declaration-track:706e2a626a48cc4313850f48f799e6f681571898add0c3df998b98a4e7ff16c8` |
| 4 | `theorem` | [thetaLogError_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetalogerror-signed-integrable--e5a00ba795236281816ca0ef.md) | 25 | `result-track:e5a00ba795236281816ca0ef3e7cfb657f3ab239f64fda2cbf573b969b0ec9eb` |
| 5 | `theorem` | [thetaTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetatail-integrable--f0c26ebc857fc3456c21cb59.md) | 29 | `result-track:f0c26ebc857fc3456c21cb593c9c3d6598088e77d3286690ce68348737748d79` |
| 6 | `theorem` | [prefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/prefix-add-tail--a8acd1a773cfeac8a5809708.md) | 33 | `result-track:a8acd1a773cfeac8a5809708f15faa0419aaed897f1f850b9d12136136ac56a8` |
| 7 | `theorem` | [centered_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/centered-prefix-eq--314afdc24f962db4f9adeade.md) | 38 | `result-track:314afdc24f962db4f9adeade4c2e796d6f2d6ae66b221830444f8697e3593c08` |
| 8 | `theorem` | [thetaTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetatail-measurable--3bdae9ec1e1b69d8d7b7ae37.md) | 45 | `result-track:3bdae9ec1e1b69d8d7b7ae37325c4f068bc8f2fc3d85522887eb30ffe11a30b7` |
| 9 | `theorem` | [thetaRemainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetaremainder-measurable--332a295b9cff834b92457956.md) | 57 | `result-track:332a295b9cff834b92457956aab188b591f264cce0f0272a7d9cafe3a565d058` |
| 10 | `def` | [tailKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/tailkernel--a12c1babe73ea069fec432b5.md) | 60 | `declaration-track:a12c1babe73ea069fec432b56152a8c07c080e416ef218077b6cf508a5b18ab9` |
| 11 | `theorem` | [tailKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/tailkernel-measurable--4a1bfbb1f9ab22bf65046932.md) | 63 | `result-track:4a1bfbb1f9ab22bf650469326862c834c7e059bd5ec848bca8eac9af1208b8f2` |
| 12 | `theorem` | [tailKernel_fiber_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/tailkernel-fiber-integrable--01910c2eb3db01370db4154c.md) | 67 | `result-track:01910c2eb3db01370db4154cf32d27c236c73a695fae1b8613341cc5b59d8ad6` |
| 13 | `theorem` | [tailKernel_fiber_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/tailkernel-fiber-integral--474808cdcbacf74d4c735d94.md) | 76 | `result-track:474808cdcbacf74d4c735d94639298fd91f9d661fab1286a8606e19f3c905acc` |
| 14 | `theorem` | [tailKernel_fiber_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/tailkernel-fiber-norm--255547acda6b505664d55e29.md) | 85 | `result-track:255547acda6b505664d55e2918796bf4681467fab5bad42d55dcbebdc3b2a71e` |
| 15 | `theorem` | [tailKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/tailkernel-integrable--8c8642b69c84c39a1e0b0549.md) | 95 | `result-track:8c8642b69c84c39a1e0b0549c9f4eb5aae11c4d276571a2f8135fd91de10327f` |
| 16 | `theorem` | [tailKernel_outer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/tailkernel-outer--e5539b45ae7f3b5eee78f307.md) | 104 | `result-track:e5539b45ae7f3b5eee78f3070ee8dbb24a6fcc7834091a366fd0f2102e1d69c4` |
| 17 | `theorem` | [absolute_tail_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/absolute-tail-first-moment-integrable--63c688cba4b86651315a9210.md) | 110 | `result-track:63c688cba4b86651315a921044d8121b0744a0f158ff3d3cb3274f499eb1715e` |
| 18 | `theorem` | [absolute_tail_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/absolute-tail-first-moment--5c6e034d75e1171f2517a191.md) | 116 | `result-track:5c6e034d75e1171f2517a19195018f8bf6c147feb8ee184c3350a4f6098b1cfc` |
| 19 | `theorem` | [thetaRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetaremainder-abs-le--470f87754e962145dff43801.md) | 132 | `result-track:470f87754e962145dff43801c78c4b576c128011eafb1459163fb0693fc57bef` |
| 20 | `theorem` | [thetaRemainder_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetaremainder-first-moment-integrable--b3b2b5bcd64b04b671315a44.md) | 139 | `result-track:b3b2b5bcd64b04b671315a444f465866e99a32d46e6f01b1bafc0edfeab701db` |
| 21 | `theorem` | [thetaRemainder_first_moment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/thetaremainder-first-moment-bound--1c20d309ddcfd8c9615eb549.md) | 153 | `result-track:1c20d309ddcfd8c9615eb5498b70c3bea65be38e9731fff716e443971df2b20d` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--d0d77d0525fd7a6632040691.md) | 174 | `declaration-track:d0d77d0525fd7a663204069169de1df76b694c1d201e206eb6455cf382c58615` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--abaace6cdecfc3a4ac239f32.md) | 176 | `declaration-track:abaace6cdecfc3a4ac239f324ffcb34c5677800f7d73915a3b53f4205312761c` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--e5df5a80d7d96776fd5144e4.md) | 178 | `declaration-track:e5df5a80d7d96776fd5144e476ffc9c2b15855747ec828002fffbfe068bb449d` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--757d19bc6e452972e7601b2a.md) | 180 | `declaration-track:757d19bc6e452972e7601b2a3d48ee978cfff419402afe1fd3dfdc8381a60614` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--2e790e99aac3e570acf125d0.md) | 183 | `declaration-track:2e790e99aac3e570acf125d06081d91a370c44f61d079d51d38d97675c0c5cfa` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--dafbec164d36aeb025b42e3d.md) | 187 | `declaration-track:dafbec164d36aeb025b42e3d20bb56e51510be69f8c21471e32fa9ad4be62292` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--96c0dbc27ee4a956897894d1.md) | 191 | `declaration-track:96c0dbc27ee4a956897894d14528f840056a504f292b9c1577abf27191e4eb23` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--db613ab6004f762c83d022b3.md) | 196 | `declaration-track:db613ab6004f762c83d022b37d674eca90a365c9c5aea7271f5ad65248c82634` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--3df128a275ce599aa6fccd1f.md) | 199 | `declaration-track:3df128a275ce599aa6fccd1fb10e7ed71b9206eade3cddb6d20e5d0f09fc1ac0` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--ab16fc06c7f0f581d2afdbce.md) | 202 | `declaration-track:ab16fc06c7f0f581d2afdbce8af25350e7fc9765c59afaa1089374974fb05c81` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--b7fd489f548b91f16dca52dd.md) | 206 | `declaration-track:b7fd489f548b91f16dca52dd9826699ca01ddeb73657810ee83f12592c645f79` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--0a56f89051545b582a2a7874.md) | 211 | `declaration-track:0a56f89051545b582a2a7874e8fce9c4ec2928c06aa2a9bd03ade5168a8a3762` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--295e9549439691681342727e.md) | 215 | `declaration-track:295e9549439691681342727ec84b733ec0543b9944e57c2146cb63f27cd459f4` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a.lean/declarations/example--d669d07ce6e89383ff9d2f86.md) | 219 | `declaration-track:d669d07ce6e89383ff9d2f863627a22757acf612efd4c437e0db2689e483d2ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

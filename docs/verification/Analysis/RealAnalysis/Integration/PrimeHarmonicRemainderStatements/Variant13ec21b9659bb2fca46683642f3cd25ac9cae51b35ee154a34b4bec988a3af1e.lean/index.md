# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicRemainderStatements.Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37b57d66ada629b0053b1c084a9d9966d9b0b6cc",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37b57d66ada629b0053b1c084a9d9966d9b0b6cc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetaconstant--acb141c26ae5be65b866b5fa.md) | 27 | `declaration-track:acb141c26ae5be65b866b5fad4fd5856f32814d417023793a692859fda65a0e2` |
| 2 | `def` | [thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetatail--00b2dd5dc4be9ffd90265b88.md) | 29 | `declaration-track:00b2dd5dc4be9ffd90265b88edb898027a32cdb3f11644b0494961a7f0cca82c` |
| 3 | `def` | [thetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetaremainder--834dd32f5c9cb942d06fb547.md) | 31 | `declaration-track:834dd32f5c9cb942d06fb54769004520fe20020179ead98773ad1e4e94296f0d` |
| 4 | `theorem` | [thetaLogError_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetalogerror-signed-integrable--94afebf08eaf1933bdf686d6.md) | 33 | `result-track:94afebf08eaf1933bdf686d6e3f0fbc1d18ed92f8f92fdea9bc4e6a81167e43a` |
| 5 | `theorem` | [thetaTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetatail-integrable--543c3ce192700dd79e2be4a9.md) | 37 | `result-track:543c3ce192700dd79e2be4a98b0c82a64938542e7f60263a78e33a44df363556` |
| 6 | `theorem` | [prefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/prefix-add-tail--69d7704989a479e6fa610d11.md) | 41 | `result-track:69d7704989a479e6fa610d11a15e184f5e5fda9d64c7f4042692fbb9953c0e1a` |
| 7 | `theorem` | [centered_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/centered-prefix-eq--a325cff671081323d813e9ef.md) | 46 | `result-track:a325cff671081323d813e9efc1a203fed888549a91395d96b37d5bbb3ae1d1aa` |
| 8 | `theorem` | [thetaTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetatail-measurable--2c3a1092f81fbec791c08a2d.md) | 53 | `result-track:2c3a1092f81fbec791c08a2dad8bf23bb48c51752822fcfc445634a186b67a9e` |
| 9 | `theorem` | [thetaRemainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetaremainder-measurable--427bd9c69e91630d64056bd9.md) | 65 | `result-track:427bd9c69e91630d64056bd981df23c0911937d52182e9e7635750055d250d54` |
| 10 | `def` | [tailKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/tailkernel--2f3cb072e415dcb8cca8eb82.md) | 68 | `declaration-track:2f3cb072e415dcb8cca8eb82e1814a4e0502365be14ad072346daa98b5b938de` |
| 11 | `theorem` | [tailKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/tailkernel-measurable--166a600e3fc743754acb6585.md) | 71 | `result-track:166a600e3fc743754acb6585b1a791c01b9c6766b47c8424c4b1f183ea2b1f9b` |
| 12 | `theorem` | [tailKernel_fiber_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/tailkernel-fiber-integrable--8d0ec69cb9ec66247d0930b9.md) | 75 | `result-track:8d0ec69cb9ec66247d0930b9b16ecbf4c12d35cbae4774a686c6755970455352` |
| 13 | `theorem` | [tailKernel_fiber_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/tailkernel-fiber-integral--d43e944f5c794d2dd5893e3c.md) | 84 | `result-track:d43e944f5c794d2dd5893e3cb5f9d827098b8c5becfe8f017b8d970a07d0ec98` |
| 14 | `theorem` | [tailKernel_fiber_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/tailkernel-fiber-norm--011cfd09fa5f78317f35d44c.md) | 93 | `result-track:011cfd09fa5f78317f35d44cf90c9be93ce226d33741d4ef7bdcb8f1a5758a1a` |
| 15 | `theorem` | [tailKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/tailkernel-integrable--d0b3dd55072fcb719f15988e.md) | 103 | `result-track:d0b3dd55072fcb719f15988e474cf278b17ac8f30358b3aaf9a938adda36f800` |
| 16 | `theorem` | [tailKernel_outer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/tailkernel-outer--1ec1eb179d19ea99f8c55ae2.md) | 112 | `result-track:1ec1eb179d19ea99f8c55ae226adae812e848bf67e6053ed96a47f1088a4897c` |
| 17 | `theorem` | [absolute_tail_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/absolute-tail-first-moment-integrable--200d2e04ca265929d354a3bc.md) | 118 | `result-track:200d2e04ca265929d354a3bc9288de715d9c66202074f3e3b11e4c2d01fee7d3` |
| 18 | `theorem` | [absolute_tail_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/absolute-tail-first-moment--b21aa25c2f27a7c13b71b90e.md) | 124 | `result-track:b21aa25c2f27a7c13b71b90ef5e08039fdbf8ff1016ab3f27be16f8f2144136e` |
| 19 | `theorem` | [thetaRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetaremainder-abs-le--3f89b4a3c6ae4968aed4be15.md) | 140 | `result-track:3f89b4a3c6ae4968aed4be15054f446a662f0155d62ec08af2679edc3c35ef1c` |
| 20 | `theorem` | [thetaRemainder_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetaremainder-first-moment-integrable--55d8b2818d70502888e9fbb7.md) | 147 | `result-track:55d8b2818d70502888e9fbb7575878ad855c189658c5bedd729cf0916c82c17b` |
| 21 | `theorem` | [thetaRemainder_first_moment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/thetaremainder-first-moment-bound--75b1c38ac23cc033952c54be.md) | 161 | `result-track:75b1c38ac23cc033952c54be342652ed5d3ba615a22446b967d3296e8f93385e` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--6da4966f92b40819c6de5c41.md) | 182 | `declaration-track:6da4966f92b40819c6de5c413fc9b0e17cccd8846e2faa6c2bae20483b9ddaf3` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--b0dae9dd5b45515da5e281a6.md) | 184 | `declaration-track:b0dae9dd5b45515da5e281a61a57f2e2fc259bb9d2c258dc7234896239899ef0` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--7fe6c65cbb27b451f8acd8d3.md) | 186 | `declaration-track:7fe6c65cbb27b451f8acd8d3f38d06ed2b21f11cfacf090eb6c04999163ee6ee` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--859fa7615c6823ec7ae13e37.md) | 188 | `declaration-track:859fa7615c6823ec7ae13e3715a52b8f75de0f72cd8a0a7f9f01ebaa3525b35b` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--aad1ab124fb650742a5bf132.md) | 191 | `declaration-track:aad1ab124fb650742a5bf1324774b0c24751ec676501af77f14a0584229cedbc` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--97b92e1744abc9496b9e3f5f.md) | 195 | `declaration-track:97b92e1744abc9496b9e3f5f7f7357c16a36fd7b43fa184517d89a87aa7a9b42` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--a3392998972e48170b970bcc.md) | 199 | `declaration-track:a3392998972e48170b970bcc60a22fcb5f2f12441e22a82c8b0026cfa96cd46d` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--a1276788f643a5fdeda8634f.md) | 204 | `declaration-track:a1276788f643a5fdeda8634ff421548d31599a803e7dcea1dffa93505b00cc88` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--38307946ae7701ff5217643d.md) | 207 | `declaration-track:38307946ae7701ff5217643d7493892ee7d1868b00e9fd54facce1a4e48474ab` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--87c1a81bbb7b7be4afce6f84.md) | 210 | `declaration-track:87c1a81bbb7b7be4afce6f84da0d22d564e3de7e9ac7053716845c5500b8e735` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--6ba59dc399c65c9ee8760397.md) | 214 | `declaration-track:6ba59dc399c65c9ee8760397e4c713d044d4859170c90b56e7f283b6a7af9bdc` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--7110bb5fb84149dc696a7e6f.md) | 219 | `declaration-track:7110bb5fb84149dc696a7e6f9c7192cb5e98169c41299a6cbde1d0197e0e16bd` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--a6efadba077350a4d89da3e2.md) | 223 | `declaration-track:a6efadba077350a4d89da3e24c19a72feb3705774f012e4d5c473ed79ac424d6` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/declarations/example--390b0d5ff70756f79bed2035.md) | 227 | `declaration-track:390b0d5ff70756f79bed20355e6b94440afe06c3455fc068bf8282dbb7fff6d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

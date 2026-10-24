# Verification target: GRWTSK.Analysis.SpecialFunctions.ClassicalFunctions.GammaFunction.ExplicitLanczosAndSuppliedBounds.Variant03d73452c99c6fd3.FormulaDomainAndInequalityData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "348edb5033dfe80d6fdeab9687b0737959ab7412",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `348edb5033dfe80d6fdeab9687b0737959ab7412`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GammaBranch](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/gammabranch--ab9ab12d68b17aa9fbfbb21d.md) | 43 | `declaration-track:ab9ab12d68b17aa9fbfbb21dceea3b9af2f69963fe60819cc44a766adfaaea81` |
| 2 | `def` | [gammaDomain](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/gammadomain--0070e465b553281d61c9bd63.md) | 50 | `declaration-track:0070e465b553281d61c9bd63c9146a3d6562c4507b5a2bf83337374236739e31` |
| 3 | `def` | [lanczosCoefficients](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/lanczoscoefficients--5cbd67714fe80d482c19c065.md) | 55 | `declaration-track:5cbd67714fe80d482c19c06599aaed1ab27f055cf217fffb46f0716dece890d4` |
| 4 | `def` | [lanczosCore](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/lanczoscore--09797f28fc0c054970506a52.md) | 67 | `declaration-track:09797f28fc0c054970506a52fd0a8caf56bf595784eee1b87c3680ee230822b3` |
| 5 | `def` | [lanczosGammaModel](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/lanczosgammamodel--af9c96709999050b046e4a71.md) | 83 | `declaration-track:af9c96709999050b046e4a713cfa76f4d246d536f0fee3160936ccbdac5456ff` |
| 6 | `def` | [gammaBranch](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/gammabranch--ef15a247c4b564097ac7f33e.md) | 89 | `declaration-track:ef15a247c4b564097ac7f33ebf8354f3470b0e0a7a1692979a6ba29c19e2603a` |
| 7 | `def` | [gammaProfileMaximumError](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/gammaprofilemaximumerror--b9e2361a84a0fc241d44c18f.md) | 94 | `declaration-track:b9e2361a84a0fc241d44c18f3ed87eeae3274e85e653704f2f996ba3609ea121` |
| 8 | `theorem` | [gammaProfileMaximumError_nonnegative](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/gammaprofilemaximumerror-nonnegative--cd32b0567f59125d762dafc4.md) | 96 | `result-track:cd32b0567f59125d762dafc48ad73fe5d325c59ca4cba2cfb4de6b3a5f295adf` |
| 9 | `def` | [precessionProfileMaximumError](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/precessionprofilemaximumerror--8c555f282e32e6dc130d96b4.md) | 101 | `declaration-track:8c555f282e32e6dc130d96b4f63c0b894db90040a251c36be8ef3093b201e407` |
| 10 | `theorem` | [precessionProfileMaximumError_nonnegative](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/precessionprofilemaximumerror-nonnegative--9dd08b93b761947319514956.md) | 103 | `result-track:9dd08b93b76194731951495699414f4512783b69e13af01fed5f317971a5a270` |
| 11 | `def` | [binary64FiniteMagnitudeLimit](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/binary64finitemagnitudelimit--7f6a4c83853f0e0c31e79214.md) | 108 | `declaration-track:7f6a4c83853f0e0c31e792140abadf3742471790d30b8dfb71d141c4f968b085` |
| 12 | `theorem` | [binary64FiniteMagnitudeLimit_nonnegative](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/binary64finitemagnitudelimit-nonnegative--67860156f21fc5e7862da4cd.md) | 111 | `result-track:67860156f21fc5e7862da4cd06192c2a27b645c8ba0da643f482085cdde9f7c6` |
| 13 | `structure` | [GammaApproximationCertificate](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/gammaapproximationcertificate--df23d012ab9a2240ca3fdefa.md) | 118 | `declaration-track:df23d012ab9a2240ca3fdefa2ec2f720dc18ca713d62079c144c1886916d1dc1` |
| 14 | `structure` | [FloatingRangeFailureCertificate](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/declarations/floatingrangefailurecertificate--aeb214c322d2f3af3631ab0e.md) | 128 | `declaration-track:aeb214c322d2f3af3631ab0e11c7fb0c0458467f4050fc263e40db923b6d6efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BoundaryRieszLaplace.Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74e97fba1a99108bd87790ed46e35351bb183617",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74e97fba1a99108bd87790ed46e35351bb183617`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.BoundaryRieszKernel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryProfileLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundaryprofilelaplace--9cab16455d9ddfa0ef7341a5.md) | 26 | `declaration-track:9cab16455d9ddfa0ef7341a5ce74c3759040eb39a2af515824529ad5355a945e` |
| 2 | `def` | [boundaryExtensionLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundaryextensionlaplace--1109ee616dd6fda5ad794e73.md) | 30 | `declaration-track:1109ee616dd6fda5ad794e731c42fa0b9ab3ce953afd774191ff8f180b860b86` |
| 3 | `theorem` | [boundary_profile_laplace_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-integrand--caf714ea51dd6a281fa78c4c.md) | 34 | `result-track:caf714ea51dd6a281fa78c4cca6f05f761f5d2d211a3ffb07a958fa99f891ea5` |
| 4 | `theorem` | [boundary_profile_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-integrable--6ef97bbbe25b1664e67e7493.md) | 44 | `result-track:6ef97bbbe25b1664e67e74930820255868704d21ed84dd5edd6d9b4b9eb2428c` |
| 5 | `theorem` | [boundary_profile_laplace_closed_form](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-closed-form--68aba52b4ebe2d055f7d67dd.md) | 55 | `result-track:68aba52b4ebe2d055f7d67ddc47d4f1d5ef664618a89622b7908b514599a92cc` |
| 6 | `theorem` | [boundary_profile_laplace_half_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-half-zero--dc600a59c5cd2ac1bdb1a462.md) | 72 | `result-track:dc600a59c5cd2ac1bdb1a4626c88c8c2fb8498a8b44127d9e6c0289c99f84fa4` |
| 7 | `def` | [rieszMonomialPacket](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/rieszmonomialpacket--48272124a23aba571e0f9eb0.md) | 77 | `declaration-track:48272124a23aba571e0f9eb09c3f86e3e56875d4a9f5e26126501b35a6d25c87` |
| 8 | `theorem` | [riesz_monomial_packet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/riesz-monomial-packet-integrable--3dc6fd0401f6195aabea50f4.md) | 84 | `result-track:3dc6fd0401f6195aabea50f4dcadea6f22f220536eb23cb99644023937052059` |
| 9 | `theorem` | [riesz_monomial_packet_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/riesz-monomial-packet-integral--e628b432e1802b836b68ee07.md) | 91 | `result-track:e628b432e1802b836b68ee07bf2308ed3880e70f306699c3685bf471808f02d8` |
| 10 | `theorem` | [boundary_extension_laplace_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-extension-laplace-integrand--1e8aedadec66dc303da963ae.md) | 128 | `result-track:1e8aedadec66dc303da963ae9e998c32762cf17d75739393122f7f038a89e640` |
| 11 | `theorem` | [boundary_extension_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-extension-laplace-integrable--63fd8e6bc8407ee015c467df.md) | 142 | `result-track:63fd8e6bc8407ee015c467df1467b33076bf15b5eedaa60426abf1709a27830b` |
| 12 | `theorem` | [boundary_riesz_transform_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-riesz-transform-eq-integral--f1ccce34b3700f8322afbd0c.md) | 154 | `result-track:f1ccce34b3700f8322afbd0cf8960322490d260279da9b2f72636d3c5854b546` |
| 13 | `theorem` | [boundary_extension_laplace_half_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-extension-laplace-half-zero--5a3e312dad3173ad371fc58a.md) | 169 | `result-track:5a3e312dad3173ad371fc58aede3b9e8476fdfeae3c78d3465076a3fddc277e4` |
| 14 | `theorem` | [boundary_riesz_base_laplace_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-riesz-base-laplace-integrand--428345b9cc2c7fc958d613e7.md) | 175 | `result-track:428345b9cc2c7fc958d613e7b242645e7c51b203762f757a99fdf52beac4c60c` |
| 15 | `theorem` | [boundary_riesz_base_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-riesz-base-laplace-integrable--89afbd849b03aef989619497.md) | 187 | `result-track:89afbd849b03aef989619497e99220e6b85ddc6874a02696156773e9750843e8` |
| 16 | `theorem` | [boundary_riesz_base_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-riesz-base-laplace-integral--e1866d53c9e03519e7ac35d3.md) | 196 | `result-track:e1866d53c9e03519e7ac35d3d8b5005978cb9371c34f5f158b8e63272794e976` |
| 17 | `theorem` | [boundary_extension_laplace_eq_pole_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-extension-laplace-eq-pole-factor--10686832bb4a21637abf581e.md) | 214 | `result-track:10686832bb4a21637abf581e92ce558f56e19153787377945213b6695050ba95` |
| 18 | `theorem` | [boundary_riesz_transform_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-riesz-transform-tendsto--8394ae13aba7b59c5af69e53.md) | 223 | `result-track:8394ae13aba7b59c5af69e53a559397b0b7a3d152afd0b00a8267a1f2c1672b9` |
| 19 | `theorem` | [boundary_extension_laplace_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-extension-laplace-tendsto--1addf90224b2e72a17120069.md) | 265 | `result-track:1addf90224b2e72a171200693919274deaf2952a08aa8f466efca12754eac078` |
| 20 | `def` | [profilePoleFactor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/profilepolefactor--7f7f0a6920ab4f734597bcc9.md) | 273 | `declaration-track:7f7f0a6920ab4f734597bcc9516f6330ed86acd60987de8f5a119eaa45cf259c` |
| 21 | `theorem` | [profile_laplace_eventually_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/profile-laplace-eventually-factor--b0b582c73ccc87de88ee6485.md) | 277 | `result-track:b0b582c73ccc87de88ee6485949a506626f936c62c03097bbb01923b9d10293f` |
| 22 | `theorem` | [boundary_profile_laplace_first_derivative_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-first-derivative-zero--94acf4f4b20f2296ea5ffbd7.md) | 289 | `result-track:94acf4f4b20f2296ea5ffbd748be5c2a76797b4db198bbb3a2968cd8b245204f` |
| 23 | `theorem` | [boundary_profile_laplace_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-second-derivative--8b115bce5709e9ae9fb864bd.md) | 301 | `result-track:8b115bce5709e9ae9fb864bd0b02d9cdbaa1c396715b80bcb0f3af62d9c9a32d` |
| 24 | `theorem` | [boundary_profile_laplace_second_derivative_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-second-derivative-ne-zero--241e37df7d89689c8722d468.md) | 318 | `result-track:241e37df7d89689c8722d4689ee9fdfa5401dc53514ffa93ccaab34201980951` |
| 25 | `theorem` | [boundary_profile_laplace_moment_consistency](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/declarations/boundary-profile-laplace-moment-consistency--496aee0c1570b30b7459e46f.md) | 324 | `result-track:496aee0c1570b30b7459e46f159ec511de227efda5fefe7b3b3a886b4328ed00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

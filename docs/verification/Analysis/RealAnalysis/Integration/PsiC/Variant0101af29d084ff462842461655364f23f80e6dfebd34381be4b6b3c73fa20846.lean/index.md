# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PsiC.Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9776201c0bb8454ae8f607c7f90145cf34db5a53",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9776201c0bb8454ae8f607c7f90145cf34db5a53`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psic--b18fb04ece9e86efbf5601a6.md) | 20 | `declaration-track:b18fb04ece9e86efbf5601a6b3bcf2ec397c51d6330b5e8d639c4a098dd4f920` |
| 2 | `lemma` | [psiC_eq_psiA](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psic-eq-psia--a184f8ddd16192324dfe20bc.md) | 23 | `result-track:a184f8ddd16192324dfe20bc2da29271e64fc9af14a834ebc6c569f07f6d73f1` |
| 3 | `theorem` | [psi_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-nonneg--eb2a0a14c854fad3d6af18f8.md) | 26 | `result-track:eb2a0a14c854fad3d6af18f84f6dbcfc35a080f5598a2cc723c9e5fafa3dc0a7` |
| 4 | `theorem` | [psi_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-even--91db61c9978629a26fb65b4d.md) | 35 | `result-track:91db61c9978629a26fb65b4ddda031cb26ce0b24c982eab3602b5931d80798f1` |
| 5 | `theorem` | [psi_le_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-le-l--a7aab5a87d50e40519e5e741.md) | 38 | `result-track:a7aab5a87d50e40519e5e741e21360b8c611795a6f0b8a3272d5eba4b6785238` |
| 6 | `theorem` | [psi_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-mul-abs-le--1b13947e69ab531c1c668a57.md) | 45 | `result-track:1b13947e69ab531c1c668a5738e138beb0ede2068402a33bb4d5e12c43269f73` |
| 7 | `theorem` | [psi_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-mul-sq-le--50f4ca5ff7e69e3e4230f0ba.md) | 54 | `result-track:50f4ca5ff7e69e3e4230f0ba912dbf9889d91305a726581d04257aa00a4b130b` |
| 8 | `theorem` | [psi_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-abs--754aea343088afd775933329.md) | 67 | `result-track:754aea343088afd77593332918e9c160efeed4fd415e8e587e4e4ed0ebfe9e9f` |
| 9 | `theorem` | [psi_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-measurable--b2cab30a2163f2e39c150e2d.md) | 71 | `result-track:b2cab30a2163f2e39c150e2d0b8482cfb21a419e50278f60c3423f54880c0923` |
| 10 | `theorem` | [psi_le_rpow_neg_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-le-rpow-neg-two--4068811c85d363a0f0f6efcd.md) | 85 | `result-track:4068811c85d363a0f0f6efcda51b10ab760848b6ce3a26e4c27177635085c7da` |
| 11 | `def` | [psiMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psimaj--f795f8e6c08f771fa187164d.md) | 93 | `declaration-track:f795f8e6c08f771fa187164d2a0dc9c1c26525ccf8e92ce30d85e6bc5a6c2de2` |
| 12 | `theorem` | [psiMaj_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psimaj-integrable--eb032a9ea112df6f226699dd.md) | 98 | `result-track:eb032a9ea112df6f226699dd9bae0e7567a07156aa17d25b97eb7592e7e34958` |
| 13 | `theorem` | [psi_le_psiMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-le-psimaj--0d0c56fc47cf896c7ceb57e0.md) | 107 | `result-track:0d0c56fc47cf896c7ceb57e03a89d43af769fa3f5eba4b4ccca6d169d32747be` |
| 14 | `theorem` | [psiints_consts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psiints-consts--0c7efc538ca2477d1c1f2630.md) | 141 | `result-track:0c7efc538ca2477d1c1f2630dd1db8621a010eaca4339da7092739d9b46452cb` |
| 15 | `theorem` | [indicator_psi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/indicator-psi-le--187de478aec191ed987ef451.md) | 153 | `result-track:187de478aec191ed987ef4514b4ec77055cbff348c17c3dec112839763ed19e2` |
| 16 | `theorem` | [integral_psi_Ioi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/integral-psi-ioi-le--dcde70241d0c0e18d93c86d5.md) | 195 | `result-track:dcde70241d0c0e18d93c86d50fb7d09a0cbcd0eb5b2f5f21ea798fb1b2382e33` |
| 17 | `theorem` | [integral_psi_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/integral-psi-sq-mul-abs-le--0795ed58c719b832e4f038b1.md) | 251 | `result-track:0795ed58c719b832e4f038b17f3edc6d995b00083310bfb40b5bbeed128c5589` |
| 18 | `theorem` | [integral_psi_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/integral-psi-sq-le--40ad3468c51d36ae588d308f.md) | 358 | `result-track:40ad3468c51d36ae588d308f8d6cddc40119a190bbdb179ab680a8a4eafa364b` |
| 19 | `theorem` | [psi_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-integrable--9f8b8a5c563a0f50cc5b96d1.md) | 421 | `result-track:9f8b8a5c563a0f50cc5b96d149bf98e03adb90fa53cd0beff8c18c735593f0bc` |
| 20 | `theorem` | [psi_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-sq-integrable--e98621747f3ebec276dae1d9.md) | 429 | `result-track:e98621747f3ebec276dae1d90b7afd2f636c33bd9cb8bfcd42e5dc90be084f75` |
| 21 | `theorem` | [psi_sq_mul_abs_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/psi-sq-mul-abs-integrable--b3007228cc9bae11a45268e2.md) | 439 | `result-track:b3007228cc9bae11a45268e23304567265984c1f0c5b526c2a7fe9d5a6612914` |
| 22 | `theorem` | [integral_sq_mul_abs_le_of_le_psi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/integral-sq-mul-abs-le-of-le-psi--711244a4599b8f6785714968.md) | 453 | `result-track:711244a4599b8f6785714968d421b61b9c4feac30727187d6a26bce19764aa33` |
| 23 | `def` | [momMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/mommaj--b4dc3eb0c4be283ed7c07601.md) | 465 | `declaration-track:b4dc3eb0c4be283ed7c07601e2751a991f13d13fc308d4af436bba624e22a961` |
| 24 | `theorem` | [momMaj_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/mommaj-integrable--9cc8b28499b8f6bca13a9c91.md) | 470 | `result-track:9cc8b28499b8f6bca13a9c910f1286c809ab5fc6f52500bf9d337ecb37eed18c` |
| 25 | `theorem` | [integral_momMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/integral-mommaj--7a249a7546fbb4efd4db44a2.md) | 479 | `result-track:7a249a7546fbb4efd4db44a2847842256439b380995d151d0113a317af3dee86` |
| 26 | `theorem` | [sq_mul_sq_le_momMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/sq-mul-sq-le-mommaj--226d94b5d34be27d7ee2b10c.md) | 516 | `result-track:226d94b5d34be27d7ee2b10c547403548ed45f5630078a839b2f94264dc0d768` |
| 27 | `theorem` | [integrable_sq_mul_sq_of_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/integrable-sq-mul-sq-of-bounds--df332263fed86ba236214aa1.md) | 555 | `result-track:df332263fed86ba236214aa1ee48974d463c639eebba6cb8535140ae2ea9be46` |
| 28 | `theorem` | [integral_sq_mul_sq_le_of_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/declarations/integral-sq-mul-sq-le-of-bounds--2f0037ec428712804a24ba09.md) | 562 | `result-track:2f0037ec428712804a24ba09228cab0605f588152a01346d9d717ae3a2baa44f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

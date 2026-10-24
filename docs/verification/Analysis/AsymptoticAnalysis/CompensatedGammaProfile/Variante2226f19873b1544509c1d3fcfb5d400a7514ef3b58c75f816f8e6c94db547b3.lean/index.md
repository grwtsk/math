# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.CompensatedGammaProfile.Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5402ce95bc5664fdae8f1ab183b237f3de49f56",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5402ce95bc5664fdae8f1ab183b237f3de49f56`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/term--341d3d8a2b6c2352e80b7907.md) | 31 | `declaration-track:341d3d8a2b6c2352e80b7907977ca868c2e2e1c96707b1f8bf0201a6904c7415` |
| 2 | `def` | [partialProfile](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/partialprofile--bba8983c57f63f6f17619da1.md) | 34 | `declaration-track:bba8983c57f63f6f17619da1705355134d1702ff66bfd1523df72a1b5238dedc` |
| 3 | `theorem` | [log_argument_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/log-argument-pos--bfe959d00fcf4a22ef5b8688.md) | 36 | `result-track:bfe959d00fcf4a22ef5b86885de9b400bfe3532dc6626a8261c28bf921328cf1` |
| 4 | `theorem` | [term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/term-nonneg--9ad8c4aa72ab03903462956b.md) | 44 | `result-track:9ad8c4aa72ab03903462956b26a9411b9abf375d9b8de11b86ca92fdc0b5a998` |
| 5 | `theorem` | [compensated_log_le_square_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/compensated-log-le-square-half--f973998a235353bad552d626.md) | 49 | `result-track:f973998a235353bad552d6263af69200fd412b43a7edf7ef9e3e84ba598a018a` |
| 6 | `theorem` | [compensated_log_le_square_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/compensated-log-le-square-div--f28966bb5b18f37fa3025c3a.md) | 58 | `result-track:f28966bb5b18f37fa3025c3aeaa8f89fe458e3ed33501a0155f6981a195268f3` |
| 7 | `theorem` | [term_nonneg_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/term-nonneg-upper--d989fd85a2a1f75ee614af89.md) | 65 | `result-track:d989fd85a2a1f75ee614af8973e24c00c258fb98f6a3a60b058743454483fe83` |
| 8 | `theorem` | [term_negative_compact_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/term-negative-compact-upper--b99c346713ef008df9265a9e.md) | 74 | `result-track:b99c346713ef008df9265a9e3e139a4f43c66245dee85ff7dd169a70d1d92c80` |
| 9 | `theorem` | [log_factorial](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/log-factorial--2005067f201ca5ae14622eca.md) | 97 | `result-track:2005067f201ca5ae14622eca291d6af6a44a3168f43dc633a8c25fc771c3afd1` |
| 10 | `theorem` | [partialProfile_eq_harmonic](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/partialprofile-eq-harmonic--9176f8ff6bc26de51fdc2b1e.md) | 103 | `result-track:9176f8ff6bc26de51fdc2b1ea154e0c674951519c70bec59dbd71b1e4b42d0bd` |
| 11 | `theorem` | [logarithm_split](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/logarithm-split--bb83196e960a14887f25a15a.md) | 116 | `result-track:bb83196e960a14887f25a15af80c4d5bbf5f0b9a4ad128e676191c653ca65d3f` |
| 12 | `theorem` | [partialProfile_gammaSeq](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/partialprofile-gammaseq--e3a2d404fd8a6d6e04b59c03.md) | 124 | `result-track:e3a2d404fd8a6d6e04b59c03a921750d1b6048bb79c5d91bf1678177007db9f7` |
| 13 | `theorem` | [partialProfile_tendsto_actual_gamma](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/partialprofile-tendsto-actual-gamma--cba82c079412c993e22f6934.md) | 140 | `result-track:cba82c079412c993e22f6934f18c9343051b804da5bdd08b3141bc97d743b265` |
| 14 | `theorem` | [hasSum_actual_gamma](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/hassum-actual-gamma--d6a6dcc9c94de829bd5076d0.md) | 161 | `result-track:d6a6dcc9c94de829bd5076d083897157814ef35ccc72e4fc7522050b783fdcf4` |
| 15 | `def` | [actualProfile](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile--57d00e3733bac5d96ab8b8f4.md) | 168 | `declaration-track:57d00e3733bac5d96ab8b8f45e664f516a5d07182dda219232399c3c865bebd5` |
| 16 | `theorem` | [actualProfile_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-zero--71cc310ff1d85226d6a0fbe6.md) | 171 | `result-track:71cc310ff1d85226d6a0fbe6c0a6968dddd57ac6c30ae2fb2b166e4302e629cc` |
| 17 | `theorem` | [term_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/term-summable--608f674b16c622f932a956bf.md) | 173 | `result-track:608f674b16c622f932a956bfb29a7c531a4c42bab27178446a59dad3c5e7c4d6` |
| 18 | `theorem` | [actualProfile_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-eq-tsum--c566c7e5b82f1e8aaf78a580.md) | 176 | `result-track:c566c7e5b82f1e8aaf78a58028899cd5a30a45680dbe43af0c75b556bb00dc05` |
| 19 | `theorem` | [actualProfile_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-nonneg--8fb0c6c157f2ec3674d701b7.md) | 179 | `result-track:8fb0c6c157f2ec3674d701b7ad597b1f0636899b5db68c7983d845c8a30ff0c5` |
| 20 | `theorem` | [actualProfile_prefix_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-prefix-tail--3a0dca7dcad6de6ff0a59f41.md) | 183 | `result-track:3a0dca7dcad6de6ff0a59f412c37eadca9ee832769080103184945b22bdfe180` |
| 21 | `theorem` | [actualProfile_sub_prefix_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-sub-prefix-nonneg--5721b6d918d87846b6c2cc94.md) | 188 | `result-track:5721b6d918d87846b6c2cc94ab605ac42d05f67e4e85246d1bf407646e28cb93` |
| 22 | `theorem` | [inverse_square_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/inverse-square-tail-le--e3de251db39dfa160f4111b7.md) | 194 | `result-track:e3de251db39dfa160f4111b7651f7bd2ec1f387622211af942076f84192f4507` |
| 23 | `theorem` | [inverse_square_tail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/inverse-square-tail-summable--7205b65dfaf0c3f8db567557.md) | 207 | `result-track:7205b65dfaf0c3f8db567557b386d0db87b1d77bcd483a92f3c49b270058db5c` |
| 24 | `theorem` | [actualProfile_positive_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-positive-tail--45900d761ce6c4fd97fd64f0.md) | 213 | `result-track:45900d761ce6c4fd97fd64f0237d1c2280f99fc303138de5f7b6f5d9c276bfb0` |
| 25 | `theorem` | [actualProfile_negative_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-negative-tail--01b536187aba8374d798e377.md) | 230 | `result-track:01b536187aba8374d798e377522a1477c9ef294818b4060647b4efbf6061b386` |
| 26 | `theorem` | [actualProfile_negative_compact_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-negative-compact-uniform--bddba5606b6280622ade5b9c.md) | 251 | `result-track:bddba5606b6280622ade5b9c3535a69255a3db8a275ed8c9e8e557306952db37` |
| 27 | `theorem` | [actualProfile_convex](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-convex--60225604f26a0f9fac527c47.md) | 264 | `result-track:60225604f26a0f9fac527c47505e0d0a8abfc98679c2c0116ea91d4ab90d0652` |
| 28 | `theorem` | [actualProfile_hasDerivAt_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-hasderivat-zero--fdd9dc91a3480e343bce9a5b.md) | 283 | `result-track:fdd9dc91a3480e343bce9a5b0e2ccdeeb1629bc49c987a5970c22c78234d59f1` |
| 29 | `theorem` | [actualProfile_deriv_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/declarations/actualprofile-deriv-zero--13ca5150b5ed094d517209aa.md) | 295 | `result-track:13ca5150b5ed094d517209aa7e381ef7bd0a179efb754d4bc9fd2ee2d5fec613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

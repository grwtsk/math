# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TwoVariable.Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.PoissonSummation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-term--33888ac2e7f710934109587f.md) | 41 | `declaration-track:33888ac2e7f710934109587f8a9d43a990c68d4cd2df775817be636b493471c8` |
| 2 | `def` | [jacobiTheta₂_term_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-term-fderiv--2fe4dc3680ed1a8e13820899.md) | 44 | `declaration-track:2fe4dc3680ed1a8e13820899d9491ded296cb0739e77aa0fc0fb980dd6c2ae1d` |
| 3 | `lemma` | [hasFDerivAt_jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/hasfderivat-jacobitheta-term--42a6fec720871e4f1fd8f89c.md) | 49 | `result-track:42a6fec720871e4f1fd8f89c7bbe290fcb084f5403e276fdbb410c750f6fd208` |
| 4 | `def` | [jacobiTheta₂'_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-term--13d299f2def0fd82ab17eda5.md) | 58 | `declaration-track:13d299f2def0fd82ab17eda5f3f51785e416fa9d5ea2b88f65a7a3d40af9e722` |
| 5 | `lemma` | [norm_jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/norm-jacobitheta-term--169a46a091ec4766d56036fc.md) | 71 | `result-track:169a46a091ec4766d56036fcfaf1e98b577626ca172ad1ac288a379635e2abc8` |
| 6 | `lemma` | [norm_jacobiTheta₂_term_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/norm-jacobitheta-term-le--006d8ca2b185d56ae3d6127f.md) | 79 | `result-track:006d8ca2b185d56ae3d6127f596092c3ad8a8e3aac254eef50ed639e5f35bfaf` |
| 7 | `lemma` | [norm_jacobiTheta₂'_term_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/norm-jacobitheta-term-le--e3619190c8059324203d4ca6.md) | 92 | `result-track:e3619190c8059324203d4ca6e076146d87a57fe8b24ce13ecad617a83ac344ad` |
| 8 | `lemma` | [summable_pow_mul_jacobiTheta₂_term_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/summable-pow-mul-jacobitheta-term-bound--19645e8ccd8219b84876aebd.md) | 103 | `result-track:19645e8ccd8219b84876aebd39d87b80121820e5011c1beba4864eefedbb3ab5` |
| 9 | `lemma` | [summable_jacobiTheta₂_term_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/summable-jacobitheta-term-iff--ed61396884faa4fe76772689.md) | 119 | `result-track:ed61396884faa4fe76772689d42b9f6e2cb62ebff96b6c050ae2434f5b273b74` |
| 10 | `lemma` | [norm_jacobiTheta₂_term_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/norm-jacobitheta-term-fderiv-le--3d6fa725a25d6d2895efb719.md) | 158 | `result-track:3d6fa725a25d6d2895efb719c80fd0ee00cce3cd4a0ad8bbcd663dd9cbb6f08c` |
| 11 | `lemma` | [norm_jacobiTheta₂_term_fderiv_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/norm-jacobitheta-term-fderiv-ge--ad828bb329be6773125e9fda.md) | 178 | `result-track:ad828bb329be6773125e9fda62585cae2056824695fdd3d9eb9a611ad5287fb0` |
| 12 | `lemma` | [summable_jacobiTheta₂_term_fderiv_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/summable-jacobitheta-term-fderiv-iff--091d6a2c01e308baa213210d.md) | 192 | `result-track:091d6a2c01e308baa213210d2b132f53e441aff44f2106d942e691cb2bd8b806` |
| 13 | `lemma` | [summable_jacobiTheta₂'_term_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/summable-jacobitheta-term-iff--def69d278a9d01322b7fac3e.md) | 218 | `result-track:def69d278a9d01322b7fac3e20cb1108204c58a624f0c3699578a08bb5b6d04a` |
| 14 | `def` | [jacobiTheta₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta--83232eaba523585eef4fbb06.md) | 251 | `declaration-track:83232eaba523585eef4fbb066bc99b8f567a0aafb73e294650a49c5d14798900` |
| 15 | `def` | [jacobiTheta₂_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-fderiv--4a4212532014404eec0ae7dc.md) | 254 | `declaration-track:4a4212532014404eec0ae7dc2078ecb551c8d7b5021a27831fa8b420aed2cf9c` |
| 16 | `def` | [jacobiTheta₂'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta--2c07bae4b6b746d67d62ea6e.md) | 259 | `declaration-track:2c07bae4b6b746d67d62ea6ee617730ef1fd00caf206bba675701bfbb721ccf2` |
| 17 | `lemma` | [hasSum_jacobiTheta₂_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/hassum-jacobitheta-term--f5f3174c5a68f45989b34221.md) | 261 | `result-track:f5f3174c5a68f45989b34221e1d9efe51b68b0f9a28f19a9c809f0e882e170fa` |
| 18 | `lemma` | [hasSum_jacobiTheta₂_term_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/hassum-jacobitheta-term-fderiv--af183a757aad5220e3e6e776.md) | 265 | `result-track:af183a757aad5220e3e6e7761dcdf71bf5e02afd7bc7213c93922bae19a534bc` |
| 19 | `lemma` | [hasSum_jacobiTheta₂'_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/hassum-jacobitheta-term--88ace6c42e1409e34118ef1f.md) | 269 | `result-track:88ace6c42e1409e34118ef1f0b8afb9a463b5b990cf0c9a2c563a7cbbbba118e` |
| 20 | `lemma` | [jacobiTheta₂_undef](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-undef--793f9dc5b2095dbe0b7ed467.md) | 273 | `result-track:793f9dc5b2095dbe0b7ed46786a30eafc7b69c0a8613fd776c41ac0a4ec7373d` |
| 21 | `lemma` | [jacobiTheta₂_fderiv_undef](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-fderiv-undef--ee4576cfe60dd7f8f19be9b9.md) | 278 | `result-track:ee4576cfe60dd7f8f19be9b9e4075b589fc748be43ec8d47dd0e729ee298008e` |
| 22 | `lemma` | [jacobiTheta₂'_undef](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-undef--63a77a790a2b3f751dab7c40.md) | 283 | `result-track:63a77a790a2b3f751dab7c404cbfdd47680be8ff27f7e18639f90c262e31641b` |
| 23 | `lemma` | [hasFDerivAt_jacobiTheta₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/hasfderivat-jacobitheta--6bec668881defdb127b8c23c.md) | 292 | `result-track:6bec668881defdb127b8c23c9337eea6ad7f5ff71b5dc0ec460f7f2fcffc9210` |
| 24 | `lemma` | [continuousAt_jacobiTheta₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/continuousat-jacobitheta--3ba5153c800952dc4231772a.md) | 322 | `result-track:3ba5153c800952dc4231772afe4ccbf216a705491f5f1317c6c09dfb92896c5e` |
| 25 | `lemma` | [differentiableAt_jacobiTheta₂_fst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/differentiableat-jacobitheta-fst--2a86af37b00aaae1b2572651.md) | 327 | `result-track:2a86af37b00aaae1b2572651e36040b2924d31113076122145bf5d1b4153abad` |
| 26 | `lemma` | [differentiableAt_jacobiTheta₂_snd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/differentiableat-jacobitheta-snd--1fba58bd41d7f98fa9ec7d77.md) | 332 | `result-track:1fba58bd41d7f98fa9ec7d7722b06ceace50b85fce179aba4d40aa73e8964501` |
| 27 | `lemma` | [hasDerivAt_jacobiTheta₂_fst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/hasderivat-jacobitheta-fst--9bb0000f54c0a01f12b21faf.md) | 336 | `result-track:9bb0000f54c0a01f12b21faf73d3b20830944854bd0e96d85cc9d151263218a8` |
| 28 | `lemma` | [continuousAt_jacobiTheta₂'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/continuousat-jacobitheta--6c8a3e73877b0a8a016e9e94.md) | 361 | `result-track:6c8a3e73877b0a8a016e9e941d428be2177aebd87242a806de65ec2d28eff6a0` |
| 29 | `lemma` | [jacobiTheta₂_add_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-add-right--93b3e529d9d49d4be99b6722.md) | 383 | `result-track:93b3e529d9d49d4be99b672206bb6f5ca31222eee5b3eac8f38a33103a9e8dcd` |
| 30 | `lemma` | [jacobiTheta₂_add_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-add-left--8b951402eeda027761e46025.md) | 391 | `result-track:8b951402eeda027761e46025ab442966f5c8d3934784e3ac93a5e8826ad9d59a` |
| 31 | `lemma` | [jacobiTheta₂_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-add-left--73236ea0230a78b0a9565dd3.md) | 397 | `result-track:73236ea0230a78b0a9565dd37eef4bff3e5efc7391e788a4a7c4c59f2e1f680e` |
| 32 | `lemma` | [jacobiTheta₂_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-neg-left--8b0cbb0b825c1a05b84cff5e.md) | 406 | `result-track:8b0cbb0b825c1a05b84cff5e4046f8b4fb4b11c170116d048b73a11224b87495` |
| 33 | `lemma` | [jacobiTheta₂_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-conj--034783941ea3bb1b94c2c68c.md) | 411 | `result-track:034783941ea3bb1b94c2c68c6deeee9b1d1c168a4cf2bb4981b93d1976fa074e` |
| 34 | `lemma` | [jacobiTheta₂'_add_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-add-right--25224ef8ff0b2ea53dbdea60.md) | 418 | `result-track:25224ef8ff0b2ea53dbdea60f430406346b8e31e401ddee9d7347872752a9ab9` |
| 35 | `lemma` | [jacobiTheta₂'_add_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-add-left--2aff94593a760cd7479ad98c.md) | 425 | `result-track:2aff94593a760cd7479ad98c1ec8b5df60a68f89b8e4b38142a25afa7aaf4cf5` |
| 36 | `lemma` | [jacobiTheta₂'_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-add-left--2ed95ed1f4c0deef32d98c06.md) | 431 | `result-track:2ed95ed1f4c0deef32d98c0649997115adb342e0da6eac995334a679b1557f5f` |
| 37 | `lemma` | [jacobiTheta₂'_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-neg-left--3c245c7d0944597f48ebd871.md) | 449 | `result-track:3c245c7d0944597f48ebd871788ff01714c0b4f49fd987845b4432df50aa6197` |
| 38 | `lemma` | [jacobiTheta₂'_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-conj--77ea8e02d0ab5e9f4645dac1.md) | 457 | `result-track:77ea8e02d0ab5e9f4645dac13de54d5c815623da7555f9ef928761d8147185b7` |
| 39 | `theorem` | [jacobiTheta₂_functional_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-functional-equation--d74a50439c48325c7e4b4b29.md) | 472 | `result-track:d74a50439c48325c7e4b4b293bc845787e5cb0127be96a3a53e6a313e352cf82` |
| 40 | `theorem` | [jacobiTheta₂'_functional_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/declarations/jacobitheta-functional-equation--8c792fa210ba1aefd093219b.md) | 503 | `result-track:8c792fa210ba1aefd093219b7f6f3ca1be1899a5f2b4c10a10074c6993c7e886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

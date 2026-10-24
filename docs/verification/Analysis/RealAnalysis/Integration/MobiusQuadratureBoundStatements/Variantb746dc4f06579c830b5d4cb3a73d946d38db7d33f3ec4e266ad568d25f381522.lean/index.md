# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBoundStatements.Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdfa939337d512202f8068158380bdb5828fdb93",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdfa939337d512202f8068158380bdb5828fdb93`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logsquarequadrature--c278f0aeeffc7b996c138a28.md) | 27 | `declaration-track:c278f0aeeffc7b996c138a2870de7362c1f61b0cc1989de056e6c3f15ad402b1` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logsquare-monotoneon--a2cf326d37f7eb15cfc69bec.md) | 31 | `result-track:a2cf326d37f7eb15cfc69beccf8bfc2e42d1ad98bc94b939e43a60aa4e15a27a` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logsquare-intervalintegrable--8bd7c4bf28f916f0f2f054bc.md) | 36 | `result-track:8bd7c4bf28f916f0f2f054bc2335ee40d49fc692ea993414a562ba5139535a15` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logsquare-integer-bounds--321e02b34780ac736e2f040c.md) | 43 | `result-track:321e02b34780ac736e2f040c2ee55a960520ad579c64d8418c21aab14652cb87` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logsquarequadrature-abs-le--12cfd3931a7337d1cad625d6.md) | 76 | `result-track:12cfd3931a7337d1cad625d689f1bc5a2bb89b44fedfadd6ea11d2c6506f1852` |
| 6 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratiosquare--a4989f011e5ff0bcf89948b1.md) | 115 | `declaration-track:a4989f011e5ff0bcf89948b16622490e17649a65138d2685413e31a23f2e85fe` |
| 7 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratioprimitive--874ed281431349f2d5ed5913.md) | 118 | `declaration-track:874ed281431349f2d5ed5913e80b65233a859fd01ace293535b2c4a8f8248e88` |
| 8 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratiosquare-nonneg--08b644c974ef36cc0ff19527.md) | 121 | `result-track:08b644c974ef36cc0ff195272ba1ea89c9829a35401e9e22ed0be09c63493493` |
| 9 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratiosquare-le-rpow--d8e507c0f4093a9b56d0b23e.md) | 124 | `result-track:d8e507c0f4093a9b56d0b23eb35662b99aec411f987fbf1890757e7394324a8f` |
| 10 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratiosquare-integrableon--7d0a5b252d8e2166a52d9fb3.md) | 142 | `result-track:7d0a5b252d8e2166a52d9fb32fc62cfa1adf782eb1bf115c0a89ada30b30b75a` |
| 11 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratiosquare-intervalintegrable--ebd2444b1c7c9e5af98c8f45.md) | 155 | `result-track:ebd2444b1c7c9e5af98c8f45bbe3d82a82b846dcef164449b16febc998694c78` |
| 12 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratioprimitive-hasderivat--be4b4424f7197102daee1b14.md) | 159 | `result-track:be4b4424f7197102daee1b1434764133ec8d9a8fba5f26bbf045ec4162358ca4` |
| 13 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/tendsto-self-log-square--ec8e7900d7fc981b7386856f.md) | 168 | `result-track:ec8e7900d7fc981b7386856febda66c9be2e5c1663870d5aec50bc2eaaa60c78` |
| 14 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratioprimitive-tendsto-zero--f34fe297e1f959ff9693a0db.md) | 183 | `result-track:f34fe297e1f959ff9693a0dbff604a5fbff6654b722b2184fd0fcd937f21d49e` |
| 15 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/integral-logratiosquare--023a98b21f58f9e47fc3e573.md) | 199 | `result-track:023a98b21f58f9e47fc3e573b0ea8e1dc29fbb280d637b8b3383fea1dee3f227` |
| 16 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/logratiosquare-antitone--1af84e62308195fd318bf9e3.md) | 215 | `result-track:1af84e62308195fd318bf9e344e5a963e60d751d0441015f45b9a9af17b9d466` |
| 17 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/sum-logratiosquare-le-integral--e495ead8de68e4e2655f5b0d.md) | 224 | `result-track:e495ead8de68e4e2655f5b0d10f147eb17396109095c29694638692bd2910df8` |
| 18 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/sum-logratiosquare-le--4096bdabdd417ae7b3adccf3.md) | 262 | `result-track:4096bdabdd417ae7b3adccf388a996ad8180b29b30b30eddd5a18656386f09ea` |
| 19 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/mobiusquadratureerror--50e7bc8c853ed0138796d4f7.md) | 269 | `declaration-track:50e7bc8c853ed0138796d4f731edada8f6317b52c8219a92c9b557f21e1c338a` |
| 20 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/quotient-ge-one--758ce6d373890a289d874827.md) | 274 | `result-track:758ce6d373890a289d874827bd5cf86688396b9dd4b3fca1dc8854ef5c4d7678` |
| 21 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/mobiusquadratureerror-abs-le--09231eabc51275b8fc561fb4.md) | 283 | `result-track:09231eabc51275b8fc561fb42448f6c4b43f6378ec06fb42f4d5bc8e4ccd71da` |
| 22 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/mobius-prefix-eq-integral-add-error--8c75358d138c438c5bba52bf.md) | 303 | `result-track:8c75358d138c438c5bba52bf8dbe654d6785a8dc8f4cdbf9c1ac10b898d00ac8` |
| 23 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/mobius-prefix-integral-abs-le--3f8ff216fedac33efeada194.md) | 315 | `result-track:3f8ff216fedac33efeada194823c3a7e371a85dfe0cc60aecef583a7b231d888` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--9f473646c86a213f6aeacce0.md) | 331 | `declaration-track:9f473646c86a213f6aeacce0b28e746d3cbfb40834120a75df7722618d34b3b9` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--c2ddf865ec9d7850f63cd205.md) | 333 | `declaration-track:c2ddf865ec9d7850f63cd205cf68b9fe775f4d7bb58bcc591803a19824733884` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--84f5044ca81f06ab54bf17dc.md) | 335 | `declaration-track:84f5044ca81f06ab54bf17dc60e13ace385b5fa8ea5e6c1a54274bbc0bf1d242` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--6001c51ed7771cb4d1d82581.md) | 338 | `declaration-track:6001c51ed7771cb4d1d825816bb327691ff64b8df51415b3c209a7b8269ae788` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--3acaaa90a0529050acf19bf2.md) | 342 | `declaration-track:3acaaa90a0529050acf19bf28541c7ccbfb24d36699a2c78e4c09d6a30808164` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--d00452f0da4c9015e0c96efc.md) | 346 | `declaration-track:d00452f0da4c9015e0c96efc4367344fe036f5fe8e25d47022b0a0252008edaa` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--1943bde09de56574462e2691.md) | 350 | `declaration-track:1943bde09de56574462e269126e5d263c98a2a5fbb791c6a71d6cbe77b8e587b` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--4dc4e17c450bf8c6d28d7fd1.md) | 354 | `declaration-track:4dc4e17c450bf8c6d28d7fd101f20a6142a93fff2df2a0106a84f84b390c5bb2` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--c0a9f3adea9fb16afe22b4fa.md) | 358 | `declaration-track:c0a9f3adea9fb16afe22b4fa43f5e5242c9d2b8ff4682e45662fee89bae3b8f8` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--e2dc346d3dc1832d776facf7.md) | 362 | `declaration-track:e2dc346d3dc1832d776facf7dede4618a5e4a3c3ca59c6e9bad707378d5a4e2b` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--bec3ccb933656ef6c55bedcd.md) | 366 | `declaration-track:bec3ccb933656ef6c55bedcd72e95e5301d6d414b9c87bdc149ee3bf3181e667` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--967a1c565df858077a6498bf.md) | 371 | `declaration-track:967a1c565df858077a6498bfaa5cae171001845a4c530bdeb34d16eb31279dad` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--0f1e0a7c6e76e5375b479d9f.md) | 375 | `declaration-track:0f1e0a7c6e76e5375b479d9f3366d3e2dc5f63d7cf6d2990e42727f4bcac65fb` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--e2386eb8269ea5578942d83a.md) | 377 | `declaration-track:e2386eb8269ea5578942d83af255056a5e08e925b00b39e4a796c9a17d927ec3` |
| 38 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--025b25982af35843ed49352b.md) | 381 | `declaration-track:025b25982af35843ed49352bf9d7cddf783f91f4b530b8b913027e765b00731d` |
| 39 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--da30b29bcde3b656a21d76ca.md) | 385 | `declaration-track:da30b29bcde3b656a21d76ca95b914e51a56766031abb681010b3f4957ece6c9` |
| 40 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/declarations/example--4df11a9fa329b10fa20d59f4.md) | 392 | `declaration-track:4df11a9fa329b10fa20d59f4a6de8bee7e6c71228569151372d6a82238530dec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

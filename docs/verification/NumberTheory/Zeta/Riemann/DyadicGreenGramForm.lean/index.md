# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenGramForm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75184ac4aa23c2193401bc0d3d8349df3706b07",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75184ac4aa23c2193401bc0d3d8349df3706b07`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenSourceFrame`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenPrimeFrameSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenprimeframesum--4a6f090b4a9452c1346b0837.md) | 42 | `declaration-track:4a6f090b4a9452c1346b0837d262f4a6882ad2bbefb09275f421a751041d6cf7` |
| 2 | `theorem` | [greenSourceFrameValue_eq_primeSum_sub_background](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greensourceframevalue-eq-primesum-sub-background--b61d0cd6a0070067cdabc61a.md) | 45 | `result-track:b61d0cd6a0070067cdabc61a7c444735861e27b2bf193bf0df93bdb42a491659` |
| 3 | `theorem` | [centeredLogarithmAtom_continuousOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/centeredlogarithmatom-continuouson--afefa857cc3c87e486a33ada.md) | 51 | `result-track:afefa857cc3c87e486a33ada6a9e9c48d7071d9e14b9ef51ba652e46d8114f69` |
| 4 | `theorem` | [centeredLogarithmAtom_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/centeredlogarithmatom-integrable--fa5a5fd623d6c4362cb3fca3.md) | 56 | `result-track:fa5a5fd623d6c4362cb3fca3ff08ffe63af871be36e8cb7d4e7defc7a63423da` |
| 5 | `theorem` | [centeredLogarithmAtom_sq_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/centeredlogarithmatom-sq-integrable--418dd490772658f4dfcffebd.md) | 60 | `result-track:418dd490772658f4dfcffebd6296e79cf3e3e9fb9d7f3865f462557b3735bdc3` |
| 6 | `theorem` | [feature_mul_centeredLogarithmAtom_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/feature-mul-centeredlogarithmatom-integrable--6431a53a2612d05ce67299c3.md) | 64 | `result-track:6431a53a2612d05ce67299c3cfad5d115efa49ec66d89aa5528c9745cb744abb` |
| 7 | `theorem` | [greenPrimeFrameSum_sq_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenprimeframesum-sq-integrable--40b609aeb424bc2b84113432.md) | 91 | `result-track:40b609aeb424bc2b84113432d0a45d32357c31f2122c82464097a50982972799` |
| 8 | `theorem` | [greenPrimeFrameSum_mul_background_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenprimeframesum-mul-background-integrable--809d86d6f2ee3757166808dc.md) | 115 | `result-track:809d86d6f2ee3757166808dc516587ef3492a5d69ae76ac7dff6392ba1e1044d` |
| 9 | `def` | [greenPrimeGram](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenprimegram--760d80eea8cd47ac5b7b6bfc.md) | 136 | `declaration-track:760d80eea8cd47ac5b7b6bfc7bbb8202e8e8e17d95a746854af808b66ac266a2` |
| 10 | `def` | [greenPrimeBackgroundCross](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenprimebackgroundcross--d2362bbe865cae083761d27e.md) | 142 | `declaration-track:d2362bbe865cae083761d27e6cc1fa19502889232901eb4ada6c61af311ae297` |
| 11 | `def` | [greenBackgroundEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenbackgroundenergy--621cabf7db7f9584f7f3f2de.md) | 150 | `declaration-track:621cabf7db7f9584f7f3f2def248f2755730947981a3eecf349aea1cd0f10d97` |
| 12 | `def` | [finiteGreenFrameQuadratic](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/finitegreenframequadratic--4842bf24f25c6672c45faa7f.md) | 154 | `declaration-track:4842bf24f25c6672c45faa7f3d94c1437f9cdd28540efe6b951e69e0af70385b` |
| 13 | `theorem` | [greenPrimeFrameSum_sq_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenprimeframesum-sq-integral--59bd9b51736059c2b7a75794.md) | 159 | `result-track:59bd9b51736059c2b7a7579446f665a1cf856d0b3502bc7c430a2a632e72d06a` |
| 14 | `theorem` | [greenPrimeFrameSum_mul_background_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenprimeframesum-mul-background-integral--3fea852cf0582b48e4fa4da4.md) | 168 | `result-track:3fea852cf0582b48e4fa4da47ff4152371fb669776429276c0155e8e1966e997` |
| 15 | `theorem` | [greenEnergy_eq_finiteGreenFrameQuadratic](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/greenenergy-eq-finitegreenframequadratic--fc56026fa64187fd369997d7.md) | 195 | `result-track:fc56026fa64187fd369997d78242e10dd16e5453184d56005d6f9e616d531da2` |
| 16 | `theorem` | [finiteGreenFrameQuadratic_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/finitegreenframequadratic-nonnegative--0521f40bc8b28b1adb4cbbaf.md) | 219 | `result-track:0521f40bc8b28b1adb4cbbaf260541718680470b626d108326f89cee6b8284f5` |
| 17 | `def` | [fullFiniteGreenSourceQuadratic](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/fullfinitegreensourcequadratic--4cdbed8e32209127522e0091.md) | 226 | `declaration-track:4cdbed8e32209127522e0091797615cbf2badb5b9a0e677e8f65c17d0d6d8e33` |
| 18 | `theorem` | [fullFiniteGreenSourceQuadratic_eq_augmentedEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/fullfinitegreensourcequadratic-eq-augmentedenergy--9a91e726ba3516b6c3a30d5b.md) | 229 | `result-track:9a91e726ba3516b6c3a30d5beeeff17d37de82d0d0699ad7e86dcb310af45e0e` |
| 19 | `theorem` | [fullFiniteGreenSourceQuadratic_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/fullfinitegreensourcequadratic-nonnegative--d941d556e141ae2bb820059a.md) | 235 | `result-track:d941d556e141ae2bb820059a7e5538c175a21f44b5c452b2e30b732578f4c22c` |
| 20 | `def` | [fullFiniteGreenSourceCoordinateCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/fullfinitegreensourcecoordinatecount--5851de6f44a1df3d64d441b9.md) | 242 | `declaration-track:5851de6f44a1df3d64d441b94293cbd46f6bfbab3f0c9c0608a387010678ea56` |
| 21 | `theorem` | [fullFiniteGreenSourceCoordinateCount_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/declarations/fullfinitegreensourcecoordinatecount-eq--052f146b22303b9258e9f909.md) | 245 | `result-track:052f146b22303b9258e9f90915949f4ad13d34fa61ef7b9660931e0d3e89e255` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.AddCircleMulti.Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f26bb6b01b442b4af05c5cd67d3de86eff514f00",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f26bb6b01b442b4af05c5cd67d3de86eff514f00`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.AddCircle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/instance--02152ff51c689fd71aba892c.md) | 36 | `declaration-track:02152ff51c689fd71aba892c2d1962581d80b354b7ff26ed14a0e0c6ee5f319f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/instance--fcec24f875ec6e3dda2359a6.md) | 39 | `declaration-track:fcec24f875ec6e3dda2359a6e924999e392565022951eedb8620dba00d8aa24f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/instance--5b72c4a2593647a225bc852d.md) | 43 | `declaration-track:5b72c4a2593647a225bc852d04d6aaa58a97ba6603fc085976e4e7188285a7e3` |
| 4 | `abbrev` | [UnitAddTorus](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/unitaddtorus--31b3ff0cf30facbc7b67e8f5.md) | 47 | `declaration-track:31b3ff0cf30facbc7b67e8f5907a6c12bb19470ec555b1dd8095fe472a9ebc2f` |
| 5 | `def` | [mFourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourier--76b4e6651b85ab2539578b4e.md) | 58 | `declaration-track:76b4e6651b85ab2539578b4efc9e0c482d86e041cd8f241fd0c56001c730c98d` |
| 6 | `lemma` | [mFourier_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourier-neg--f68a86d77cf15c8dfa5a9132.md) | 65 | `result-track:f68a86d77cf15c8dfa5a91324b9915769113fa30791012b1a1766b9e1b79be9d` |
| 7 | `lemma` | [mFourier_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourier-add--1484f27b3e6959d0df478a5c.md) | 68 | `result-track:1484f27b3e6959d0df478a5cc7a297479ea47324a2857db6dbe531158919ec6a` |
| 8 | `lemma` | [mFourier_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourier-zero--bcc24e1fe2433d9a6fdb9f0e.md) | 71 | `result-track:bcc24e1fe2433d9a6fdb9f0e0f78c49bb52cbdb32eadb460c33afd4d2d023655` |
| 9 | `lemma` | [mFourier_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourier-norm--a6849eeef9a02d90b6a6a38a.md) | 76 | `result-track:a6849eeef9a02d90b6a6a38a8984278ce1f1eb0eec4b30abf1585d8d571ab452` |
| 10 | `lemma` | [mFourier_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourier-single--224c274af080012efbef2763.md) | 85 | `result-track:224c274af080012efbef2763a0181f2006fa1e6b49014e0f18ccf8f07bdc2db9` |
| 11 | `def` | [mFourierSubalgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfouriersubalgebra--9dcf4daa87420afd104af3f5.md) | 99 | `declaration-track:9dcf4daa87420afd104af3f5dbb8af9f9150f048a3f4acc4238d258eafd11709` |
| 12 | `theorem` | [mFourierSubalgebra_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfouriersubalgebra-coe--4db77854240380070bb8add0.md) | 111 | `result-track:4db77854240380070bb8add0b02b575eb70da7a78af58995a9fff4f04c34c673` |
| 13 | `theorem` | [mFourierSubalgebra_separatesPoints](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfouriersubalgebra-separatespoints--68e2dcdbb3a3361e93232943.md) | 126 | `result-track:68e2dcdbb3a3361e93232943bbf06d86118386d04c49ed2561e9f34c8a4e5ef7` |
| 14 | `theorem` | [mFourierSubalgebra_closure_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfouriersubalgebra-closure-eq-top--3b117ea4dc58c9cee1162c22.md) | 138 | `result-track:3b117ea4dc58c9cee1162c22a05c692b3eb35d482e4491f25107d6bb5d046a21` |
| 15 | `theorem` | [span_mFourier_closure_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/span-mfourier-closure-eq-top--2fbab55f8aa9a9f55174e36e.md) | 143 | `result-track:2fbab55f8aa9a9f55174e36e464a33c8f3e501d508d75c97da3edd28fc4b8850` |
| 16 | `abbrev` | [mFourierLp](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourierlp--87b123b8ddb875e18f488ff8.md) | 155 | `declaration-track:87b123b8ddb875e18f488ff803b4e749a79c712c1c2ed4bc1e969049e7683724` |
| 17 | `theorem` | [coeFn_mFourierLp](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/coefn-mfourierlp--1a862237d85919a6b1bda846.md) | 159 | `result-track:1a862237d85919a6b1bda84640d6e146d93a34b41f67c0322b5fad965f237d1d` |
| 18 | `theorem` | [span_mFourierLp_closure_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/span-mfourierlp-closure-eq-top--2ba05ab7df1967e18e1dfca0.md) | 165 | `result-track:2ba05ab7df1967e18e1dfca0d1e58827b6e6e9ffc5078fed8873e169d0c76092` |
| 19 | `theorem` | [orthonormal_mFourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/orthonormal-mfourier--a6bbd88752227b12bc9339bc.md) | 172 | `result-track:a6bbd88752227b12bc9339bc0e04d5e54644d7f27b946da5ac4ea7d04bede0db` |
| 20 | `def` | [mFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfouriercoeff--411ef783cb1796558ec0f4dd.md) | 193 | `declaration-track:411ef783cb1796558ec0f4dd8316ad348d3b65dd85ac2f894caa120e439e258f` |
| 21 | `def` | [mFourierBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourierbasis--f1d01cc48206ee22baa2b078.md) | 204 | `declaration-track:f1d01cc48206ee22baa2b0788c10b1efaf6b1c5ec59ac895773411fa7f2c32d9` |
| 22 | `theorem` | [coe_mFourierBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/coe-mfourierbasis--811d2e3ec02d36928763df75.md) | 210 | `result-track:811d2e3ec02d36928763df750333138ab1b23bf41ada47df3a72b244422de0c3` |
| 23 | `theorem` | [mFourierBasis_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfourierbasis-repr--5f3cf038c96bdaa77e04cbaa.md) | 214 | `result-track:5f3cf038c96bdaa77e04cbaa2f6453e19629225757067a0ceceea0e7cd134c87` |
| 24 | `theorem` | [hasSum_mFourier_series_L2](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/hassum-mfourier-series-l2--5a8a0b8ded9803326353c049.md) | 224 | `result-track:5a8a0b8ded9803326353c049fce5608f17a7c34543b963a0fdc2816a2e5e089b` |
| 25 | `theorem` | [hasSum_prod_mFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/hassum-prod-mfouriercoeff--bb987d046d61405ade358b45.md) | 230 | `result-track:bb987d046d61405ade358b45b07121bda9d8f938e90a776a8933637545e74107` |
| 26 | `theorem` | [hasSum_sq_mFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/hassum-sq-mfouriercoeff--33b8913427878a0881a7ec8f.md) | 239 | `result-track:33b8913427878a0881a7ec8f3d93c8360ac7888bdfc92ce9f4acd6859aca6e22` |
| 27 | `theorem` | [mFourierCoeff_toLp](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/mfouriercoeff-tolp--b2b85dd0f5c5554a0257fafe.md) | 250 | `result-track:b2b85dd0f5c5554a0257fafe8589d1aa939250a26e263e114b8d12e5b347b7e9` |
| 28 | `theorem` | [hasSum_mFourier_series_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/hassum-mfourier-series-of-summable--ecdf4e176ee897f205bd5a09.md) | 258 | `result-track:ecdf4e176ee897f205bd5a096e43eacd9fbe78a4fc0a422efe6a2ef9752872aa` |
| 29 | `theorem` | [hasSum_mFourier_series_apply_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/declarations/hassum-mfourier-series-apply-of-summable--1ccff570309e2f06f75b6960.md) | 267 | `result-track:1ccff570309e2f06f75b6960166a1e4e90d6f55db4ae2edb91360c3d63568558` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

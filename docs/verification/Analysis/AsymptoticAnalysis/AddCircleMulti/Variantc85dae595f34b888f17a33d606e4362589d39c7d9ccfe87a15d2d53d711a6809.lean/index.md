# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.AddCircleMulti.Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06cdaf65acf696340d7f8c72eee642210e0f54db",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06cdaf65acf696340d7f8c72eee642210e0f54db`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/instance--8cb46aa61643fb45de8bb092.md) | 28 | `declaration-track:8cb46aa61643fb45de8bb092f848575737886c08634fd913d59e1fa244d781df` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/instance--378229c8128befd5544195d1.md) | 31 | `declaration-track:378229c8128befd5544195d189d5e3b02a2435adf0316dee29728c6eb43135de` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/instance--52671c7c8fab4ca06a6850cf.md) | 35 | `declaration-track:52671c7c8fab4ca06a6850cfbb692653034306bd52b72fd6fba9935f429fdc5b` |
| 4 | `abbrev` | [UnitAddTorus](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/unitaddtorus--269a4ecbf6c16a2d3470c29e.md) | 39 | `declaration-track:269a4ecbf6c16a2d3470c29efa4a0e96de236d1fce467936e1161f6886d3bb23` |
| 5 | `def` | [mFourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourier--25c3b24dc1e86b1a284ffbf7.md) | 50 | `declaration-track:25c3b24dc1e86b1a284ffbf776a1e101e38f5607c85f682940a97e83f7c6583a` |
| 6 | `lemma` | [mFourier_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourier-neg--9bd15948e437a3b67ad1df46.md) | 57 | `result-track:9bd15948e437a3b67ad1df46b75db3d7be50d3c4251304b0240dce6ad56ed6e6` |
| 7 | `lemma` | [mFourier_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourier-add--88e897bdf2a117593ed73e0a.md) | 60 | `result-track:88e897bdf2a117593ed73e0aa3151d97e362b656757a5e1a7d30c4c9c9dc9ecd` |
| 8 | `lemma` | [mFourier_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourier-zero--9e1a30a9fff9b39fa4b460a4.md) | 63 | `result-track:9e1a30a9fff9b39fa4b460a453694524f4e80cb4841881dc23f6ede3042239a0` |
| 9 | `lemma` | [mFourier_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourier-norm--84a12235a7aab5168d2e3792.md) | 68 | `result-track:84a12235a7aab5168d2e3792089527eada7faec20f0dcdb93e664048feafbb6b` |
| 10 | `lemma` | [mFourier_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourier-single--fcfdd4bcd4128d007e6646a6.md) | 77 | `result-track:fcfdd4bcd4128d007e6646a654c7b84aebc9fc49a1cb7a5eec5d99998f5b4845` |
| 11 | `def` | [mFourierSubalgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfouriersubalgebra--7de951cd44666ea92ecbc06c.md) | 91 | `declaration-track:7de951cd44666ea92ecbc06c54f16a91c9a30611db36d1e14261ea608588844a` |
| 12 | `theorem` | [mFourierSubalgebra_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfouriersubalgebra-coe--202daf78c72be31a261f85dd.md) | 103 | `result-track:202daf78c72be31a261f85dd5d4edaebefa397c066f90cfc9f66cc9486531327` |
| 13 | `theorem` | [mFourierSubalgebra_separatesPoints](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfouriersubalgebra-separatespoints--ae2f89a1ba63ae43a6427890.md) | 118 | `result-track:ae2f89a1ba63ae43a6427890d6b0f8e7be62159db769471acb4e3bb8334628cb` |
| 14 | `theorem` | [mFourierSubalgebra_closure_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfouriersubalgebra-closure-eq-top--262fa067032664c10591cbb6.md) | 130 | `result-track:262fa067032664c10591cbb6d2fe39a75922bc1d5867530a2acf7bafe35ea0b8` |
| 15 | `theorem` | [span_mFourier_closure_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/span-mfourier-closure-eq-top--5658aa75c5e76c64dbb85c5e.md) | 135 | `result-track:5658aa75c5e76c64dbb85c5e08520a7f8f6873dde31a6da9800bbab6d53ad2a2` |
| 16 | `abbrev` | [mFourierLp](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourierlp--12874f3fe346e1d8d80eb95a.md) | 147 | `declaration-track:12874f3fe346e1d8d80eb95abf33720f4f5198ccc2eab8b47c2458ba3452efca` |
| 17 | `theorem` | [coeFn_mFourierLp](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/coefn-mfourierlp--43e5dc331b15cd678ce95ad4.md) | 151 | `result-track:43e5dc331b15cd678ce95ad4214f43e2a7ca65c7b695da9041567d8c26041b13` |
| 18 | `theorem` | [span_mFourierLp_closure_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/span-mfourierlp-closure-eq-top--fb39220eecfd813add65f9f1.md) | 157 | `result-track:fb39220eecfd813add65f9f1251496ac3ed05edd6a6fb15535aec952b8cdde1b` |
| 19 | `theorem` | [orthonormal_mFourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/orthonormal-mfourier--22a5cb21a3aee5a20dbbbece.md) | 164 | `result-track:22a5cb21a3aee5a20dbbbece704be955941e67bd2581207105282e68f140ed1d` |
| 20 | `def` | [mFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfouriercoeff--9a9d49aa1dbd9503207f98d8.md) | 185 | `declaration-track:9a9d49aa1dbd9503207f98d800244e71698b6b181cd2b499f65e2466685ca6c7` |
| 21 | `def` | [mFourierBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourierbasis--e120f5216f8e44610ec724f5.md) | 196 | `declaration-track:e120f5216f8e44610ec724f5a84c7b96c4a7afbb54c488a605eae70a78034c8f` |
| 22 | `theorem` | [coe_mFourierBasis](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/coe-mfourierbasis--c22d120fecf56357d86cb399.md) | 202 | `result-track:c22d120fecf56357d86cb39937c5e5e6715cf64c5f28b17a5b151d9c358592ae` |
| 23 | `theorem` | [mFourierBasis_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfourierbasis-repr--027b0fd6df597613418dc0f4.md) | 206 | `result-track:027b0fd6df597613418dc0f46229cbc59b6b9d7e68905e42166ae8392c46a327` |
| 24 | `theorem` | [hasSum_mFourier_series_L2](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/hassum-mfourier-series-l2--427a4c76a77c326e7798d6fe.md) | 216 | `result-track:427a4c76a77c326e7798d6fe3e0c7868f45964ca8ed25fa8a82f51a29db73de5` |
| 25 | `theorem` | [hasSum_prod_mFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/hassum-prod-mfouriercoeff--e65cb4e104d45ff6c9f0ec45.md) | 222 | `result-track:e65cb4e104d45ff6c9f0ec45b0784af1d825b89382edb142c69fc5d11b2250ba` |
| 26 | `theorem` | [hasSum_sq_mFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/hassum-sq-mfouriercoeff--dc64ce87ef52398b2d3bd717.md) | 231 | `result-track:dc64ce87ef52398b2d3bd717c3562a10b2e9208b897b252ddba4fe38c6ede9fa` |
| 27 | `theorem` | [mFourierCoeff_toLp](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/mfouriercoeff-tolp--9a6f574162e96d882e120db7.md) | 242 | `result-track:9a6f574162e96d882e120db7e5c7970a6a198ae35110e871d16c9ba3776cc28d` |
| 28 | `theorem` | [hasSum_mFourier_series_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/hassum-mfourier-series-of-summable--5b14acf5b629c0f20b4b429f.md) | 250 | `result-track:5b14acf5b629c0f20b4b429faa99ae26c8e016c9fdafa64438111095b06aca32` |
| 29 | `theorem` | [hasSum_mFourier_series_apply_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/declarations/hassum-mfourier-series-apply-of-summable--21b85dcd162dd68d3c8f77d0.md) | 259 | `result-track:21b85dcd162dd68d3c8f77d04be7c8c4c9424647fcdfe282f91d67602d07d416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

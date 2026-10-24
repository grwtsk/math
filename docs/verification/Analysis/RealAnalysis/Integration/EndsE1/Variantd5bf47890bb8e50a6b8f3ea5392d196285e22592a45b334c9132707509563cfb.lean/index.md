# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EndsE1.Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ffe779b70efce4c0c54915abcb2286eaa0edfca`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.EndsCore` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.LeafIntegrals` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Wfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/wfun--5c440ea2de49ee6520a22d23.md) | 39 | `declaration-track:5c440ea2de49ee6520a22d2324cc37516709cef9589912b7fe76a083d23db13f` |
| 2 | `def` | [distB](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/distb--8c53af3f308ca6c75fb63390.md) | 43 | `declaration-track:8c53af3f308ca6c75fb6339001766b45865e878372e1cb7ca112107972ac8467` |
| 3 | `def` | [gwt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/gwt--b1375ea1e652b1e0bc0b03cb.md) | 46 | `declaration-track:b1375ea1e652b1e0bc0b03cbb5c3cffb6d1cd4c56d48e3cc844463e85ef6f03c` |
| 4 | `theorem` | [setIntegral_gwt_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/setintegral-gwt-le--8d3f10056b6a550c74f7d7ee.md) | 51 | `result-track:8d3f10056b6a550c74f7d7eec0cd5c3290d748625422d372ed9522be0ac77994` |
| 5 | `theorem` | [W1a](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/w1a--316456aa62551bd3d7553a19.md) | 58 | `result-track:316456aa62551bd3d7553a192ea68fdb027c97ad90207e66ca5651f69bcdadac` |
| 6 | `theorem` | [W1b](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/w1b--f254b33cd74727cb3554cb03.md) | 74 | `result-track:f254b33cd74727cb3554cb03ae551ce27407a5192be38401f24043060fdf940d` |
| 7 | `theorem` | [antitone_setIntegral_psiA_sq_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/antitone-setintegral-psia-sq-ioi--64fa2892453670d3f55f1afd.md) | 113 | `result-track:64fa2892453670d3f55f1afda5473b527e0595f59f5782797cd35913b54ba965` |
| 8 | `theorem` | [W1c](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/w1c--c9623cc8eeeece12923f2d81.md) | 119 | `result-track:c9623cc8eeeece12923f2d818232f65aa9aace8a87ad7351e6de2e8ee98be2fd` |
| 9 | `theorem` | [W1d](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/w1d--29812e3ebe62ef59cb94c50e.md) | 137 | `result-track:29812e3ebe62ef59cb94c50e31a81227a6bd25c9d573c31123c2343f9f011ddf` |
| 10 | `theorem` | [W3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/w3--e961e7e6bd34656e163a8f86.md) | 164 | `result-track:e961e7e6bd34656e163a8f869ac5b24f3f2d206978945a687da4cf6f1c3adefc` |
| 11 | `theorem` | [distB_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/distb-nonneg--f288a6abcddd89bc32700383.md) | 173 | `result-track:f288a6abcddd89bc32700383e8896870b51f7fcc915542aa17af28732202fda0` |
| 12 | `theorem` | [gwt_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/gwt-pos--ed7dc1349e0a9952e47449b5.md) | 176 | `result-track:ed7dc1349e0a9952e47449b5bd33df350f750aafdc9bbd7d9977cc0b92ed2b22` |
| 13 | `theorem` | [abs_nuX_le_B_onI](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/abs-nux-le-b-oni--98208163b7ef70afad2254d4.md) | 180 | `result-track:98208163b7ef70afad2254d4b13ce6be9eb5dc0ee28a6b7a778df4e77e01269f` |
| 14 | `def` | [majK1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/majk1--a97d3caaeac447c8df5f42a2.md) | 194 | `declaration-track:a97d3caaeac447c8df5f42a259184306cf67f48cb2140b058a9fdfa98d485a34` |
| 15 | `theorem` | [abs_E1integrand_le_majK1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/abs-e1integrand-le-majk1--fe5e5c2e269e0fdf67b72149.md) | 199 | `result-track:fe5e5c2e269e0fdf67b72149b4166a682766e18e74eba7e5defbe9af0ee6212e` |
| 16 | `theorem` | [majK1_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/majk1-le--f7c4ca4322105d396dbb1463.md) | 232 | `result-track:f7c4ca4322105d396dbb1463305fe79cea9de051bd6a081e643d2e5af2922b0d` |
| 17 | `theorem` | [abs_E1integrand_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/abs-e1integrand-le--b9948c65974c909b94d79032.md) | 253 | `result-track:b9948c65974c909b94d7903266fb99d3575f25fed12e50b19a00bdc96ea75a83` |
| 18 | `theorem` | [tau_d_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/tau-d-gt--839585cdf3c4240c7224aebf.md) | 263 | `result-track:839585cdf3c4240c7224aebf144a53d68840bb7e4d3ab36725a5d4168dbef4e4` |
| 19 | `theorem` | [sum_le_sum_range_of_injOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/sum-le-sum-range-of-injon--e410459711e2ecdd069839ce.md) | 273 | `result-track:e410459711e2ecdd069839ce66d0845fbdd46764d8dcee27ee02fa1825a595cb` |
| 20 | `theorem` | [h_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/h-le-one--90ac1bd324ba9294b0a758be.md) | 287 | `result-track:90ac1bd324ba9294b0a758be110fa74819eff96df0728f1a61a38986b57e4f3a` |
| 21 | `theorem` | [h_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/h-pos--e03dc4dcb6d1a8db835fbebc.md) | 293 | `result-track:e03dc4dcb6d1a8db835fbebcd376b80244c1a33826fea360a647c0f2491a3bca` |
| 22 | `theorem` | [rho_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/rho-le-majorant--f7fa26abef5a773ee32c7b67.md) | 298 | `result-track:f7fa26abef5a773ee32c7b6707f1d2d7cdf3fd8b813fb8f7a7140593fab24992` |
| 23 | `theorem` | [setIntegral_rho_div_gwt_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/setintegral-rho-div-gwt-le--c89567e21b3f74c10473f42d.md) | 432 | `result-track:c89567e21b3f74c10473f42db7a5c54251ef9b90272243b84567594686bdb5aa` |
| 24 | `theorem` | [calE1_maj_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/cale1-maj-bound--e13bca1233c930faf651f2b1.md) | 616 | `result-track:e13bca1233c930faf651f2b16d68a22ec77bceb63e1a548290752b5ddeb01150` |
| 25 | `theorem` | [calE1_maj_bound_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/cale1-maj-bound-l--b5ef2ccf755083e6264ea2c4.md) | 727 | `result-track:b5ef2ccf755083e6264ea2c4d3343dfb93d9c53be020e7c094d1ccd9211de606` |
| 26 | `theorem` | [abs_calE1_le_maj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/abs-cale1-le-maj--dfd600c0d0af22adfa368202.md) | 844 | `result-track:dfd600c0d0af22adfa368202b3e529c686c96fb08f9e1d59d993027daff80953` |
| 27 | `theorem` | [calE1_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/declarations/cale1-bound--690fe2abe0c5862cc362b00a.md) | 888 | `result-track:690fe2abe0c5862cc362b00aa0c590bb6900b33bcd6d9a239c79386c42503803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

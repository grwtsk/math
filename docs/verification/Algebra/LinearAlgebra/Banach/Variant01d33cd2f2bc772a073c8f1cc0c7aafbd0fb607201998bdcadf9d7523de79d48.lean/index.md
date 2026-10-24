# Verification target: GRWTSK.Algebra.LinearAlgebra.Banach.Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1520c5c00879c9132d0a3640584d3f47428f3aa",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1520c5c00879c9132d0a3640584d3f47428f3aa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Baire` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AffineIsometry` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonlinearRightInverse](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/nonlinearrightinverse--71322a8eee67f50de285a9f7.md) | 41 | `declaration-track:71322a8eee67f50de285a9f7d9fb1dadd5f25efc6e45063f377102857b81e5e9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/instance--90ee38d001a030bd483a179c.md) | 48 | `declaration-track:90ee38d001a030bd483a179c8a5be257b85d4d993260e52c159dc31c5ab8aac2` |
| 3 | `theorem` | [NonlinearRightInverse.right_inv](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/nonlinearrightinverse-right-inv--b28541001904472d2524cf5a.md) | 52 | `result-track:b28541001904472d2524cf5a3d6d3db90ab0beffa25fedafcdfba25a296ca76e` |
| 4 | `theorem` | [NonlinearRightInverse.bound](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/nonlinearrightinverse-bound--f99472d084c70d93f6fc1c60.md) | 57 | `result-track:f99472d084c70d93f6fc1c6054dc53f3b96597b0c18a905cd76884ef71ade679` |
| 5 | `def` | [ContinuousLinearEquiv.toNonlinearRightInverse](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/continuouslinearequiv-tononlinearrightinverse--c8a12188789fb217b56938a6.md) | 66 | `declaration-track:c8a12188789fb217b56938a6dade9ab6cd2b139d83a456769495ff412ff3fb24` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/instance--60c8d21b2b5782b9119d2733.md) | 74 | `declaration-track:60c8d21b2b5782b9119d2733249bf4e22cae30910032964335e4baa0165a655a` |
| 7 | `theorem` | [exists_approx_preimage_norm_le](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/exists-approx-preimage-norm-le--3ab625b17e3cef957ec1bda5.md) | 91 | `result-track:3ab625b17e3cef957ec1bda505ab2ceae5d41f5aaf7c16b20cc8e41e7e7c0b39` |
| 8 | `theorem` | [exists_preimage_norm_le](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/exists-preimage-norm-le--0630d82b214cd9914da36d8e.md) | 177 | `result-track:0630d82b214cd9914da36d8e44000a1548dbe000c33fb4e3d833ee2f3a7013bb` |
| 9 | `theorem` | [isOpenMap](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/isopenmap--ef7b022108e521cac1287738.md) | 246 | `result-track:ef7b022108e521cac12877387a74e022f63c669ce9bf7eec32ad378b2967b6e6` |
| 10 | `theorem` | [quotientMap](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/quotientmap--1549480ad9836833ea222a4f.md) | 270 | `result-track:1549480ad9836833ea222a4f978c7919ec957e698cef19733488351ce5fdc5e6` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.NonlinearRightInverse.Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.AffineMap.isOpenMap](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/root-grwtsk-algebra-linearalgebra-nonlinearrightinverse-variantba55a5442--5ba5f3413d333237cf23f0f2.md) | 274 | `result-track:5ba5f3413d333237cf23f0f2d223754ca0123919665854d18a4e400c5baabea5` |
| 12 | `theorem` | [interior_preimage](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/interior-preimage--42520844cf7f32fab5806074.md) | 285 | `result-track:42520844cf7f32fab5806074df95dc7d9e6fc4f3a9e24fba0e427e1c325ab96d` |
| 13 | `theorem` | [closure_preimage](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/closure-preimage--5d571129a7c0402dcc5152c6.md) | 290 | `result-track:5d571129a7c0402dcc5152c6df59ca9bf3a8f6c00ea1d5c146a3e90e2e218828` |
| 14 | `theorem` | [frontier_preimage](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/frontier-preimage--c1c52b326d7abb4d87c493b1.md) | 294 | `result-track:c1c52b326d7abb4d87c493b1363d0014885e3ebea2a74d1ac020301b910b19c5` |
| 15 | `theorem` | [exists_nonlinearRightInverse_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/exists-nonlinearrightinverse-of-surjective--8bc7946dcb6c472d3c6a6a37.md) | 299 | `result-track:8bc7946dcb6c472d3c6a6a37675b27adc04be7ba7147f96c493a95822e1ead51` |
| 16 | `theorem` | [nonlinearRightInverseOfSurjective_nnnorm_pos](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/nonlinearrightinverseofsurjective-nnnorm-pos--130ef1fe30791d77178bdd53.md) | 319 | `result-track:130ef1fe30791d77178bdd532cbc3dd768130433c5430e2ee9290b289fca1e1a` |
| 17 | `theorem` | [continuous_symm](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/continuous-symm--16073e3492ec4f03962304a2.md) | 333 | `result-track:16073e3492ec4f03962304a25980f8ba9c178602afe038189d7c882544f14fda` |
| 18 | `def` | [toContinuousLinearEquivOfContinuous](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/tocontinuouslinearequivofcontinuous--a0edb78be9f4e7e819f30744.md) | 344 | `declaration-track:a0edb78be9f4e7e819f307441b2d4c811d82d9a7e3afd4cc98e3ff4054aa57b9` |
| 19 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coefn-tocontinuouslinearequivofcontinuous--1444233bc5f8662fb906f2c6.md) | 351 | `result-track:1444233bc5f8662fb906f2c6f4ce6279b57887d4266d093f45530ca227b3c0c5` |
| 20 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous_symm](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coefn-tocontinuouslinearequivofcontinuous-symm--de908a7226032e72b696a649.md) | 357 | `result-track:de908a7226032e72b696a649713e7498068f5771ee0ef39fc932236db7e4a4f9` |
| 21 | `def` | [ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/ofbijective--e89193f12375f4c82df4a659.md) | 370 | `declaration-track:e89193f12375f4c82df4a65940a7a217e2e4b4f7ee42d646fd3c0f2b10f878e0` |
| 22 | `theorem` | [coeFn_ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coefn-ofbijective--33f1651a3e88dff618e8a41c.md) | 380 | `result-track:33f1651a3e88dff618e8a41c10331d69ab1682a2d602ec59fd046fa1b30814d1` |
| 23 | `theorem` | [coe_ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coe-ofbijective--6a57bdbd131a61e0c01f850f.md) | 385 | `result-track:6a57bdbd131a61e0c01f850fcac968400e9e902c1629ce809b1d4b3ed4426872` |
| 24 | `theorem` | [ofBijective_symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/ofbijective-symm-apply-apply--2b039a5a1c8bea332ed89adc.md) | 392 | `result-track:2b039a5a1c8bea332ed89adc607d7ff450b0adde719039f77db035680ff43ea7` |
| 25 | `theorem` | [ofBijective_apply_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/ofbijective-apply-symm-apply--2df1e4107faed381673c6246.md) | 398 | `result-track:2df1e4107faed381673c62460eb9aadb191f11db0e3905db3bb8c61842ff56d5` |
| 26 | `def` | [coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coprodsubtypelequivofiscompl--6713d35f0471abeca007250b.md) | 413 | `declaration-track:6713d35f0471abeca007250b2b436feeed0cf91054b06a1b80e2d0dfa058cd46` |
| 27 | `theorem` | [range_eq_map_coprodSubtypeLEquivOfIsCompl](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/range-eq-map-coprodsubtypelequivofiscompl--f4d96ce9c4f3f5bc892bf097.md) | 426 | `result-track:f4d96ce9c4f3f5bc892bf097d74bf64e0f47059f2bcd3836962305fa992aa464` |
| 28 | `theorem` | [closed_complemented_range_of_isCompl_of_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/closed-complemented-range-of-iscompl-of-ker-eq-bot--c2c77e8ace09d18d9acb6a3e.md) | 439 | `result-track:c2c77e8ace09d18d9acb6a3e7df34b08a4df58a6b9407fc39f80c6132059916b` |
| 29 | `theorem` | [LinearMap.continuous_of_isClosed_graph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/linearmap-continuous-of-isclosed-graph--2acb7292e8c16c1f0acf886f.md) | 458 | `result-track:2acb7292e8c16c1f0acf886fe51534b7a2841df368a714494557ba693018e2b1` |
| 30 | `theorem` | [LinearMap.continuous_of_seq_closed_graph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/linearmap-continuous-of-seq-closed-graph--2377e584946304b09ecc1370.md) | 473 | `result-track:2377e584946304b09ecc137004de40325a0208e78e4fab9dc0da3a5f66f5e84a` |
| 31 | `def` | [ofIsClosedGraph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/ofisclosedgraph--75869d23e4e3cf5fcbcefd64.md) | 491 | `declaration-track:75869d23e4e3cf5fcbcefd648f17ac7e205d44ee608b3aa4ed9c6c5b888cc7ef` |
| 32 | `theorem` | [coeFn_ofIsClosedGraph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coefn-ofisclosedgraph--e81de2544d2131565bdd64a0.md) | 497 | `result-track:e81de2544d2131565bdd64a0bb61b001d49edf9ddd63467aef00c466a8917fdc` |
| 33 | `theorem` | [coe_ofIsClosedGraph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coe-ofisclosedgraph--9ab442522099c6f0dad5d480.md) | 502 | `result-track:9ab442522099c6f0dad5d4800dda527900db7279f8d9cc1dd66964a6f5ead8d9` |
| 34 | `def` | [ofSeqClosedGraph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/ofseqclosedgraph--2cfb1a5302b3b7066c4df201.md) | 510 | `declaration-track:2cfb1a5302b3b7066c4df201c732f646babda5f5de50d594d83ba76b2e9685df` |
| 35 | `theorem` | [coeFn_ofSeqClosedGraph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coefn-ofseqclosedgraph--ab00d3695bbed956cc25fc26.md) | 518 | `result-track:ab00d3695bbed956cc25fc260a654a81c2ed09ba931e273a17e2d650a1f62ce6` |
| 36 | `theorem` | [coe_ofSeqClosedGraph](../../../../../mathematics/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/declarations/coe-ofseqclosedgraph--f7638b844a82785f90c264c8.md) | 524 | `result-track:f7638b844a82785f90c264c883a1d16bdbddae5a0438af6d26af9d9d9e233581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

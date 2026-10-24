# Verification target: GRWTSK.Analysis.ComplexAnalysis.CanonicalDecomposition.Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicalfactor--c5d9fe6fe56d6d7438251bf9.md) | 53 | `declaration-track:c5d9fe6fe56d6d7438251bf9721b356e482e71b121dc353444a6194c6345f17b` |
| 2 | `lemma` | [canonicalFactor_def](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicalfactor-def--91d422de37333fc253a5a2ff.md) | 56 | `result-track:91d422de37333fc253a5a2ff67e2b922a13dc4e835e79fe4dade745ed777aea3` |
| 3 | `lemma` | [canonicalFactor_apply](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicalfactor-apply--29fc78353bb28f0440a64d7e.md) | 60 | `result-track:29fc78353bb28f0440a64d7e429532e388e88d139ff91d58f26eecd8341e00ca` |
| 4 | `lemma` | [canonicalFactor_apply_self](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicalfactor-apply-self--5e4c4185eb2f90ef1b4eee8d.md) | 65 | `result-track:5e4c4185eb2f90ef1b4eee8d1511e901ca6a42ae3a7a1b6fb95a2f057ecc34bf` |
| 5 | `theorem` | [meromorphic_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/meromorphic-canonicalfactor--2414e62cc562d45f8f056fa8.md) | 77 | `result-track:2414e62cc562d45f8f056fa891b325fdf7840267b37c13da3f19f5260c003a2f` |
| 6 | `theorem` | [analyticOnNhd_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/analyticonnhd-canonicalfactor--c93aa347ccdf2144aa9a4802.md) | 87 | `result-track:c93aa347ccdf2144aa9a480248534896eed49ed6f42bd1b584676b57692226d4` |
| 7 | `theorem` | [meromorphicOrderAt_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/meromorphicorderat-canonicalfactor--c4f66b5d08879f8926bb564e.md) | 98 | `result-track:c4f66b5d08879f8926bb564ec0e4a60da0d64b01958ebee1338a7e7cd800f183` |
| 8 | `theorem` | [meromorphicNFOn_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/meromorphicnfon-canonicalfactor--bbc4e6944402a92338ebc091.md) | 117 | `result-track:bbc4e6944402a92338ebc09110ee54f61545b530176f079c1be5cd53f66225c3` |
| 9 | `theorem` | [canonicalFactor_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicalfactor-ne-zero--b3aa88ac8410a2154f3c036a.md) | 135 | `result-track:b3aa88ac8410a2154f3c036a6280b0a59c25158640a081745b2b1af6fef7fddd` |
| 10 | `theorem` | [canonicalFactor_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicalfactor-eq-zero-iff--8b6d0c8f80008a865972efee.md) | 151 | `result-track:8b6d0c8f80008a865972efee33caf86ac47dd4b4b48e8ff4a977691266470d10` |
| 11 | `theorem` | [norm_canonicalFactor_eval_circle_eq_one](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/norm-canonicalfactor-eval-circle-eq-one--52a942e3c1aadec3619382ea.md) | 162 | `result-track:52a942e3c1aadec3619382ea3a58c9c7a343db44217fbace8d05c1bb792c7aec` |
| 12 | `theorem` | [meromorphicOrderAt_canonicalFactor_ne_top](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/meromorphicorderat-canonicalfactor-ne-top--d3d4200015d7d227206d493a.md) | 178 | `result-track:d3d4200015d7d227206d493aa792526208f87cb0abdb8ca4872f5ca1070f7109` |
| 13 | `theorem` | [divisor_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/divisor-canonicalfactor--f720a2c4307990c7672b2a84.md) | 195 | `result-track:f720a2c4307990c7672b2a84db2f571bcde968066685e1df45769273b68bc5cb` |
| 14 | `structure` | [CanonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicaldecomp--431cb9c09d0644c025699834.md) | 232 | `declaration-track:431cb9c09d0644c0256998343bf5dacb066f4c7bb8fd02264d6d78ae483ecae7` |
| 15 | `lemma` | [canonicalDecomposition_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicaldecomposition-aux--a537fc1bb575b5433b26a495.md) | 248 | `result-track:a537fc1bb575b5433b26a49549fdddfd7f3aedf54d6d2ed0c24cd8cba9742893` |
| 16 | `lemma` | [sum_apply_smul_single_eq_self](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/sum-apply-smul-single-eq-self--42c993b7abe540200361a1b2.md) | 262 | `result-track:42c993b7abe540200361a1b238188593e6d5c93f504269c39b05817d65fec243` |
| 17 | `lemma` | [canonicalDecomposition_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicaldecomposition-aux--06b49d459ce1ff6310be9394.md) | 278 | `result-track:06b49d459ce1ff6310be9394fe4a487c8115d9fe483f14f20e8d9bff417cee80` |
| 18 | `lemma` | [canonicalDecomposition_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicaldecomposition-aux--473fe017f0163c5051af9084.md) | 299 | `result-track:473fe017f0163c5051af90842577f44599470abcb1c4b44b48c49acb8545ee00` |
| 19 | `theorem` | [_root_.MeromorphicOn.exists_canonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/root-meromorphicon-exists-canonicaldecomp--7677b6db95f020b16cbf9c19.md) | 314 | `result-track:7677b6db95f020b16cbf9c19fd03f91d27ad96970313a23e4dd9880fb2661a8c` |
| 20 | `theorem` | [CanonicalDecomp.divisor_eq_divisor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/canonicaldecomp-divisor-eq-divisor--f28d46423df808adc383888f.md) | 390 | `result-track:f28d46423df808adc383888f734a053b21be0956a4eb31b1cb64ade35adee8e9` |
| 21 | `structure` | [ECanonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/ecanonicaldecomp--22fb2c23395722a2d117b98d.md) | 447 | `declaration-track:22fb2c23395722a2d117b98ddfbd7ebef72a36a208da0346ed3504ecb83166bc` |
| 22 | `theorem` | [_root_.MeromorphicOn.exists_ecanonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/root-meromorphicon-exists-ecanonicaldecomp--4cdc1bf32499842f8c4a3301.md) | 469 | `result-track:4cdc1bf32499842f8c4a3301e6861ce295b168f7727490ebb4c4f2efeaeccd86` |
| 23 | `lemma` | [mulSupport_pow_subset_support](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/mulsupport-pow-subset-support--483fa063234833882db4956b.md) | 515 | `result-track:483fa063234833882db4956b5ab9020a4f4a0b8058fbd4afc9791110a3163b7b` |
| 24 | `lemma` | [ECanonicalDecomp.eq_smul_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/ecanonicaldecomp-eq-smul-meromorphictrailingcoeffat--8cea683198a031798f7de2d3.md) | 526 | `result-track:8cea683198a031798f7de2d345b96eb5d9c3a7aca33c846d1728dee57f853164` |
| 25 | `lemma` | [ECanonicalDecomp.eq_smul_meromorphicTrailingCoeffAt_of_meromorphicOrderAt](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/ecanonicaldecomp-eq-smul-meromorphictrailingcoeffat-of-meromorphicordera--2a4d5cbf364d69790736b6d7.md) | 595 | `result-track:2a4d5cbf364d69790736b6d73dc25a6be141e88c8c855eda9d47fd11a8c14e0d` |
| 26 | `lemma` | [ECanonicalDecomp.log_norm_eq](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/declarations/ecanonicaldecomp-log-norm-eq--08cf454515ce7a9304086b9b.md) | 621 | `result-track:08cf454515ce7a9304086b9b45d9c2e9f931357f699ea1fc6afb5233d20a9233` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

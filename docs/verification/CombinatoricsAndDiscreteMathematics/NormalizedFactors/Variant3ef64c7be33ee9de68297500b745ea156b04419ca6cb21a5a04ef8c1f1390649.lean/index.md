# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e689c717fbdde549494eaaa644c83de690f6e6ac",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e689c717fbdde549494eaaa644c83de690f6e6ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors--079fa058fe97bbbc06af72af.md) | 43 | `declaration-track:079fa058fe97bbbc06af72afef69f7998afe280acef5d2a51e6fd6a01ecd01c5` |
| 2 | `theorem` | [factors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/factors-eq-normalizedfactors--46f854af3c57ac95f780ad74.md) | 49 | `result-track:46f854af3c57ac95f780ad74407a508b1ba8bdc81f626aa774967c2b476cc0e1` |
| 3 | `theorem` | [prod_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/prod-normalizedfactors--a2bfb9f0755f8d5668ad13d0.md) | 55 | `result-track:a2bfb9f0755f8d5668ad13d032089b4e00ee7a06b1726665c2db222630ac1eaf` |
| 4 | `theorem` | [prod_normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/prod-normalizedfactors-eq--5fca19dbbdeed1565e06faaf.md) | 65 | `result-track:5fca19dbbdeed1565e06faaf897df4b19c0826248ddff89939daed8d416b3868` |
| 5 | `theorem` | [prime_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/prime-of-normalized-factor--dcabe61f84b8358c5ba02571.md) | 73 | `result-track:dcabe61f84b8358c5ba025712c4d7a4ffaccae62aa12b93a4bae2fa9814d6157` |
| 6 | `theorem` | [irreducible_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/irreducible-of-normalized-factor--dbcea9a4cccfa72c8bce8917.md) | 80 | `result-track:dbcea9a4cccfa72c8bce891772c1e589829121c526dd0ea0d0346006ea77860c` |
| 7 | `theorem` | [normalize_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalize-normalized-factor--6a8bdc504c8f5e6608ccd01f.md) | 84 | `result-track:6a8bdc504c8f5e6608ccd01feb244f48c605b3936e46c34e85bc466171485891` |
| 8 | `theorem` | [normalizedFactors_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-irreducible--55b0570369b1770adb477ec9.md) | 92 | `result-track:55b0570369b1770adb477ec9acc1d67d74599ed9585b62e7db6d2a864e3a8e37` |
| 9 | `theorem` | [normalizedFactors_eq_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-eq-of-dvd--6c50dfc679ada24919578f63.md) | 102 | `result-track:6c50dfc679ada24919578f63c51e82e506958c5d4dff3beb79e906b6c528a400` |
| 10 | `theorem` | [exists_mem_normalizedFactors_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/exists-mem-normalizedfactors-of-dvd--629dc8296d3af56156cef809.md) | 111 | `result-track:629dc8296d3af56156cef809ed43f80746c156df933dbfaa6f6771442e640710` |
| 11 | `theorem` | [exists_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/exists-mem-normalizedfactors--f5e5209353a57735bb781b7b.md) | 128 | `result-track:f5e5209353a57735bb781b7b9b772c8229765dee69b56c108bab500a26c31c1d` |
| 12 | `theorem` | [normalizedFactors_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-zero--c9555ca75fce2b7c0f36abdf.md) | 135 | `result-track:c9555ca75fce2b7c0f36abdf4bb493e007ac7b242f5bfe89faf7ed8865a516e9` |
| 13 | `theorem` | [normalizedFactors_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-one--4466d4a01667456fe190b531.md) | 139 | `result-track:4466d4a01667456fe190b5311d20a80776f0d713b9b4f73d2f3e911c1e9023b4` |
| 14 | `theorem` | [normalizedFactors_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-mul--2a5c7943c2751aa4074a4f31.md) | 151 | `result-track:2a5c7943c2751aa4074a4f3150777998be42a98ae40e0856fbe1ad87c408b149` |
| 15 | `theorem` | [normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-pow--9aff6d71d5ef55bfbfc223e9.md) | 173 | `result-track:9aff6d71d5ef55bfbfc223e9bfa9dc45a8f38a34952bb327f2e58563f8c5a1c4` |
| 16 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.Irreducible.normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-normalizedfactors-varian--484ecad36cd3d4057634e2a6.md) | 182 | `result-track:484ecad36cd3d4057634e2a654b2f3a7b056e74c5af0a26c8bbb625874617513` |
| 17 | `theorem` | [normalizedFactors_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-prod-eq--bfbac25ff703ecaa8fcee7ef.md) | 187 | `result-track:bfbac25ff703ecaa8fcee7efb31a695fec0e1415c3f550ecb79b88dd08fc5550` |
| 18 | `theorem` | [dvd_iff_normalizedFactors_le_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/dvd-iff-normalizedfactors-le-normalizedfactors--ad039841066797e270cb9d61.md) | 202 | `result-track:ad039841066797e270cb9d615e603e11bf4585a63a22f0b441284798b9990a9c` |
| 19 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.Associated.normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-normalizedfactors-varian--1ffa47709cc1dee510649fd9.md) | 211 | `result-track:1ffa47709cc1dee510649fd93ef43ccf556a65fed472d17c4aca7fb0321826a4` |
| 20 | `theorem` | [associated_iff_normalizedFactors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/associated-iff-normalizedfactors-eq-normalizedfactors--a0da632f58c0036adba757e4.md) | 218 | `result-track:a0da632f58c0036adba757e43050ce7744f94504251de9c1ea00708b4e078840` |
| 21 | `theorem` | [normalizedFactors_of_irreducible_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-of-irreducible-pow--c1de7144e992f6694b4dc082.md) | 223 | `result-track:c1de7144e992f6694b4dc0825d009fa32f13d33d88fb253f339e55e55bcdbee5` |
| 22 | `theorem` | [zero_notMem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/zero-notmem-normalizedfactors--f0a7ee7b42eac3d693b3a8ce.md) | 227 | `result-track:f0a7ee7b42eac3d693b3a8cec9c29f3d6acff863e14307c88152ebfd9d17ae12` |
| 23 | `theorem` | [ne_zero_of_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/ne-zero-of-mem-normalizedfactors--fe9696885f5f3ae92b11c1ab.md) | 230 | `result-track:fe9696885f5f3ae92b11c1ab202a71305a8e213cb24c240bdfb83f9638559459` |
| 24 | `theorem` | [dvd_of_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/dvd-of-mem-normalizedfactors--46a1200aee542ce55dbcc037.md) | 233 | `result-track:46a1200aee542ce55dbcc0376541fc3c598cec7e1591a94647b74fbbf3bdf05b` |
| 25 | `theorem` | [mem_normalizedFactors_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/mem-normalizedfactors-iff--ea72f0451c0043f4ab64bc81.md) | 238 | `result-track:ea72f0451c0043f4ab64bc81d23aa288d47a079d76d43cfa01da0975bcc15640` |
| 26 | `theorem` | [mem_normalizedFactors_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/mem-normalizedfactors-iff--e8e5240592f683c2b657f00c.md) | 248 | `result-track:e8e5240592f683c2b657f00c9e00edae8e36d39175a7ec2e00ab7080f5408efc` |
| 27 | `theorem` | [disjoint_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/disjoint-normalizedfactors--92fd1a1a70cade4846904da6.md) | 257 | `result-track:92fd1a1a70cade4846904da602536ec6be668f377affbc34e093d5139a7a3bad` |
| 28 | `theorem` | [exists_associated_prime_pow_of_unique_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/exists-associated-prime-pow-of-unique-normalized-factor--d2727b9d1a2f1418f99601d7.md) | 265 | `result-track:d2727b9d1a2f1418f99601d7f6cc027f05682838eb09a183db267bb78ee32e27` |
| 29 | `theorem` | [normalizedFactors_prod_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-prod-of-prime--0fe31a922e79401cba179481.md) | 271 | `result-track:0fe31a922e79401cba179481dedcabcd261f84276053c00d412c01d13347e82d` |
| 30 | `theorem` | [mem_normalizedFactors_eq_of_associated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/mem-normalizedfactors-eq-of-associated--ae2f53091ad3fcf573d58137.md) | 282 | `result-track:ae2f53091ad3fcf573d58137b1e9ca98d287ba066f5a63287c6c35ee70e56df8` |
| 31 | `theorem` | [normalizedFactors_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-pos--fa343e97a712d03a77cb6148.md) | 289 | `result-track:fa343e97a712d03a77cb6148dbc8208737791a9162cc16e07ba8e010be4107ee` |
| 32 | `theorem` | [normalizedFactors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-eq-zero-iff--1bcad25977207e185320364b.md) | 306 | `result-track:1bcad25977207e185320364ba5c082e653b63ebbb16aed8a7926fe211745edfe` |
| 33 | `theorem` | [normalizedFactors_of_isUnit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-of-isunit--ccfbd05157640f9fcd265303.md) | 314 | `result-track:ccfbd05157640f9fcd26530348110c7fcbf1f42428d11a1b83ca1d4cc6ef693b` |
| 34 | `theorem` | [dvdNotUnit_iff_normalizedFactors_lt_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/dvdnotunit-iff-normalizedfactors-lt-normalizedfactors--3fcff023a0eabad24088ef9e.md) | 320 | `result-track:3fcff023a0eabad24088ef9e4ffc0616a467f9a635cc386298296a89a8517199` |
| 35 | `theorem` | [normalizedFactors_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-multiset-prod--a41b70ceab0aba9390945c00.md) | 332 | `result-track:a41b70ceab0aba9390945c00f6491adf9ac0ba57e08891106182b61fa0671910` |
| 36 | `def` | [normalizedFactorsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactorsequiv--cb5a8e51eb0c451b9d70b6f0.md) | 356 | `declaration-track:cb5a8e51eb0c451b9d70b6f0aa96d8badbd8547c5e10084c4dbd250830d81978` |
| 37 | `theorem` | [normalizedFactorsEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactorsequiv-apply--ff60f5c98256f4175a1f133a.md) | 366 | `result-track:ff60f5c98256f4175a1f133a236b651d0f895016251aae7673b405bfbfcf7e66` |
| 38 | `theorem` | [normalizedFactorsEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactorsequiv-symm-apply--c2686742b438505adbf35214.md) | 371 | `result-track:c2686742b438505adbf3521499fe6a8b87f2e1712fb5f57b379629b40b2d2a1d` |
| 39 | `def` | [strongNormalizationMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/strongnormalizationmonoid--b347622b18b811f07e46989f.md) | 387 | `declaration-track:b347622b18b811f07e46989fc3c1b69b9bc8871be4744dbb068d16a81b78abe4` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/instance--27ad61f68761535953840295.md) | 419 | `declaration-track:27ad61f68761535953840295ffa52f0d888eee52d7a505c1e42f450217dae195` |
| 41 | `lemma` | [normalizedFactors_prod_eq_self_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-prod-eq-self-of-subset--6290777581153001d095041a.md) | 430 | `result-track:6290777581153001d095041a28ed42b93ab6340b70f9cce9e50264effa85341b` |
| 42 | `lemma` | [prod_ne_zero_of_subset_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/prod-ne-zero-of-subset-normalizedfactors--f29bd94309de0243cbcb613c.md) | 435 | `result-track:f29bd94309de0243cbcb613c477ec9ede66958ca29faceb0ae98cfce4b6beb9a` |
| 43 | `lemma` | [normalizedFactors_prod_inter_eq_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/normalizedfactors-prod-inter-eq-inter--8fc6e84565cfe0885a64aa12.md) | 442 | `result-track:8fc6e84565cfe0885a64aa128fcaf9531c98368db8e0737d778613f9df211568` |
| 44 | `lemma` | [prod_inter_normalizedFactors_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/declarations/prod-inter-normalizedfactors-ne-zero--2616a4e3d6be68aecfa2fff7.md) | 447 | `result-track:2616a4e3d6be68aecfa2fff7bcb59c236c6d9503be94508ec3d56f89a1683157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.AlgebraicTopology.HomotopyCofiber.Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcdbb93c93a56b7f83bfeb46026e168c35839d56",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcdbb93c93a56b7f83bfeb46026e168c35839d56`.

Source path: `GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplexBiprod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.IsInvertedBy` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasHomotopyCofiber](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/hashomotopycofiber--77e82710b38c3449f9791eb1.md) | 56 | `declaration-track:77e82710b38c3449f9791eb197ee4ead44007c5f77a86756f2552234b6197adb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/instance--1df99d6d86f2fea41153e8fc.md) | 59 | `declaration-track:1df99d6d86f2fea41153e8fce6f0c6f51c61036c2cad8026e2cc61f006d1c74b` |
| 3 | `def` | [X](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/x--e82b7143edcbae8ae71f6858.md) | 67 | `declaration-track:e82b7143edcbae8ae71f685861a198f4cd190ccf2130162a53de60d4dfe4076f` |
| 4 | `def` | [XIsoBiprod](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/xisobiprod--2d9267975e910677b26d313b.md) | 75 | `declaration-track:2d9267975e910677b26d313beae207532f5a183ea60388b342495d4e1f6be2ed` |
| 5 | `def` | [XIso](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/xiso--9286bbd207ca6edaf115ae5d.md) | 82 | `declaration-track:9286bbd207ca6edaf115ae5d6b72667b351731bc89d8d7104748f3819c49e30c` |
| 6 | `def` | [sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/sndx--814848734e5d8c0fb4691902.md) | 87 | `declaration-track:814848734e5d8c0fb46919021168e02ea73c074142a4313ca6a329e2bc6c87f9` |
| 7 | `def` | [inrX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx--c552773d198ef7eebff2abf4.md) | 96 | `declaration-track:c552773d198ef7eebff2abf47831a741d73a040e99d4b0324ef610ba8d67ffc6` |
| 8 | `lemma` | [inrX_sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx-sndx--b7bb9ad5f0483d68f9b84a26.md) | 105 | `result-track:b7bb9ad5f0483d68f9b84a26ab590f94add456822a6936638dc6f180c42623ea` |
| 9 | `lemma` | [sndX_inrX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/sndx-inrx--f72d02e987f04be606cad62a.md) | 110 | `result-track:f72d02e987f04be606cad62a09e77018d505424c5c9334d07c7aa7b27b726517` |
| 10 | `def` | [fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/fstx--2134abb9b27733672dadd4cf.md) | 116 | `declaration-track:2134abb9b27733672dadd4cf13c8cff19ca9a4173e269f36e249c2f25d84c707` |
| 11 | `def` | [inlX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx--7f3ab1d4e03c3d31d4ca8905.md) | 121 | `declaration-track:7f3ab1d4e03c3d31d4ca8905e46dc12265ae0fb5dcb68d4056b64ebbc9bfdcbd` |
| 12 | `lemma` | [inlX_fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx-fstx--2ca78e2112d59c7c274a081f.md) | 126 | `result-track:2ca78e2112d59c7c274a081ffa1696fb5463f1d72db0d8ea847ac4deeac5e1cf` |
| 13 | `lemma` | [inlX_sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx-sndx--b1e133516690df71a2e69b74.md) | 131 | `result-track:b1e133516690df71a2e69b74a47e83eef090c7746de8889341852e5eb4792f75` |
| 14 | `lemma` | [inrX_fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx-fstx--966e1520d8449fba487486bd.md) | 137 | `result-track:966e1520d8449fba487486bd61b806507dd0a2c8dad64e423f801e4fa39a096c` |
| 15 | `def` | [d](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/d--1e991566df876d9cc0388ca3.md) | 143 | `declaration-track:1e991566df876d9cc0388ca3aca797e113e2c38016ae24717fb727e42ff43902` |
| 16 | `lemma` | [ext_to_X](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/ext-to-x--ba19e1a0d471bf3c7aa4807a.md) | 151 | `result-track:ba19e1a0d471bf3c7aa4807ad7bbe6d14782c4e66e43f5497e82a2fc4f4a772b` |
| 17 | `lemma` | [ext_to_X'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/ext-to-x--52b15c27685646c84f9fc589.md) | 161 | `result-track:52b15c27685646c84f9fc58993957ec8dd25dedc087d7c4c39c1b5bb0f371ccd` |
| 18 | `lemma` | [ext_from_X](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/ext-from-x--c06bcc8255a71dc22c2810b5.md) | 166 | `result-track:c06bcc8255a71dc22c2810b5fc1935d9751289a60e053e319986219b78d9a599` |
| 19 | `lemma` | [ext_from_X'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/ext-from-x--85b25b98d330d4774c640dd2.md) | 176 | `result-track:85b25b98d330d4774c640dd2bae914ee2f8e39ebc00e902bb3bab3e585a4a775` |
| 20 | `lemma` | [d_fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/d-fstx--af390f3f5b9599a03a79fe80.md) | 182 | `result-track:af390f3f5b9599a03a79fe804bfc0c54cdf20aef4118c751f112b70e1dd814e1` |
| 21 | `lemma` | [d_sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/d-sndx--9fc40990f9dce7381afb2dec.md) | 188 | `result-track:9fc40990f9dce7381afb2dec3cfb6846e8cc88a97b8b1b68dcdb8f4ee6f0beae` |
| 22 | `lemma` | [inlX_d](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx-d--06a261ae6b6c5417f2f57b49.md) | 194 | `result-track:06a261ae6b6c5417f2f57b49b905dcb23c6261b64cbc9d2c35680a4906011cdf` |
| 23 | `lemma` | [inlX_d'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx-d--a59a77679e7754329e3b193a.md) | 202 | `result-track:a59a77679e7754329e3b193ae321a8791da5de03a1c56437149876887940463f` |
| 24 | `lemma` | [shape](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/shape--a711210a30de53f1aab351ce.md) | 207 | `result-track:a711210a30de53f1aab351ce80d9daf4506e4f5573d5667f249db060b2fcb48f` |
| 25 | `lemma` | [inrX_d](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx-d--392d4de170f1c1087b181e8f.md) | 212 | `result-track:392d4de170f1c1087b181e8f74afdf09ac41f16dd421e38333f2ec474769c0f3` |
| 26 | `def` | [homotopyCofiber](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/homotopycofiber--54417ce9511627199e70ef49.md) | 228 | `declaration-track:54417ce9511627199e70ef49d5db9b8494d2f7100e848526516ef4c51ea5f8d0` |
| 27 | `def` | [inr](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inr--707b39aee9fbcce1c3ca43c6.md) | 246 | `declaration-track:707b39aee9fbcce1c3ca43c65f7ecc5e95b2f96e77334ec3113060b1d38a9b27` |
| 28 | `def` | [inrCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrcomphomotopy--71dae942e4b2feeab8125e8d.md) | 252 | `declaration-track:71dae942e4b2feeab8125e8d9e570a8dbf5cd1de25929f7a18fd0433fd524f55` |
| 29 | `lemma` | [inrCompHomotopy_hom](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrcomphomotopy-hom--802895c1e4ed82eb14d15364.md) | 269 | `result-track:802895c1e4ed82eb14d1536495f80693a6a0df07628ca857c0f83565323d72c1` |
| 30 | `lemma` | [inrCompHomotopy_hom_eq_zero](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrcomphomotopy-hom-eq-zero--c90ccb62f012bea2b745baa1.md) | 272 | `result-track:c90ccb62f012bea2b745baa105b355fd0a96d2c40ef2db9131af7681d37611c5` |
| 31 | `def` | [desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/desc--e6e55fbd25aa1d75d7cbf657.md) | 283 | `declaration-track:e6e55fbd25aa1d75d7cbf65780e87734cc83b8c90ee9a904c6bfb2cbfa36914d` |
| 32 | `lemma` | [desc_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/desc-f--8aa239d937f318d828989050.md) | 302 | `result-track:8aa239d937f318d828989050b176d61688009e5303560df349e37caed08a51c9` |
| 33 | `lemma` | [desc_f'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/desc-f--2347832535ad5f60e1e27e4e.md) | 307 | `result-track:2347832535ad5f60e1e27e4eb038e0dc9a34e50e147829ab9833630706913949` |
| 34 | `lemma` | [inlX_desc_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx-desc-f--d41ada968b623151e3c06889.md) | 312 | `result-track:d41ada968b623151e3c06889f838c9103bdcdbdd139b7aa2a073bc9fde3954ee` |
| 35 | `lemma` | [inrX_desc_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx-desc-f--ff2719550641707743f4b717.md) | 319 | `result-track:ff2719550641707743f4b7175b416df55c2419e366644cb4156879eff4157ebe` |
| 36 | `lemma` | [inr_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inr-desc--206b5ab11cc626be596a30c2.md) | 325 | `result-track:206b5ab11cc626be596a30c29b43b3c5c1c86e637d24e3a0cd7accde24f80a9c` |
| 37 | `lemma` | [inrCompHomotopy_hom_desc_hom](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrcomphomotopy-hom-desc-hom--bfe06c86bc81e02830816d94.md) | 329 | `result-track:bfe06c86bc81e02830816d94d163f7b0d510c7ae0f02449253a21cf19d84a2ed` |
| 38 | `lemma` | [eq_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/eq-desc--bff7256d973b17a9c94646f4.md) | 337 | `result-track:bff7256d973b17a9c94646f417b7ded68a7d3a842df8b16dcecea82aa452ee8c` |
| 39 | `lemma` | [descSigma_ext_iff](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/descsigma-ext-iff--c202b90296ad5c62acae9da9.md) | 350 | `result-track:c202b90296ad5c62acae9da9cb77216189b7949e839d4e213deab2202cabce04` |
| 40 | `def` | [descEquiv](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/descequiv--579d455360e0478276c39929.md) | 367 | `declaration-track:579d455360e0478276c39929da261ac793ea4581094a72777f2d964d58418354` |
| 41 | `abbrev` | [cylinder](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/cylinder--a2615b60807d3fe3af864366.md) | 387 | `declaration-track:a2615b60807d3fe3af864366cb515690490bc30f3ebc4266ea1c828a3f5597f7` |
| 42 | `def` | [ι₀](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/anonymous--368698ffe2eb28d18a4c1597.md) | 392 | `declaration-track:368698ffe2eb28d18a4c1597613fffbe1a7a1104d5d85c0e70d1cd4522dfa348` |
| 43 | `def` | [ι₁](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/anonymous--ff53670300a0a37c1d373d41.md) | 395 | `declaration-track:ff53670300a0a37c1d373d414b028b659e5f4a61a02e40bacfb0eb9c5e86c224` |
| 44 | `def` | [desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/desc--1678c717ce85420fbfb0d8e7.md) | 405 | `declaration-track:1678c717ce85420fbfb0d8e7e704a20ae6fa8efb7ebfc71c137d1fe3fbaf04bf` |
| 45 | `lemma` | [ι₀_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/desc--592d771b48c4f23e17552a47.md) | 412 | `result-track:592d771b48c4f23e17552a47a95ebd451ff854cad3ccc68b32f67ced273662c9` |
| 46 | `lemma` | [ι₁_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/desc--b79d9871465eda8b144a1df4.md) | 415 | `result-track:b79d9871465eda8b144a1df40c3c040b798fe4b5acf9fc7c8fa8027cd2d7c1de` |
| 47 | `def` | [π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/anonymous--e23712c4f0f617f4625bfa98.md) | 422 | `declaration-track:e23712c4f0f617f4625bfa982bb384bc95fbb1bba49675fb4269661d44656326` |
| 48 | `lemma` | [ι₀_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/anonymous--36a63eb89735e42abb16b800.md) | 425 | `result-track:36a63eb89735e42abb16b800130d9c3d7f29af2c6106424a0ff8dcc510706175` |
| 49 | `lemma` | [ι₁_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/anonymous--10bf4aad5d92d12e8e77d59c.md) | 428 | `result-track:10bf4aad5d92d12e8e77d59ca5185810c61dab7856d62e3ebb7807fd21122bfd` |
| 50 | `abbrev` | [inlX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx--50f84eaa46d412a882e1a1ea.md) | 431 | `declaration-track:50f84eaa46d412a882e1a1eaf3ff8f2cc52547ddf092917858e610238fd0aba7` |
| 51 | `abbrev` | [inrX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx--e580303fc06f92cd7d5a9be6.md) | 435 | `declaration-track:e580303fc06f92cd7d5a9be61fead23ea0f86f07f818925cf70c6fb44d2b98da` |
| 52 | `lemma` | [inlX_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx--336b9dea60d68e78f659d437.md) | 439 | `result-track:336b9dea60d68e78f659d43786b95ac8afc98cbce3f091e8f124703abe877d07` |
| 53 | `lemma` | [inrX_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx--d1b2c7074b9b0f221fe5316d.md) | 445 | `result-track:d1b2c7074b9b0f221fe5316d4c1fefdf7530b68965ba36ed88484288cb223e6a` |
| 54 | `def` | [nullHomotopicMap](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/nullhomotopicmap--ea096af7b53dfb8c77ace871.md) | 457 | `declaration-track:ea096af7b53dfb8c77ace871fef5fa9ef497285bcf6c9afaf6aa65824377c223` |
| 55 | `def` | [nullHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/nullhomotopy--6ec5ed77009b2eacc4faf130.md) | 463 | `declaration-track:6ec5ed77009b2eacc4faf1304eb07ab9aa4f0973391ebe477b05c7a7aedb36f5` |
| 56 | `lemma` | [inlX_nullHomotopy_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inlx-nullhomotopy-f--21b8a0c6c8a5ef4f4da3adfc.md) | 466 | `result-track:21b8a0c6c8a5ef4f4da3adfc07cbcb43ed19a2fe3446cf506074e2d00cba55e9` |
| 57 | `lemma` | [inrX_nullHomotopy_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/inrx-nullhomotopy-f--97c7cf04403ce2c64a01df31.md) | 487 | `result-track:97c7cf04403ce2c64a01df3132296d8167f4ca3d052fe2bfbd7f1037d2b0228a` |
| 58 | `lemma` | [nullHomotopicMap_eq](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/nullhomotopicmap-eq--21670b18b9c737b83c178c10.md) | 516 | `result-track:21670b18b9c737b83c178c105d8891a4da9be77ada50d635cd5fc85f064bc239` |
| 59 | `def` | [πCompι₀Homotopy](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/comp-homotopy--8967eff6bc41682666ebe671.md) | 526 | `declaration-track:8967eff6bc41682666ebe671d7ef90c73bb4d3ee22d32457e0f26a2a0e7f4794` |
| 60 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/homotopyequiv--a948ad655a255b2d229db188.md) | 532 | `declaration-track:a948ad655a255b2d229db18881c8b1f0fb471d1a699871a9ccab8dfddaa3b7a3` |
| 61 | `def` | [homotopy₀₁](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/homotopy--8f62845355ae3bf0169bcaaf.md) | 539 | `declaration-track:8f62845355ae3bf0169bcaaf89769e12827b5ca53d3aae65a0f1be111830afbf` |
| 62 | `lemma` | [map_ι₀_eq_map_ι₁](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/map-eq-map--76c38d08e1ebffdbd8ae33d5.md) | 544 | `result-track:76c38d08e1ebffdbd8ae33d59afdb752eff5cf084b0ec08e3f6343157c619eab` |
| 63 | `lemma` | [_root_.GRWTSK.Topology.AlgebraicTopology.HasHomotopyCofiber.Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.Homotopy.map_eq_of_inverts_homotopyEquivalences](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/declarations/root-grwtsk-topology-algebraictopology-hashomotopycofiber-variant9633531--29a6a3f6236e3a051e41faac.md) | 555 | `result-track:29a6a3f6236e3a051e41faac3f72109c2f77dda274099cefb748290a2685a4ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

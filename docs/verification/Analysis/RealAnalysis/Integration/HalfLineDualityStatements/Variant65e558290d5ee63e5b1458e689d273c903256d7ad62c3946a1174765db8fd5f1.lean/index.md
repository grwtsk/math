# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineDualityStatements.Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "455bc294cc3d3d3871ed1cb28cbbc2c909a41002",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `455bc294cc3d3d3871ed1cb28cbbc2c909a41002`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/fullh--1937028b18d91a72a36ac138.md) | 25 | `declaration-track:1937028b18d91a72a36ac138566312eb8764a4ff431f443038e4a34377b41009` |
| 2 | `def` | [zeroExtensionFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextensionfunction--3e26e82050aaaeacdd24a835.md) | 27 | `declaration-track:3e26e82050aaaeacdd24a835bb6dc1be5a81da31418bbd55b875d742e9a6abc3` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextensionfunction-memlp--9f66fd7386e2836fb7ff2c82.md) | 29 | `result-track:9f66fd7386e2836fb7ff2c82b0656bca16a75c5711c31f6e5225e2be7f5ae17d` |
| 4 | `def` | [zeroExtensionVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextensionvector--da10e4a481a500ec26afa5fa.md) | 33 | `declaration-track:da10e4a481a500ec26afa5fa48a9fe5078df8459f0afff2a29ea0cdf1032961c` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextensionvector-ae--8e6a0dd742665b7bb5ac8e2c.md) | 36 | `result-track:8e6a0dd742665b7bb5ac8e2ce8e252100618000370e943c3854598491329fb07` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextensionvector-norm--1136e2ab18f24e1c377b67d1.md) | 40 | `result-track:1136e2ab18f24e1c377b67d18504a2151101ae8315fa95fe7a3695cdd5a88f50` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextensionvector-add--6456cb7e95cbb668533f9923.md) | 45 | `result-track:6456cb7e95cbb668533f9923efc22d6acaa04d19fa2bec6882774b9f25af7e69` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextensionvector-smul--982ac8722a56fbad32280fcd.md) | 57 | `result-track:982ac8722a56fbad32280fcd8bb8ae3eb20f443656da58a38ffa20b27ca54297` |
| 9 | `def` | [zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextension--6d7058bd34b0be742d5ddab6.md) | 70 | `declaration-track:6d7058bd34b0be742d5ddab6a7797d3d9a6efa0e7e0ccdadfa2a4c4f915fad38` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextension-ae--3510d389c37f15c5e7e3dca5.md) | 76 | `result-track:3510d389c37f15c5e7e3dca5285735429c99b27cc77f1a36f3fc71cd860f0cfd` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextension-norm--c3909b98c4cf5ef46c7bbc4f.md) | 80 | `result-track:c3909b98c4cf5ef46c7bbc4f4b7705c11f90718260590dafdd21168fcd67565a` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextension-ae-halfline--a1d43089302d19ecaab7b874.md) | 83 | `result-track:a1d43089302d19ecaab7b8749646acd79181f9e4c7b294e457c863407ac63560` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextension-ae-nonpositive--4d10ca34e40f2ba8ff16553b.md) | 89 | `result-track:4d10ca34e40f2ba8ff16553babcaff95796febb53d0e6a6be615a20dab5facd7` |
| 14 | `def` | [restriction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restriction--f68c670321c73a14cc3556a6.md) | 98 | `declaration-track:f68c670321c73a14cc3556a68e629fb642a482f8b7adb433e52420088693f7d2` |
| 15 | `theorem` | [restriction_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restriction-ae--3bb57f72e7c9f8b69e3e9bd4.md) | 100 | `result-track:3bb57f72e7c9f8b69e3e9bd4e6eca535c46ef3dd7bf70336daa531f2aca6909f` |
| 16 | `theorem` | [restriction_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restriction-norm-le--133dc413f2590b7b46659afe.md) | 103 | `result-track:133dc413f2590b7b46659afe50c8f929f684574d171718ec1008f3cc395dc601` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restriction-opnorm-le--04e99c90331541da6421db88.md) | 106 | `result-track:04e99c90331541da6421db88f01bda3e65f9439449f12a8d3a8d71ab7880bc97` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restriction-zeroextension--d1bd6f8c49122e5a51fcf1b2.md) | 111 | `result-track:d1bd6f8c49122e5a51fcf1b2554401e015f5970a5a851d4155bc6374279d1c8e` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restriction-comp-zeroextension--538485db05b6343ce6e2950c.md) | 114 | `result-track:538485db05b6343ce6e2950c132b32ce9c22052e39e8a30c43a66e5912081591` |
| 20 | `theorem` | [restricted_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restricted-inner-integrable--68e2fe7c164daac8b0e45ccd.md) | 136 | `result-track:68e2fe7c164daac8b0e45ccd69e3c5d96c42b851063afa3a3c1e770995f9bc55` |
| 21 | `theorem` | [extended_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/extended-inner-integrable--a367b4bb0d1c6a136a8a26bd.md) | 142 | `result-track:a367b4bb0d1c6a136a8a26bda8b28e87de21946ad2506064f1588b77635985a3` |
| 22 | `theorem` | [inner_restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/inner-restriction-zeroextension--4c651bc9e70a402ac5aeb2ea.md) | 146 | `result-track:4c651bc9e70a402ac5aeb2eaa632f75491e2aa96eaa6aa31d6baddc8db94f6dc` |
| 23 | `theorem` | [zeroExtension_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/zeroextension-adjoint--8fe5dd2d7cfd8a679af11cd1.md) | 164 | `result-track:8fe5dd2d7cfd8a679af11cd15f6096c1848662fbe7f8ceaf37662d99334db440` |
| 24 | `theorem` | [restriction_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/restriction-adjoint--884bcb596e2d1598eb268bcf.md) | 169 | `result-track:884bcb596e2d1598eb268bcfb121e9cdb4f4df584fff9e8041913e502f67e309` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/example--c33f7b887dd3e2e25e8d14ba.md) | 180 | `declaration-track:c33f7b887dd3e2e25e8d14baee76a22273b2f2823b27d8bbdb17b13480aaf97a` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/example--9b6570a1b67cadeb0b17bd56.md) | 183 | `declaration-track:9b6570a1b67cadeb0b17bd5699edbf1bbd1575bb15f6b00efb3959cd23fd3e86` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/example--e61384513013630ffe9b7085.md) | 186 | `declaration-track:e61384513013630ffe9b70859c69ac14c91cf83967f308527bbcd7b6486d20ba` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/example--bbe60eb031e5c36797f9a3e0.md) | 189 | `declaration-track:bbe60eb031e5c36797f9a3e05a8aa566394dfe9dbd71c57410df51e6cda594a5` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Variant65e558290d5ee63e5b1458e689d273c903256d7ad62c3946a1174765db8fd5f1.lean/declarations/example--a4d7d7d0c72ea63bac60c020.md) | 190 | `declaration-track:a4d7d7d0c72ea63bac60c0201b2e506913fe7dc223316de0b802bcde8259556d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

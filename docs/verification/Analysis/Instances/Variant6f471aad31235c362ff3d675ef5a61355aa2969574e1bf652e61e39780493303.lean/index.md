# Verification target: GRWTSK.Analysis.Instances.Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78f5b9b963acd970e84712bafd7e53553abc7e12",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/index.md) · [Full source](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78f5b9b963acd970e84712bafd7e53553abc7e12`.

Source path: `GRWTSK/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Restrict` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cfcₙAux](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-aux--0b6321a58b52798b246fb04c.md) | 78 | `declaration-track:0b6321a58b52798b246fb04c4e21ec70e37f8f88cc8e80d3667bf04057c7c1b3` |
| 2 | `lemma` | [cfcₙAux_id](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-aux-id--776eb201407e56067807f27e.md) | 83 | `result-track:776eb201407e56067807f27e18005279645600db51f2ec4a4be44bc51aa399f8` |
| 3 | `lemma` | [isClosedEmbedding_cfcₙAux](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/isclosedembedding-cfc-aux--7be4a4614031107318c465e1.md) | 86 | `result-track:7be4a4614031107318c465e181c046986e4b2b9f60435259c7af9eebe370a8be` |
| 4 | `lemma` | [spec_cfcₙAux](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/spec-cfc-aux--a69d0c2c653da83de976567c.md) | 94 | `result-track:a69d0c2c653da83de976567c7065f7670bc9b73ca537dfd37965862492c05ea9` |
| 5 | `lemma` | [cfcₙAux_mem_range_inr](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-aux-mem-range-inr--3de923bf202a372b1a176863.md) | 106 | `result-track:3de923bf202a372b1a17686303dd5e231ada37e40305ca4b75c8483551f902d8` |
| 6 | `theorem` | [RCLike.nonUnitalContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/rclike-nonunitalcontinuousfunctionalcalculus--31307b9eab02f662579f308a.md) | 127 | `result-track:31307b9eab02f662579f308a0528bfe535b2422af84818c2e464067aca6001b1` |
| 7 | `lemma` | [isSelfAdjoint_iff_isStarNormal_and_quasispectrumRestricts](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/isselfadjoint-iff-isstarnormal-and-quasispectrumrestricts--d1f0bd68afc63559b2fc76e7.md) | 162 | `result-track:d1f0bd68afc63559b2fc76e700d4b5eb804988dc54c9c0a3ff76548c6dfd9dd0` |
| 8 | `lemma` | [QuasispectrumRestricts.isSelfAdjoint](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/quasispectrumrestricts-isselfadjoint--2f8c6e8713b7491969754d5c.md) | 180 | `result-track:2f8c6e8713b7491969754d5c6b0890724da39896fb74d46e8681980eab7fa5b9` |
| 9 | `instance` | [IsSelfAdjoint.instNonUnitalContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/isselfadjoint-instnonunitalcontinuousfunctionalcalculus--cdd7fc59c58caa9bc6b425a6.md) | 184 | `declaration-track:cdd7fc59c58caa9bc6b425a6bfc698ec01d1780d17404817851ae4b5e27e2ead` |
| 10 | `lemma` | [isSelfAdjoint_iff_isStarNormal_and_spectrumRestricts](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/isselfadjoint-iff-isstarnormal-and-spectrumrestricts--f7b04465ee3931c53f1e6d2f.md) | 206 | `result-track:f7b04465ee3931c53f1e6d2f0b834ba5741269a88f35dad8c6bcb3605b2cfbc9` |
| 11 | `lemma` | [IsSelfAdjoint.spectrumRestricts](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/isselfadjoint-spectrumrestricts--464ab16337ff624a458bfdf3.md) | 220 | `result-track:464ab16337ff624a458bfdf3722ab7e96edac79869bc27e535e9d5a4851382e1` |
| 12 | `lemma` | [SpectrumRestricts.isSelfAdjoint](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/spectrumrestricts-isselfadjoint--7a4bef1db0fd971079461298.md) | 226 | `result-track:7a4bef1db0fd9710794612982491e84feb1afe906bdddb4027e662ea1cd6be76` |
| 13 | `instance` | [IsSelfAdjoint.instContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/isselfadjoint-instcontinuousfunctionalcalculus--0d02fe341fbff3ec93976575.md) | 230 | `declaration-track:0d02fe341fbff3ec939765758e1c42b532b3f4946c94376ea4f878de8ee910de` |
| 14 | `lemma` | [IsSelfAdjoint.spectrum_nonempty](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/isselfadjoint-spectrum-nonempty--2fa73d534695851e1eec0a66.md) | 236 | `result-track:2fa73d534695851e1eec0a668203d2b4a0e3bbcdae5e69120c8ab8b86a93ee49` |
| 15 | `lemma` | [CFC.exists_sqrt_of_isSelfAdjoint_of_quasispectrumRestricts](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-exists-sqrt-of-isselfadjoint-of-quasispectrumrestricts--914aba0ebd6c55050e3c081a.md) | 249 | `result-track:914aba0ebd6c55050e3c081a907f7a4eaa9a1c0069dbf2100aa6c61b6f102975` |
| 16 | `lemma` | [nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/nonneg-iff-isselfadjoint-and-quasispectrumrestricts--e46a6c180689838377b50183.md) | 271 | `result-track:e46a6c180689838377b50183d65f708513f11baa759a45bcc93034be3dcf01f2` |
| 17 | `instance` | [Nonneg.instNonUnitalContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/nonneg-instnonunitalcontinuousfunctionalcalculus--307abca33352b78849ed0760.md) | 279 | `declaration-track:307abca33352b78849ed076074886ac9ecc2875f57e307edffc95c400f9f46b2` |
| 18 | `lemma` | [NNReal.spectrum_nonempty](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/nnreal-spectrum-nonempty--c9a1604f7977629380827f04.md) | 286 | `result-track:c9a1604f7977629380827f04a67712ecda91b993d79d6b0bc5794f2cb873f886` |
| 19 | `lemma` | [CFC.exists_sqrt_of_isSelfAdjoint_of_spectrumRestricts](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-exists-sqrt-of-isselfadjoint-of-spectrumrestricts--f3e3c3559916db5569c03a7d.md) | 297 | `result-track:f3e3c3559916db5569c03a7d355f672bb1ecda0c52ac2028e48f77a80724aa35` |
| 20 | `lemma` | [nonneg_iff_isSelfAdjoint_and_spectrumRestricts](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/nonneg-iff-isselfadjoint-and-spectrumrestricts--37f5cb37d05b74114ce3570b.md) | 317 | `result-track:37f5cb37d05b74114ce3570b667cbb609f74b571e7539ed31e5966d4616c2e7d` |
| 21 | `instance` | [Nonneg.instContinuousFunctionalCalculus](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/nonneg-instcontinuousfunctionalcalculus--24c6b2bc960c99beb7dd5e96.md) | 325 | `declaration-track:24c6b2bc960c99beb7dd5e9610bd174956d6b8d22189fe7379a30b8ebfceed2f` |
| 22 | `lemma` | [cfcHom_real_eq_restrict](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfchom-real-eq-restrict--b24b3fd4d9592441e33db35e.md) | 340 | `result-track:b24b3fd4d9592441e33db35ecb4b2dc56b459d65aa9af81a33a856c97fcfdedb` |
| 23 | `lemma` | [cfc_real_eq_complex](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-real-eq-complex--b7e49fde4701c50fe89f656e.md) | 347 | `result-track:b7e49fde4701c50fe89f656e8a2a0f1690b255237ce5cda61278c77cbdc1439a` |
| 24 | `lemma` | [cfcₙHom_real_eq_restrict](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-hom-real-eq-restrict--e5f067f1fbefd6e52701ae1e.md) | 361 | `result-track:e5f067f1fbefd6e52701ae1e3f5b850834fad8c43258a58f5cae3f475ccbc8fd` |
| 25 | `lemma` | [cfcₙ_real_eq_complex](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-real-eq-complex--779bff40bfe9495f43ec38af.md) | 367 | `result-track:779bff40bfe9495f43ec38af202eada55c6dcb1ccedb3ce7cf601a28e7d4628c` |
| 26 | `lemma` | [cfcHom_nnreal_eq_restrict](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfchom-nnreal-eq-restrict--3b1a90f6091124a1cebb3429.md) | 384 | `result-track:3b1a90f6091124a1cebb342935a76e3c67e2b7651179422611e85a26f243a461` |
| 27 | `lemma` | [cfc_nnreal_eq_real](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-nnreal-eq-real--395776ce186cff85eceab273.md) | 389 | `result-track:395776ce186cff85eceab2735409e1ea58898de794f6e2ac9811d3b2b61c1941` |
| 28 | `lemma` | [cfcₙHom_nnreal_eq_restrict](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-hom-nnreal-eq-restrict--a9f12009a898cd1154c8b10d.md) | 406 | `result-track:a9f12009a898cd1154c8b10d759cffefe1d7cbc7cff623107091da464cae662c` |
| 29 | `lemma` | [cfcₙ_nnreal_eq_real](../../../../mathematics/Analysis/Instances/Variant6f471aad31235c362ff3d675ef5a61355aa2969574e1bf652e61e39780493303.lean/declarations/cfc-nnreal-eq-real--3a804dc17f8991de6d95c80a.md) | 412 | `result-track:3a804dc17f8991de6d95c80a0bea0f32b03c129f891c510c7ee0e8ec39d35edb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

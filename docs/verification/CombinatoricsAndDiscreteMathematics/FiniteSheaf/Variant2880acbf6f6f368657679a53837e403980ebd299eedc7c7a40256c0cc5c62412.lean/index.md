# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSheaf.Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec2824b58974ea424fe1ee1a29b15558daa8e03",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec2824b58974ea424fe1ee1a29b15558daa8e03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.SemanticIdentity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedSite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/certifiedsite--ffada2fdd2b382b9d4a32361.md) | 23 | `declaration-track:ffada2fdd2b382b9d4a323611850eeed4d3f2357688144d654e6e749fca99745` |
| 2 | `structure` | [SiteObject](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/siteobject--0277f46167331293fb47629a.md) | 35 | `declaration-track:0277f46167331293fb47629a1d4d871cecc8481e5d21ffc3acf5b090150f0cd3` |
| 3 | `structure` | [CoverFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/coverfamily--1e19bf683aba21998accb48f.md) | 44 | `declaration-track:1e19bf683aba21998accb48f2d36fa20ade3cb3da16c9e97167cc565a5fcc654` |
| 4 | `structure` | [PresheafData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/presheafdata--5b78b081733062d159a84ec6.md) | 58 | `declaration-track:5b78b081733062d159a84ec61d46a372831d88546eb57bdf46471775d9f4fad9` |
| 5 | `structure` | [CompatibleLocalSections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/compatiblelocalsections--5b569cd0c8a696f542c03d10.md) | 80 | `declaration-track:5b569cd0c8a696f542c03d10186a72c0886c387b675e704755a54c5db8ba3dc3` |
| 6 | `structure` | [SheafData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/sheafdata--62187e4116b029d89bddc58a.md) | 99 | `declaration-track:62187e4116b029d89bddc58a158d868867dd3bf3f028fe555777ed2eb3da5cda` |
| 7 | `def` | [localModelsOfGlobal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/localmodelsofglobal--34ccff2cd8ac40fd1866f057.md) | 136 | `declaration-track:34ccff2cd8ac40fd1866f0578f30000e99a03a571ff88cd21af38d6ff2392726` |
| 8 | `theorem` | [compatible_local_models_glue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/compatible-local-models-glue--7843ea3559aefaaa3c13bffd.md) | 173 | `result-track:7843ea3559aefaaa3c13bffdc5b83de55ddaf3c66c1524a399a3807798b45fb2` |
| 9 | `theorem` | [glue_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/glue-deterministic--8896e5371a0449f5f8aa596c.md) | 190 | `result-track:8896e5371a0449f5f8aa596c5f204e83f611b9b4946227a1cb63586d2b98f4f6` |
| 10 | `theorem` | [global_section_iff_sat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/global-section-iff-sat--a688abd6511c0f2330589f6f.md) | 214 | `result-track:a688abd6511c0f2330589f6ff7f92c32173db4a442dffda6dcf088da8804c7b3` |
| 11 | `structure` | [DeltaRingSheaf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/deltaringsheaf--60555df5a311e03b521ad2fd.md) | 232 | `declaration-track:60555df5a311e03b521ad2fd14e77ff49a140326dca08e7bacf785c3e9ea3fd5` |
| 12 | `structure` | [MetricModuleSheaf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/metricmodulesheaf--9859037fcadfdf30c7ecc8b9.md) | 251 | `declaration-track:9859037fcadfdf30c7ecc8b976dd7a88285f19e31e77eb5b39b4303fb2e9c775` |
| 13 | `structure` | [TensorSheaf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/tensorsheaf--832f7a806712ceac96ca3d55.md) | 292 | `declaration-track:832f7a806712ceac96ca3d5552e23393dd33df1c61212fa744ba25ea866855e2` |
| 14 | `structure` | [TensorSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/tensorsection--2bd8a051b17acf2598d1a490.md) | 296 | `declaration-track:2bd8a051b17acf2598d1a490e6e436fe4bbeee9a87fadeadbb4ef843ec01d0ed` |
| 15 | `def` | [tensorRepresentation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/tensorrepresentation--fe693e8bd019ad0454ef358f.md) | 304 | `declaration-track:fe693e8bd019ad0454ef358f98d9a7265eede0006f08da73f263c6755509b657` |
| 16 | `def` | [restrictTensorSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/restricttensorsection--dfbc2f4d052d4115dd8c6b55.md) | 315 | `declaration-track:dfbc2f4d052d4115dd8c6b55b5bdae926b7b6229f349ed60a75aa207c917c9b8` |
| 17 | `theorem` | [restrictTensorSection_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/restricttensorsection-exact--bac6f31615c98cb6be1b8778.md) | 328 | `result-track:bac6f31615c98cb6be1b8778a39760e53b3d0e91ec00d96d55c2e912e1ec5e2a` |
| 18 | `theorem` | [restrictTensorSection_relative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/restricttensorsection-relative--06592eddb6751cfe461452bb.md) | 339 | `result-track:06592eddb6751cfe461452bbdd91970eba468fd006091254106af24251a2d116` |
| 19 | `def` | [glueLocalModels](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/gluelocalmodels--54623bf8233175a086c52bef.md) | 350 | `declaration-track:54623bf8233175a086c52bef5527e4488ede53192f660ca962b5ba402e24b696` |
| 20 | `theorem` | [glueLocalModels_restricts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/declarations/gluelocalmodels-restricts--bc24a0cff9aadd5cd920f2ad.md) | 360 | `result-track:bc24a0cff9aadd5cd920f2ad77152d8e62bd7c447fa2936400f738693e40d681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

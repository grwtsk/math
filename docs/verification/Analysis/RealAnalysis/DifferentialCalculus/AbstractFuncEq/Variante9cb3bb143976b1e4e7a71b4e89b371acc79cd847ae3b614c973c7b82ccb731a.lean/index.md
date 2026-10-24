# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AbstractFuncEq.Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feeb380c12bced03b1cdee46bf4c28c7329c7338",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feeb380c12bced03b1cdee46bf4c28c7329c7338`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MellinTransform` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeakFEPair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/weakfepair--b343e2e4d19d9651a50a3f30.md) | 86 | `declaration-track:b343e2e4d19d9651a50a3f30212779cfebe0cfb04fc61d1044e4acc64cfdedc5` |
| 2 | `structure` | [StrongFEPair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/strongfepair--242a4f98c3fedbaed7406a79.md) | 105 | `declaration-track:242a4f98c3fedbaed7406a791587fa3dd0c31e31eed99039ece56187d0b157df` |
| 3 | `lemma` | [WeakFEPair.h_feq'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/weakfepair-h-feq--7e48708da1c573bb495bf928.md) | 112 | `result-track:7e48708da1c573bb495bf92870c55f2778e4d031163af67d6b8d6e76a5c361da` |
| 4 | `def` | [WeakFEPair.symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/weakfepair-symm--ba6d04baeb65c4585ec2e28f.md) | 120 | `declaration-track:ba6d04baeb65c4585ec2e28f008ba8b14e9db81136bbf0f95202a6c47f30ce8b` |
| 5 | `def` | [StrongFEPair.symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/strongfepair-symm--b4c6f525f801f0c7cf85e5ce.md) | 136 | `declaration-track:b4c6f525f801f0c7cf85e5ce7217e4dfef2f6fe81cb93d04221619e8a6d65f45` |
| 6 | `lemma` | [hf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hf-zero--4dd9aaa42701b286a651c830.md) | 150 | `result-track:4dd9aaa42701b286a651c8303ffc0e71e954a8721abba877cc3c3166c42c9525` |
| 7 | `lemma` | [hf_zero'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hf-zero--ffa401e29191d897acd387fd.md) | 173 | `result-track:ffa401e29191d897acd387fd4050fae30ed3d54fa892ada3b60fa1b4788069da` |
| 8 | `lemma` | [hf_top'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hf-top--87741cc76463c04c92919645.md) | 193 | `result-track:87741cc76463c04c92919645440542e912d4b7e8cad2902a54922eea92384a1d` |
| 9 | `lemma` | [hf_zero'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hf-zero--d6199911c7ea597254e3e407.md) | 197 | `result-track:d6199911c7ea597254e3e407b5b8de52cc59f13753203168300707a9fe33e7a0` |
| 10 | `def` | [Λ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/anonymous--f95c8eae972783c442512bc0.md) | 205 | `declaration-track:f95c8eae972783c442512bc0eb1ec9730f4bd12b6ff1f56b8d9a77b6ce9e14d7` |
| 11 | `theorem` | [hasMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hasmellin--974dc856c204ca74f4a8bfd2.md) | 208 | `result-track:974dc856c204ca74f4a8bfd2197050e4350c498c54fc24ea51eaa3576dafdeba` |
| 12 | `lemma` | [Λ_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/eq--d066328cfd0ecea75addcc84.md) | 213 | `result-track:d066328cfd0ecea75addcc84779eb11e4181a48bb4f2d3bf01e7e0e3c2da01ba` |
| 13 | `lemma` | [symm_Λ_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/symm-eq--bad99da99968f74409732f32.md) | 215 | `result-track:bad99da99968f74409732f325ec8bee6ca017da4833ea726f4329a9433932fc0` |
| 14 | `theorem` | [differentiable_Λ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/differentiable--e80e4c23e89099e397884840.md) | 218 | `result-track:e80e4c23e89099e397884840da55125305f1f342ba0f3ec96d5123319992573f` |
| 15 | `theorem` | [functional_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/functional-equation--1c5c7fdc3d03e532832ddd71.md) | 227 | `result-track:1c5c7fdc3d03e532832ddd71be011d19be088fd972317816948f6cbef14128f5` |
| 16 | `def` | [f_modif](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/f-modif--1636b49d9fdea349e3bb977e.md) | 263 | `declaration-track:1636b49d9fdea349e3bb977ebb547df9279769943e9b7cfc6410b847882bdbdc` |
| 17 | `def` | [g_modif](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/g-modif--b5e562c126c6a8a3f932e7b2.md) | 268 | `declaration-track:b5e562c126c6a8a3f932e7b2e67dda23a1c29b9005c1f5b4681a0f37e2a782f2` |
| 18 | `lemma` | [hf_modif_int](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hf-modif-int--eac3c206d29566e7e54278b9.md) | 272 | `result-track:eac3c206d29566e7e54278b97ad474ac2e4d865d848fac3290dc1d44609ff77e` |
| 19 | `lemma` | [hf_modif_FE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hf-modif-fe--963596f3fc470fbeacf29900.md) | 291 | `result-track:963596f3fc470fbeacf29900c214faec9169927e971557992e75d3784541859d` |
| 20 | `def` | [toStrongFEPair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/tostrongfepair--6d6f885f207bb29aed064620.md) | 311 | `declaration-track:6d6f885f207bb29aed06462007c5b00fde786de8c4bae9b1d1659eda1d8d3d32` |
| 21 | `lemma` | [f_modif_aux1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/f-modif-aux1--8fc50d182a6d8ffcd25f512d.md) | 338 | `result-track:8fc50d182a6d8ffcd25f512d8e42ecead635dda3ab44b21bf07d255b62029cb5` |
| 22 | `lemma` | [f_modif_aux2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/f-modif-aux2--cc9f0be93e4a3bf1bc1f7fc0.md) | 356 | `result-track:cc9f0be93e4a3bf1bc1f7fc0dfcc4f4f7165ea8d4aab216f717b85df96895b0c` |
| 23 | `def` | [Λ₀](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/anonymous--65a5ae5f39201d003d480473.md) | 398 | `declaration-track:65a5ae5f39201d003d480473a37ab7bac95cea7e9bee42b4c7d64cd466b1a8be` |
| 24 | `def` | [Λ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/anonymous--a0407121a960dc5f131e03ab.md) | 401 | `declaration-track:a0407121a960dc5f131e03ab8d1b39f7b65698f61e5246a1b4924429de2eab39` |
| 25 | `lemma` | [Λ₀_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/eq--3832d5306360ebe2d2e44e31.md) | 403 | `result-track:3832d5306360ebe2d2e44e31a57dd4ab52f3fa647c131039d5397aeaafef8ad5` |
| 26 | `lemma` | [symm_Λ₀_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/symm-eq--b2c893fd9310831d812350b9.md) | 407 | `result-track:b2c893fd9310831d812350b9a88944a23478feb5f1372ffc39f999908d425325` |
| 27 | `theorem` | [differentiable_Λ₀](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/differentiable--d665563854752c632687b0e0.md) | 412 | `result-track:d665563854752c632687b0e033197b5bd8f88b0c40b7f64c1910a415db4e632b` |
| 28 | `theorem` | [differentiableAt_Λ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/differentiableat--0b9d6326f4d1c3b33c0f5924.md) | 414 | `result-track:0b9d6326f4d1c3b33c0f5924d629c4280787b160584bbb22632c74118ec0d718` |
| 29 | `theorem` | [hasMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/hasmellin--e7e98999cb22af0063e31146.md) | 427 | `result-track:e7e98999cb22af0063e311460f31d184232ea4ebf16f067a214116faff44c785` |
| 30 | `theorem` | [functional_equation₀](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/functional-equation--6c506f300faeb92c5e770dd2.md) | 442 | `result-track:6c506f300faeb92c5e770dd27f9ac8030639872d18b9bcd298df1a8fe971e90a` |
| 31 | `theorem` | [functional_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/functional-equation--c3dd1e88b3facefaaf16d862.md) | 446 | `result-track:c3dd1e88b3facefaaf16d8625c1c65eda25da0fcc625ba25d44d5d4a0b4e7332` |
| 32 | `theorem` | [Λ_residue_k](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/residue-k--0cd447cfe55322fdee88ba05.md) | 452 | `result-track:0cd447cfe55322fdee88ba057837354aab602355733ae039b4d56fa29c85b62d` |
| 33 | `theorem` | [Λ_residue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/declarations/residue-zero--c5bb76698da8fcc934c3ed0c.md) | 468 | `result-track:c5bb76698da8fcc934c3ed0c610a05d1aa3e4535f849a8dd0ddb9fea46e32498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

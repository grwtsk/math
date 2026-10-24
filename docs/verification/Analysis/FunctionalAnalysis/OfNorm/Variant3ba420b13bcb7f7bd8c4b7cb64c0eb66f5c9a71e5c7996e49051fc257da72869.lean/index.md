# Verification target: GRWTSK.Analysis.FunctionalAnalysis.OfNorm.Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "188f67964a30c89d97e6a54167351378bf6f5b6d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `188f67964a30c89d97e6a54167351378bf6f5b6d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean.json)

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
| 1 | `class` | [InnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/innerproductspaceable--83e3ac1f4952b0e0f16b9a95.md) | 70 | `declaration-track:83e3ac1f4952b0e0f16b9a95957c79b737c964dead0b84129309a44eca0ef3d2` |
| 2 | `theorem` | [InnerProductSpace.toInnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/innerproductspace-toinnerproductspaceable--ff9186a8aca272632619e318.md) | 76 | `result-track:ff9186a8aca272632619e318ea287a7b57feae84d141dae12d89664bb199713d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/instance--dbd444104f7f673f58a6c2ab.md) | 81 | `declaration-track:dbd444104f7f673f58a6c2ab43e75ad3317bc6ac8fac1d06ea000cf551d12c0f` |
| 4 | `def` | [inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/inner--ae01579951646ac45107f212.md) | 91 | `declaration-track:ae01579951646ac45107f2124396774aa012d2564ef84292bcaa167de9f3ea78` |
| 5 | `def` | [innerProp'](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/innerprop--ceebb926e7ebf329ea24c339.md) | 103 | `declaration-track:ceebb926e7ebf329ea24c339bd92a2a551af39de3b4d76abc29c2c65ea06a693` |
| 6 | `theorem` | [_root_.Continuous.inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/root-continuous-inner--6ad738ed4d1f01b9d47829ce.md) | 110 | `result-track:6ad738ed4d1f01b9d47829ce4cfe04539733faf3019fea00a3e2ef43a132d7d0` |
| 7 | `theorem` | [inner_.norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/inner-norm-sq--ede306fe8c2e007cc76ff936.md) | 117 | `result-track:ede306fe8c2e007cc76ff936f0dac16ddc3c5f3e7c20f13b8bdf2c6c356d18fe` |
| 8 | `theorem` | [inner_.conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/inner-conj-symm--44d8465b183739f942e38b3a.md) | 127 | `result-track:44d8465b183739f942e38b3ae4da2fc8d5de6c47217b98bac4d30be78f71a0af` |
| 9 | `theorem` | [add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/add-left--a2159c91aafcf40633e38c6b.md) | 147 | `result-track:a2159c91aafcf40633e38c6b7f02d3e48e74e2dbb18f1592187da8feebd04f27` |
| 10 | `theorem` | [rat_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/rat-prop--125fda7a7988b1cfba4c29f4.md) | 162 | `result-track:125fda7a7988b1cfba4c29f4bc9d08be626272fb283d02296e8806c9ee528cc2` |
| 11 | `theorem` | [real_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/real-prop--309d3fc71d71c29b82e53a43.md) | 169 | `result-track:309d3fc71d71c29b82e53a438d76f6ee5cccdccca5ea5e2007c47f51e144375f` |
| 12 | `theorem` | [I_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/i-prop--5b74e359afd5719cd404d1c7.md) | 178 | `result-track:5b74e359afd5719cd404d1c701ad36663dc94b0b832f3b89991a21b8f205819e` |
| 13 | `theorem` | [innerProp](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/innerprop--1b24d174b499e9846f8e9cbc.md) | 192 | `result-track:1b24d174b499e9846f8e9cbccdca9f5dd39a573a5eb67d7c79c375e9be15bd5d` |
| 14 | `def` | [InnerProductSpace.ofNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/innerproductspace-ofnorm--27d409283c0a685233921e50.md) | 207 | `declaration-track:27d409283c0a685233921e506f9d85205821eef0d6bf0a0e4eefe7d49a8d4702` |
| 15 | `theorem` | [nonempty_innerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/nonempty-innerproductspace--6d6c37c08bc013c38909b897.md) | 224 | `result-track:6d6c37c08bc013c38909b8976b0d8c2ad2fd63ee7bf533dfcd559cfe4fffc999` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant3ba420b13bcb7f7bd8c4b7cb64c0eb66f5c9a71e5c7996e49051fc257da72869.lean/declarations/instance--c4e47371a75ab82470e9e162.md) | 236 | `declaration-track:c4e47371a75ab82470e9e1624d9f041735d5e1076dc31acac3a1e9f5eff627d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

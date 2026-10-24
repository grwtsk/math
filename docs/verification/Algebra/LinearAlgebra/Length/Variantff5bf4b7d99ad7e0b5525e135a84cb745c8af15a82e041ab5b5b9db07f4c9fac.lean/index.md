# Verification target: GRWTSK.Algebra.LinearAlgebra.Length.Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce4267e1ee64cc3512e8131b8e1eedee64a949b2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce4267e1ee64cc3512e8131b8e1eedee64a949b2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.KrullDimension` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteLength` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Module.length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length--472096a8b7de6e133b1303c9.md) | 36 | `declaration-track:472096a8b7de6e133b1303c98a125cda5b1130206931d2572261d52b2f39f54e` |
| 2 | `lemma` | [Module.coe_length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-coe-length--c1e05cb370e77ebc04af4120.md) | 39 | `result-track:c1e05cb370e77ebc04af412091d2473fb5e402d44d1ead061ab3dba8b2dc1775` |
| 3 | `lemma` | [Module.length_eq_height](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-height--51919987f1d80565fa175554.md) | 43 | `result-track:51919987f1d80565fa175554566be5f0ebff2bf642a49d2d92ef038d26530bab` |
| 4 | `lemma` | [Module.length_eq_coheight](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-coheight--686e195846efd33c30687b29.md) | 47 | `result-track:686e195846efd33c30687b29c7eb361e78d406645d0f342c9be35d430132c1e4` |
| 5 | `lemma` | [Module.length_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-zero-iff--9bb022db23687bc52f2eab20.md) | 53 | `result-track:9bb022db23687bc52f2eab20300ee0ccc740e7336abf383dc681e02809e83a5b` |
| 6 | `lemma` | [Module.length_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-zero--584385e7e5691df4cb8a7e9e.md) | 58 | `result-track:584385e7e5691df4cb8a7e9eab955f66bf9bb87d3add68119182c1200dd8985b` |
| 7 | `lemma` | [Module.length_eq_zero_of_subsingleton_ring](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-zero-of-subsingleton-ring--96a8674bc277cd693407a724.md) | 62 | `result-track:96a8674bc277cd693407a724ded1df60a904aa79544e807c8579735a2720795e` |
| 8 | `lemma` | [Module.length_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-pos-iff--8f5ffee005da491f523032f5.md) | 66 | `result-track:8f5ffee005da491f523032f5dd8b7c317ee682292cefcb4900c73fc05d93d465` |
| 9 | `lemma` | [Module.length_pos](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-pos--bf8c33cbbe0e580ae68c4607.md) | 69 | `result-track:bf8c33cbbe0e580ae68c4607da7b6216b0331c988ca552131d8f575d4669cddf` |
| 10 | `lemma` | [Module.length_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-compositionseries--7f6233bcdda6f79961beeb8c.md) | 72 | `result-track:7f6233bcdda6f79961beeb8c6d569296c957084f06054a9a756ec7d4b719340d` |
| 11 | `lemma` | [Module.length_eq_top_iff_infiniteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-top-iff-infinitedimensionalorder--b588402e182f29f37377c777.md) | 90 | `result-track:b588402e182f29f37377c7775938b9fd5f7c69b203049e9c502c9cc1365876fe` |
| 12 | `lemma` | [Module.length_ne_top_iff_finiteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-ne-top-iff-finitedimensionalorder--ac71ddcd86daa6fd0a57df7a.md) | 95 | `result-track:ac71ddcd86daa6fd0a57df7aa9bedd42ed0b439826d9f6edb929d11c6201177e` |
| 13 | `lemma` | [Module.length_ne_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-ne-top-iff--72bcdfdcce7924e046b0c47e.md) | 99 | `result-track:72bcdfdcce7924e046b0c47e65c4b012a82b2958fe37ae59f756144799e31a61` |
| 14 | `lemma` | [Module.length_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-ne-top--8621650e4aa8003e6a1ea924.md) | 108 | `result-track:8621650e4aa8003e6a1ea924e38a83719ff93edb279469f4e60682ca3df31b6e` |
| 15 | `lemma` | [Module.length_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-submodule--8d973a0edff00fbe6470a447.md) | 112 | `result-track:8d973a0edff00fbe6470a44796477c46ab355176fff11f7427373a9a69e44f2e` |
| 16 | `lemma` | [Module.length_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-quotient--807f7c5c5c9a1d71f0a5b7a6.md) | 117 | `result-track:807f7c5c5c9a1d71f0a5b7a6186e254bcc1ab80f2bb40ac2e91a489746df6dd9` |
| 17 | `lemma` | [LinearEquiv.length_eq](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/linearequiv-length-eq--8bc93a537e277cee4cab2960.md) | 123 | `result-track:8bc93a537e277cee4cab2960aee17e770d09e8a5c847ac05874892d16130b825` |
| 18 | `lemma` | [Module.length_bot](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-bot--9d9d7f4daded53ab5c196f8c.md) | 129 | `result-track:9d9d7f4daded53ab5c196f8c2a4f0d52990504b10922d19c86a73e49b6d7ccd3` |
| 19 | `lemma` | [Module.length_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-top--c9dafb456e98396d444c92cc.md) | 133 | `result-track:c9dafb456e98396d444c92cc534e1c6adc277b34568db23bb29b78311a76cbb2` |
| 20 | `lemma` | [Submodule.height_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/submodule-height-lt-top--4d0d938b62cf20032f0e6a23.md) | 137 | `result-track:4d0d938b62cf20032f0e6a2360cda3a70c65df45a73e67ea387bb8a5431c8fc3` |
| 21 | `lemma` | [Submodule.height_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/submodule-height-strictmono--c3b76ebe23f2d5652dccd594.md) | 141 | `result-track:c3b76ebe23f2d5652dccd5949fc4804ed77354627b8768b5e5269016ddc32820` |
| 22 | `lemma` | [Submodule.length_lt](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/submodule-length-lt--4c5bec7e34b337c11fe7c454.md) | 145 | `result-track:4c5bec7e34b337c11fe7c4545ec52f9d1a274577cce9412fba1b76cd011878a7` |
| 23 | `lemma` | [Module.length_eq_add_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-add-of-exact--3e4fbaf67cdcb1580ad52d15.md) | 155 | `result-track:3e4fbaf67cdcb1580ad52d15d44e87f68f7dfc096fb11f028989f3ce2815ca77` |
| 24 | `lemma` | [Module.length_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-le-of-injective--4630b3728780c79ce06e1621.md) | 182 | `result-track:4630b3728780c79ce06e16215f8f1677fca3597187804ba98318bc91e88ceab9` |
| 25 | `lemma` | [Module.length_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-le-of-surjective--7178177dcf3fc7e87f706186.md) | 188 | `result-track:7178177dcf3fc7e87f7061860d4e1a3b83c0f0317b3a2c65ea9d2bcfd31f10bf` |
| 26 | `lemma` | [Module.length_prod](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-prod--8913c50ebb7bd3f14d07f48d.md) | 195 | `result-track:8913c50ebb7bd3f14d07f48dd42dba88260bd9b4772111ba2194d7d0ec84e171` |
| 27 | `lemma` | [Module.length_pi_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-pi-of-fintype--6067549105da3eb3a7b788e4.md) | 201 | `result-track:6067549105da3eb3a7b788e4e8cea3d68969d446bc8cc9a24528df2a3ae9f107` |
| 28 | `lemma` | [Module.length_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-finsupp--80a8d1b38df7fea13776f3ce.md) | 215 | `result-track:80a8d1b38df7fea13776f3cee85b042c5ef4192f98bc42c3a0f9068d9674cf40` |
| 29 | `lemma` | [Module.length_pi](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-pi--828eabe0dd87286d7229285b.md) | 232 | `result-track:828eabe0dd87286d7229285b7cb855f682dc34b1a8344c79e0ff0b593147d1b0` |
| 30 | `lemma` | [Module.length_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-of-free--edf5934f8668c54ac4786e92.md) | 245 | `result-track:edf5934f8668c54ac4786e925c094b29bc60f37f6073034061d974245c3dd550` |
| 31 | `lemma` | [Module.length_of_free_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-of-free-of-finite--443a82a44c2cff732bdd6c7f.md) | 260 | `result-track:443a82a44c2cff732bdd6c7fad9db42b0a84b4695a5724af51f787d1bbcf6474` |
| 32 | `lemma` | [Module.length_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-one-iff--7f18734b82be0c1140a7b805.md) | 265 | `result-track:7f18734b82be0c1140a7b80515bf471e74554af84237de9a89119ce299f7b616` |
| 33 | `lemma` | [Module.length_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-one--59ab9041593fad267f12c510.md) | 272 | `result-track:59ab9041593fad267f12c510069a91589f683d3837e39d10a06a63c10ba35c1c` |
| 34 | `lemma` | [Module.length_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-rank--beff72a0e869f81ca1f2e14d.md) | 276 | `result-track:beff72a0e869f81ca1f2e14d8d7ad2f1f0764701b12b5e16b24cf9cf17825dfc` |
| 35 | `lemma` | [Module.length_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/declarations/module-length-eq-finrank--47b2f4a52f26b20d61e39dbc.md) | 281 | `result-track:47b2f4a52f26b20d61e39dbc8dc17daeed74e1aa6bcf294fe4ab592577b38c84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

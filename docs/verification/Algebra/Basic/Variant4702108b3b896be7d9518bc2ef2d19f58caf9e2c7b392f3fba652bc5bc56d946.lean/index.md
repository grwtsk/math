# Verification target: GRWTSK.Algebra.Basic.Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5b987c4cc00e33cd73ed9d0e645104fc761bcf8",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5b987c4cc00e33cd73ed9d0e645104fc761bcf8`.

Source path: `GRWTSK/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.Algebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subalgebra.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/subalgebra-isintegral-iff--3781b53d90dd330332469dfe.md) | 39 | `result-track:3781b53d90dd330332469dfe33d397c53dfda2612177f0fe74404ca602d148fe` |
| 2 | `theorem` | [Algebra.IsIntegral.of_injective](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/algebra-isintegral-of-injective--02fed6f28938038a868f9f8d.md) | 48 | `result-track:02fed6f28938038a868f9f8dfac7c24cc176b0ad06cb4a51d7bd7031fc18ca7d` |
| 3 | `theorem` | [Algebra.IsIntegral.of_surjective](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/algebra-isintegral-of-surjective--e0c3f906a5cc5dfa49b9b2db.md) | 53 | `result-track:e0c3f906a5cc5dfa49b9b2dbfc229a5d30e36cb7d354ec2c54cb4bc7a2c3b20f` |
| 4 | `theorem` | [AlgEquiv.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/algequiv-isintegral-iff--d27497c2557a7a32445f7e13.md) | 57 | `result-track:d27497c2557a7a32445f7e13b7ae53c04bdab5c93ecc04fc4be78fd2065ee513` |
| 5 | `instance` | [Module.End.isIntegral](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/module-end-isintegral--aa515cd2d2cc2c9bb34a68b5.md) | 62 | `declaration-track:aa515cd2d2cc2c9bb34a68b5b32bf9eeaf63c423619d5d360da2e097b9c7195d` |
| 6 | `theorem` | [IsIntegral.of_finite](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-of-finite--05b991a6df1a854adab1a11a.md) | 68 | `result-track:05b991a6df1a854adab1a11adcae056c027710f8ef476cbbadba5a98ab6f55f1` |
| 7 | `theorem` | [isIntegral_of_noetherian](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-of-noetherian--60e68e14d7754c5c05edde57.md) | 72 | `result-track:60e68e14d7754c5c05edde570c37976efe09a88a128e8fe9e99b18196676bf99` |
| 8 | `instance` | [Algebra.IsIntegral.of_finite](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/algebra-isintegral-of-finite--a66eb96037d3b2aeb2f010dd.md) | 76 | `declaration-track:a66eb96037d3b2aeb2f010dd24670f1df71937015f52d92ec17add282b03d884` |
| 9 | `lemma` | [Algebra.isIntegral_of_surjective](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/algebra-isintegral-of-surjective--a05c2b655477cdf452136c31.md) | 79 | `result-track:a05c2b655477cdf452136c3190bcec12605678f0ecaecbe9e5cdfa8c6b69b48d` |
| 10 | `theorem` | [IsIntegral.of_mem_of_fg](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-of-mem-of-fg--7574ac8b5ebf2a50859a8853.md) | 85 | `result-track:7574ac8b5ebf2a50859a88538b2f2089074ab90fe51b9b9264bc7e30d1cbbada` |
| 11 | `theorem` | [isIntegral_of_submodule_noetherian](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-of-submodule-noetherian--e580e9066e5c132d1e7fb905.md) | 90 | `result-track:e580e9066e5c132d1e7fb90545c1839ce3df8affb1c23e74d16d54acc80d6fd6` |
| 12 | `theorem` | [isIntegral_of_smul_mem_submodule](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-of-smul-mem-submodule--bfbe511abb72a3d50efb4404.md) | 96 | `result-track:bfbe511abb72a3d50efb4404f9cd8436423edd88d14da4eba4432667f3a01e64` |
| 13 | `theorem` | [RingHom.Finite.to_isIntegral](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-finite-to-isintegral--097d0bb633c7e0d8b348faf6.md) | 138 | `result-track:097d0bb633c7e0d8b348faf6321f2afa3111938e8b81abfee05d15f4044ed6a4` |
| 14 | `theorem` | [RingHom.IsIntegralElem.of_mem_closure](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-isintegralelem-of-mem-closure--11caf44299b72ba6d29e9180.md) | 146 | `result-track:11caf44299b72ba6d29e9180ce0b766b09cf058f73502a504725ed4b07c867af` |
| 15 | `theorem` | [IsIntegral.of_mem_closure](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-of-mem-closure--59ac40b499eff29e727d46aa.md) | 155 | `result-track:59ac40b499eff29e727d46aaa0db6593311efbfa11af9d90e5c6e826d51d4a88` |
| 16 | `theorem` | [RingHom.IsIntegralElem.add](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-isintegralelem-add--be6c067329151fe9b58964c5.md) | 161 | `result-track:be6c067329151fe9b58964c5743c1a2eda437d66d68b80114e6a592907edec47` |
| 17 | `theorem` | [IsIntegral.add](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-add--1f71dfdaab58748375b5b976.md) | 167 | `result-track:1f71dfdaab58748375b5b97663ce8d0d80dd946c3da399fe6dbe580b1456d065` |
| 18 | `theorem` | [RingHom.IsIntegralElem.neg](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-isintegralelem-neg--6ec2a1ff6b138f22501036d4.md) | 174 | `result-track:6ec2a1ff6b138f22501036d4deac3dd00f49dc57cdba447a4bd5ba900e94935c` |
| 19 | `theorem` | [RingHom.IsIntegralElem.of_neg](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-isintegralelem-of-neg--0c21defe49fa8e1875748b80.md) | 177 | `result-track:0c21defe49fa8e1875748b80c7f3cf2c52618a7c6f962c426bceb9ed8dd2bf8c` |
| 20 | `theorem` | [RingHom.IsIntegralElem.neg_iff](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-isintegralelem-neg-iff--cfe85a68fee95d4303130645.md) | 181 | `result-track:cfe85a68fee95d4303130645f75a2cc8c0757c8f6b18012d0d83ec235e026624` |
| 21 | `theorem` | [IsIntegral.neg](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-neg--5c0a2f00d9e89245218f62c1.md) | 184 | `result-track:5c0a2f00d9e89245218f62c1f94d7818614cd87954bb53a739eec880677411de` |
| 22 | `theorem` | [IsIntegral.of_neg](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-of-neg--f8f64da50d24ce43276c28ec.md) | 187 | `result-track:f8f64da50d24ce43276c28ec52d1d7e03404fe6e9b2aee9e123c91be72c389c7` |
| 23 | `theorem` | [IsIntegral.neg_iff](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-neg-iff--960bac98defb2d6e64f452f1.md) | 191 | `result-track:960bac98defb2d6e64f452f17295b0be36b4135f7efd566c614dc38cbc38a89c` |
| 24 | `theorem` | [RingHom.IsIntegralElem.sub](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-isintegralelem-sub--9a87db00172da46bfc7a107a.md) | 194 | `result-track:9a87db00172da46bfc7a107a44b82ab4d27bd3e4f2612567356757eb5a9514c9` |
| 25 | `theorem` | [IsIntegral.sub](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-sub--d46e9a8cc190af4e09b37fb5.md) | 198 | `result-track:d46e9a8cc190af4e09b37fb5c325e22ba08e68aa0b634f57145588c47215a238` |
| 26 | `theorem` | [RingHom.IsIntegralElem.mul](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/ringhom-isintegralelem-mul--dd1d03f100effec053d59a72.md) | 202 | `result-track:dd1d03f100effec053d59a72787cf8a15c3e38a9ed9d1ad4934b3f24d7d31b8f` |
| 27 | `theorem` | [IsIntegral.mul](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-mul--19c90444e600a4094373a33a.md) | 207 | `result-track:19c90444e600a4094373a33a189b2c2a16a2c470438c2cc33865c65c4007ec22` |
| 28 | `theorem` | [IsIntegral.smul](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/isintegral-smul--0a17a8f9bb4d1c71d3e021a4.md) | 211 | `result-track:0a17a8f9bb4d1c71d3e021a466743c40390cdafd991c50a855c3fa0e5a70acd4` |
| 29 | `def` | [integralClosure](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/integralclosure--356ff0ffc62ac1399031a069.md) | 219 | `declaration-track:356ff0ffc62ac1399031a069227bf2c6c9db6cda28a9e87359d9dce1dff46fc6` |
| 30 | `theorem` | [mem_integralClosure_iff](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/mem-integralclosure-iff--754e2ef1d94ea07e0b36c815.md) | 227 | `result-track:754e2ef1d94ea07e0b36c815bb08be76b220cba56dc6d435b1f475429ebd84e7` |
| 31 | `instance` | [Algebra.IsIntegral.prod](../../../../mathematics/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/declarations/algebra-isintegral-prod--fa8e5704d894f53215b9717f.md) | 233 | `declaration-track:fa8e5704d894f53215b9717f8ffde052f570f624537167c1fa155a6b09ce44f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

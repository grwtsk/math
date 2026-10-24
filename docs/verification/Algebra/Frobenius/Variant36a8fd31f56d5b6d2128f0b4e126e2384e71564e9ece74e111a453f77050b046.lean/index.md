# Verification target: GRWTSK.Algebra.Frobenius.Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bed5da511efc1999d14296113feb905bf8692c5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/index.md) · [Full source](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bed5da511efc1999d14296113feb905bf8692c5`.

Source path: `GRWTSK/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Multiplicity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frobeniusPolyRat](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniuspolyrat--b7b37407f1a9163038481507.md) | 65 | `declaration-track:b7b37407f1a9163038481507adb855d2907f567172f9f555b0d4f9a286b2ba43` |
| 2 | `theorem` | [bind₁_frobeniusPolyRat_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/bind-frobeniuspolyrat-wittpolynomial--e042ef95017c70c41216a9b2.md) | 68 | `result-track:e042ef95017c70c41216a9b2e236efad559380a5a07d52d7b9d841ef6fc467e7` |
| 3 | `def` | [frobeniusPolyAux](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniuspolyaux--8cdf8eaa3d2a10f7b91c5580.md) | 79 | `declaration-track:8cdf8eaa3d2a10f7b91c55809184a09b4a56586d72033e059110950430b9e709` |
| 4 | `theorem` | [frobeniusPolyAux_eq](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniuspolyaux-eq--e80da4b371b6206996f01872.md) | 88 | `result-track:e80da4b371b6206996f0187243aba317c18abc6446d28c88e06bb96904c6b1c3` |
| 5 | `def` | [frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniuspoly--43ee7d5edebe419c7ba29624.md) | 99 | `declaration-track:43ee7d5edebe419c7ba29624d7a666ab81637e2a445aa5e1296cc0944a1b9fd5` |
| 6 | `theorem` | [map_frobeniusPoly.key₁](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/map-frobeniuspoly-key--12eceed86f99a9407a4a515c.md) | 112 | `result-track:12eceed86f99a9407a4a515c9ef88162261ef701bd122f361bb5edc0a0031541` |
| 7 | `theorem` | [map_frobeniusPoly.key₂](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/map-frobeniuspoly-key--663504661fff1f59df479118.md) | 118 | `result-track:663504661fff1f59df47911804bf162e7091a586ccc2c962c789dfc72a5b0774` |
| 8 | `theorem` | [map_frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/map-frobeniuspoly--f441268c4782078a69a12744.md) | 129 | `result-track:f441268c4782078a69a12744f705a98f67afdf18d8a7e4382eab61d9a3abd189` |
| 9 | `theorem` | [frobeniusPoly_zmod](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniuspoly-zmod--6baf94d6084d3edc9fed41ea.md) | 181 | `result-track:6baf94d6084d3edc9fed41ead3186ad9b9f9de8d99df91e2248d4eec110cd959` |
| 10 | `theorem` | [bind₁_frobeniusPoly_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/bind-frobeniuspoly-wittpolynomial--d6705a16138b428979a1c256.md) | 187 | `result-track:d6705a16138b428979a1c256499cf5b8e29cbc63204daa31a026ae53ef755bcb` |
| 11 | `def` | [frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniusfun--04c445707c6623fdfc19b78a.md) | 197 | `declaration-track:04c445707c6623fdfc19b78a6c3defbb22b842b3c9ebebc8ee96dd946ff61855` |
| 12 | `theorem` | [coeff_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/coeff-frobeniusfun--162ec8d222ded613e52be0cb.md) | 201 | `result-track:162ec8d222ded613e52be0cbe011c9d7c3ff4d9e848768a6de11a6f76a73d56a` |
| 13 | `instance` | [frobeniusFun_isPoly](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniusfun-ispoly--d920b029fd6672daf68c41a0.md) | 210 | `declaration-track:d920b029fd6672daf68c41a04d76a967a55f9dcf77e9cf7fc3df902f117e46af` |
| 14 | `theorem` | [ghostComponent_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/ghostcomponent-frobeniusfun--2d6b3ed4e9e52f27c80b0c9f.md) | 214 | `result-track:2d6b3ed4e9e52f27c80b0c9f0502baeef457a9f47c676fced30101c174c898e8` |
| 15 | `def` | [frobenius](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobenius--da5b6da909d92f21a6fb6964.md) | 226 | `declaration-track:da5b6da909d92f21a6fb6964d02c16e84e0165799ac8c1cee68b8c619c1de900` |
| 16 | `theorem` | [coeff_frobenius](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/coeff-frobenius--39797d566e73e5e5f6f44b8c.md) | 245 | `result-track:39797d566e73e5e5f6f44b8ca27775b5abf3cbd4b3a856aa22cfa6323faafe34` |
| 17 | `theorem` | [ghostComponent_frobenius](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/ghostcomponent-frobenius--faa0f7d1c647e313cce041fe.md) | 250 | `result-track:faa0f7d1c647e313cce041fef195f4cbf6f6b16043528a1fae3daa95436a7e17` |
| 18 | `instance` | [frobenius_isPoly](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobenius-ispoly--35116f899a9d99a5ca0f9f0c.md) | 258 | `declaration-track:35116f899a9d99a5ca0f9f0cc63dea7e6105fd1eb1094fb29897d542b2fa677a` |
| 19 | `theorem` | [coeff_frobenius_charP](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/coeff-frobenius-charp--bd2c2928b95b42fbf7b9fec9.md) | 266 | `result-track:bd2c2928b95b42fbf7b9fec9be7f938b9ce4964ff52ea65efb9c45adf284bf29` |
| 20 | `theorem` | [frobenius_eq_map_frobenius](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobenius-eq-map-frobenius--420debdd5181c5525ecdb242.md) | 281 | `result-track:420debdd5181c5525ecdb242d22ee247884c2754be7e995b58b97ff08b552e04` |
| 21 | `theorem` | [frobenius_zmodp](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobenius-zmodp--8d040587508686b613d93800.md) | 286 | `result-track:8d040587508686b613d93800b427b4052ed17614798456f99cb3f6bc42104348` |
| 22 | `def` | [frobeniusEquiv](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobeniusequiv--b7efcf3c3e2c27fff64ddb96.md) | 294 | `declaration-track:b7efcf3c3e2c27fff64ddb96bf6a785fbb5b037e17107bc06b1b7c21ed6002e7` |
| 23 | `theorem` | [frobenius_bijective](../../../../mathematics/Algebra/Frobenius/Variant36a8fd31f56d5b6d2128f0b4e126e2384e71564e9ece74e111a453f77050b046.lean/declarations/frobenius-bijective--95aba2e2c59b404c1c00d306.md) | 305 | `result-track:95aba2e2c59b404c1c00d306897e94e029fc207abff37f1cc091109ca2f33597` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

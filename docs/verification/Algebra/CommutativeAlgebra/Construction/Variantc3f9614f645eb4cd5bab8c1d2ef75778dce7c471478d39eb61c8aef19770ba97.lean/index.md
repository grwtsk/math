# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Construction.Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "813fa6d7de756ace5d965370c69d47a69cc03dc2",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `813fa6d7de756ace5d965370c69d47a69cc03dc2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/factor--217462cf0c5f8875f298f089.md) | 50 | `declaration-track:217462cf0c5f8875f298f08919a7c94d0a05ed4ea1421a505bcc9fa8d164a6cc` |
| 2 | `theorem` | [irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/irreducible-factor--7ba340f29a3d7b8ea3f2ed0d.md) | 54 | `result-track:7ba340f29a3d7b8ea3f2ed0dd3be8aad117ae2003f95c9aa22397b356867fb15` |
| 3 | `theorem` | [fact_irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/fact-irreducible-factor--5e0214896e676e043a6287b1.md) | 62 | `result-track:5e0214896e676e043a6287b16337b4d533677959f4cf3becb3361fb1198a9cae` |
| 4 | `theorem` | [factor_dvd_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/factor-dvd-of-not-isunit--f9d881b59f3a51e4f134f3e0.md) | 68 | `result-track:f9d881b59f3a51e4f134f3e0bbfa0cef948c8285c82347cbb361cacd276606dd` |
| 5 | `theorem` | [factor_dvd_of_degree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/factor-dvd-of-degree-ne-zero--ae95f9053ad19e6a787bd708.md) | 74 | `result-track:ae95f9053ad19e6a787bd708375ecc0b55546e05e7c7b8b05a106298b963a2e3` |
| 6 | `theorem` | [factor_dvd_of_natDegree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/factor-dvd-of-natdegree-ne-zero--1200c303b671ab7beb827f6b.md) | 78 | `result-track:1200c303b671ab7beb827f6b402f0bca6535d9d45b9914d326e2b31e1cc5b8a0` |
| 7 | `def` | [removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/removefactor--55bf2eca6dcbabb9969fe857.md) | 83 | `declaration-track:55bf2eca6dcbabb9969fe8570e865de4ffa43bff9b12aa828ac0c11aafdfb8b9` |
| 8 | `theorem` | [X_sub_C_mul_removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/x-sub-c-mul-removefactor--5d50052975b69c289b10bcb1.md) | 87 | `result-track:5d50052975b69c289b10bcb174cb7ec4ab47af1bd647f4c5e25d6dc0a19816a1` |
| 9 | `theorem` | [natDegree_removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/natdegree-removefactor--d8264a4b5dbfb74df6450d8a.md) | 96 | `result-track:d8264a4b5dbfb74df6450d8a2521649f3088466867d89c9d0320173a0f29a952` |
| 10 | `theorem` | [natDegree_removeFactor'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/natdegree-removefactor--93808f64b17c0beec166f454.md) | 102 | `result-track:93808f64b17c0beec166f454ddfed896f830f99914b49f9fd8f5631c74fdb193` |
| 11 | `def` | [SplittingFieldAuxAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/splittingfieldauxaux--c576fe628de55dfe5d4689b3.md) | 113 | `declaration-track:c576fe628de55dfe5d4689b33526d6420ddbc1ddd25e0bb5f95ffbe62f303d02` |
| 12 | `def` | [SplittingFieldAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/splittingfieldaux--117a13bc06a2c1d8c8c55cc9.md) | 127 | `declaration-track:117a13bc06a2c1d8c8c55cc9ea5a4c9615b3d1dbd31a578cb3b4e92445dce70f` |
| 13 | `instance` | [SplittingFieldAux.field](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/splittingfieldaux-field--cefd292a10f9921f3f1e5c18.md) | 131 | `declaration-track:cefd292a10f9921f3f1e5c18c18aad4e7ae58ea49d050781d17768c4cb208300` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instance--2fe50b47474bf3678b6ce703.md) | 136 | `declaration-track:2fe50b47474bf3678b6ce7038857ab09a32426987021870d2610ee1c65636064` |
| 15 | `instance` | [SplittingFieldAux.algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/splittingfieldaux-algebra--fc4348e5f9469b1dc05461f7.md) | 139 | `declaration-track:fc4348e5f9469b1dc05461f7fa61924fd30a2bbe61ff0807f3e3d076a48a23fb` |
| 16 | `theorem` | [succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/succ--655572b9caed41c5721b6465.md) | 146 | `result-track:655572b9caed41c5721b6465caec9f2a4501fbe204c9400d45394ed6cd1d234c` |
| 17 | `instance` | [algebra'''](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algebra--9d6baf3aeb827c6a1e25ddb1.md) | 151 | `declaration-track:9d6baf3aeb827c6a1e25ddb181d72a9f1566b2aa2aac04bfebe3e1656f384290` |
| 18 | `instance` | [algebra'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algebra--baa250bb61409402ad39cc70.md) | 156 | `declaration-track:baa250bb61409402ad39cc708bb16d4cfcc564318a9f82bee3174131348cdca7` |
| 19 | `instance` | [algebra''](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algebra--35ed7ba60c361433981b0f5f.md) | 160 | `declaration-track:35ed7ba60c361433981b0f5ff5212a4eda0724b9142221d3ad70758ee18d910f` |
| 20 | `instance` | [scalar_tower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/scalar-tower--c606431b366cf4cef70a2ca1.md) | 164 | `declaration-track:c606431b366cf4cef70a2ca14488e93e7f0b17d688866dcaabb3586c24141410` |
| 21 | `theorem` | [algebraMap_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algebramap-succ--15aa72329437f960024c2a23.md) | 169 | `result-track:15aa72329437f960024c2a238931b1422faaab521f5cb7a8e8b4cbf2c0be6621` |
| 22 | `theorem` | [splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/splits--ed639642df5f8300814f5a0a.md) | 176 | `result-track:ed639642df5f8300814f5a0a3f1904c396957f00c11393c27ea58afb98023fe3` |
| 23 | `theorem` | [adjoin_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/adjoin-rootset--dd271c886f770b11b12c4125.md) | 190 | `result-track:dd271c886f770b11b12c41251989e4297b39ba4931a5fb600824013b24ad35a6` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instance--6b0281dece8c30fd45865f93.md) | 222 | `declaration-track:6b0281dece8c30fd45865f939a63ec8574c049707a52cab8311af2dec51f533b` |
| 25 | `def` | [SplittingField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/splittingfield--74175b2c26e40d86ea77e478.md) | 232 | `declaration-track:74175b2c26e40d86ea77e4780b88161eed9dbfd70bb6bd2732a49edecd1bef28` |
| 26 | `instance` | [commRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/commring--65d929f82204ed9cc0747026.md) | 241 | `declaration-track:65d929f82204ed9cc0747026a785c0fe5b8d1e71ee9ab6fca31b2e332c77b8a2` |
| 27 | `instance` | [inhabited](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/inhabited--932b3e7f00e6aa99ce55e40e.md) | 245 | `declaration-track:932b3e7f00e6aa99ce55e40e54ee711db050e65ae463ac3b7c945ea9c25f1207` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instance--0a2bfe792e0bbbb601908a39.md) | 249 | `declaration-track:0a2bfe792e0bbbb601908a3914abe641df43580a6a69ef73274387251e6e16c0` |
| 29 | `instance` | [algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algebra--9660979b64b6667499ef1fb8.md) | 252 | `declaration-track:9660979b64b6667499ef1fb810c3090fe99dac5d349fead744bfcd8bdfe9bec1` |
| 30 | `instance` | [algebra'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algebra--6731333b75c451bd92eae117.md) | 256 | `declaration-track:6731333b75c451bd92eae117b7b495f78437279429317d77f36c600710adfc02` |
| 31 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/isscalartower--23596b4ff31c61e6b0368f05.md) | 260 | `declaration-track:23596b4ff31c61e6b0368f05307983e7ad4d23bc92db048ac38d4cd206618630` |
| 32 | `def` | [algEquivSplittingFieldAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algequivsplittingfieldaux--fd437aa870798de4b7e060ad.md) | 267 | `declaration-track:fd437aa870798de4b7e060ad187f785bed8a6219fc3e4fd83a3fc5942e196f48` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instance--4288eaa72c4fa43c03e9533c.md) | 271 | `declaration-track:4288eaa72c4fa43c03e9533c7630532a87493593f39e2990fecb973ec5fe5047` |
| 34 | `instance` | [instCharZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instcharzero--07b513149b6c25a4123d31eb.md) | 299 | `declaration-track:07b513149b6c25a4123d31eb474835ad562512b3d8942fa021ffe4ddc14515c0` |
| 35 | `instance` | [instCharP](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instcharp--a2381e511a4e45019b98a51b.md) | 302 | `declaration-track:a2381e511a4e45019b98a51b7a3f28b3ac91de7547fa84332a427aedfaca5828` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/example--ac941679710d9671fe04fee1.md) | 307 | `declaration-track:ac941679710d9671fe04fee1ea8736b9a6fc5e6796fe0c594a6978bdbe2db11e` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/example--38011b8f8aed5583f210eb52.md) | 312 | `declaration-track:38011b8f8aed5583f210eb526ffc3014a1033868fed9f9cf8b00f1dc2d8ff086` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/example--255bafc2acc0a19ec24565e5.md) | 317 | `declaration-track:255bafc2acc0a19ec24565e52e88f50ed241abfdd5fd4858b41d434f7f72bd54` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/example--d6d9d13b2efe61d1243212cc.md) | 320 | `declaration-track:d6d9d13b2efe61d1243212cc37f0e18ac48bc985cbbb1097cea18945950972ef` |
| 40 | `instance` | [_root_.Polynomial.IsSplittingField.splittingField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/root-polynomial-issplittingfield-splittingfield--680558b65594fb2142349938.md) | 323 | `declaration-track:680558b65594fb21423499382072403138bf324f57a6e9fdab7ec027b5f71d75` |
| 41 | `theorem` | [splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/splits--bd4dc4470a2f53b02a317b94.md) | 328 | `result-track:bd4dc4470a2f53b02a317b940e22d8c43daf6c66cb15fadf54407f20a12b7ca4` |
| 42 | `def` | [lift](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/lift--33562dae4b0838feb8c280e8.md) | 335 | `declaration-track:33562dae4b0838feb8c280e8efb1ce9a05149efa8dd3ad8b69d0ad8d7c6ef597` |
| 43 | `theorem` | [adjoin_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/adjoin-rootset--342eb1fcf01db9aeefe92da6.md) | 339 | `result-track:342eb1fcf01db9aeefe92da638f8d0f389f98c11bf01dfc2e6dfde8693743ff9` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instance--e01e73a9ebe398e731446e01.md) | 354 | `declaration-track:e01e73a9ebe398e731446e01934b392d3c95fe5be693047f5f78f19f5f8e73b3` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instance--6a1de24d383f76d63d936c80.md) | 357 | `declaration-track:6a1de24d383f76d63d936c80c9f27a130ca24e22f3b6bee92245b5c1b20930a0` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/instance--73835648b596c4747e00ed49.md) | 360 | `declaration-track:73835648b596c4747e00ed49bf285b12da72689ccfae317e1d95c28e4350bb65` |
| 47 | `def` | [algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/algequiv--871baf714e9cd7be67a948c3.md) | 364 | `declaration-track:871baf714e9cd7be67a948c3220e074976a1915fa5565b62c3b2bc59a9904b85` |
| 48 | `instance` | [Polynomial.SplittingField.instNormal](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/declarations/polynomial-splittingfield-instnormal--1d564b8c007ffce3d0f5b1ad.md) | 389 | `declaration-track:1d564b8c007ffce3d0f5b1ad515468ac9be8cd056f171f4551f5daf969a552fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

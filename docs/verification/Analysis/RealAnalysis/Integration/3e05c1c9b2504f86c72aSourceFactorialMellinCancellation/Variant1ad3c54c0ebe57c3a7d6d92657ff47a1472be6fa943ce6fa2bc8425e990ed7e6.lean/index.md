# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.3e05c1c9b2504f86c72aSourceFactorialMellinCancellation.Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4e86d1cff60b3d9e6d79a798c3faf444c17a8e6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4e86d1cff60b3d9e6d79a798c3faf444c17a8e6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFactorialTailDecomposition` — import line 6; external provider; requires a separately pinned dependency.
- `SourceFullPositiveKappa` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveUnitCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/positiveunitcoefficient--dda147c84de1db384fc2f819.md) | 32 | `declaration-track:dda147c84de1db384fc2f8190d38b09644e20043798bfe7ece22b45880dff55e` |
| 2 | `theorem` | [positiveUnitCoefficient_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/positiveunitcoefficient-sum--849fa1dfaf3da8d58966fc47.md) | 34 | `result-track:849fa1dfaf3da8d58966fc47fad98be0e480217efd0c96a2c76aa59dc3849ef4` |
| 3 | `theorem` | [factorial_log_closed_Abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorial-log-closed-abel--647d37192b7d05bacb20e106.md) | 47 | `result-track:647d37192b7d05bacb20e1063ca5497436dd5b0f9705d0221dc868dbbb2d50e7` |
| 4 | `theorem` | [factorialLogDefect_eq_fractional_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factoriallogdefect-eq-fractional-primitive--c7422cf3efc3bef8be6522c4.md) | 85 | `result-track:c7422cf3efc3bef8be6522c4a6685725509d925f9a72464dfd8197734c60ade1` |
| 5 | `theorem` | [factorialLogDefect_eq_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factoriallogdefect-eq-lower--9f29e652072f9678d797293a.md) | 137 | `result-track:9f29e652072f9678d797293a835deff3a2a7c33b07aba2a440b67781f1f36c80` |
| 6 | `def` | [fractionalTriangle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionaltriangle--058dd653e939cdbd1e0ecf3e.md) | 145 | `declaration-track:058dd653e939cdbd1e0ecf3e78a3603a99b872c89dda3cfb549d67d2cc82003f` |
| 7 | `theorem` | [negativeThreeHalves_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/negativethreehalves-measurable--8d9f86c520980f65d11658f3.md) | 148 | `result-track:8d9f86c520980f65d11658f33dd3bb49f585d659058d864b18a9bcb255b45f6d` |
| 8 | `theorem` | [fractionalTriangle_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionaltriangle-measurable--c4e858a7989371da91ad9c6a.md) | 164 | `result-track:c4e858a7989371da91ad9c6ac8e27f3b960daeb34b2c3f5e302b745a7d8eaf61` |
| 9 | `theorem` | [fractionalTriangle_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionaltriangle-nonneg--e24abdd6af2978959d224781.md) | 170 | `result-track:e24abdd6af2978959d2247812f0f248b0538bbf84548ad3f5f99c0498107a265` |
| 10 | `theorem` | [fractionalTriangle_right_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionaltriangle-right-integrable--eea6cb2a79278cee4d637d1b.md) | 178 | `result-track:eea6cb2a79278cee4d637d1b6546ce6506f9d6a3c818dc274fefe2d78c1fe9c3` |
| 11 | `theorem` | [fractionalTriangle_right_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionaltriangle-right-integral--3f7933dd08295e09e591cb03.md) | 189 | `result-track:3f7933dd08295e09e591cb03e9dd8e1974929ace5eca2989ef8a1c7d337887c9` |
| 12 | `theorem` | [fractionalTriangle_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionaltriangle-integrable--161d206e573b743c09ec1d3c.md) | 216 | `result-track:161d206e573b743c09ec1d3cb711090d2a032b98ab71fc061cd1fd4d2fbdeddf` |
| 13 | `theorem` | [fractionalTriangle_left_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionaltriangle-left-integral--28a15b62cf8c815e24bfda36.md) | 238 | `result-track:28a15b62cf8c815e24bfda363b46297c2a0b76e5d83a8c6e6b971c3baee8f899` |
| 14 | `theorem` | [fractionalPrimitive_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionalprimitive-mellin-integrable--25a05d9a5e47b224f615d464.md) | 250 | `result-track:25a05d9a5e47b224f615d464590f1b1fdb752c2d51ba52dd2bbf647ebaceaddd` |
| 15 | `theorem` | [fractionalPrimitive_mellin_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fractionalprimitive-mellin-integral--3cac73e091c64466bd004fd9.md) | 258 | `result-track:3cac73e091c64466bd004fd945bfa934e810710106b0292c975b66da6aad66db` |
| 16 | `def` | [factorialMellinWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight--5bc2795deaa9bd734178e1cc.md) | 281 | `declaration-track:5bc2795deaa9bd734178e1cc7c9e148e3e9f13b1ad6be8bdf013fed33fabb1da` |
| 17 | `theorem` | [factorialMellinWeight_eq_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight-eq-lower--52cd5187f702d517b4ed7704.md) | 284 | `result-track:52cd5187f702d517b4ed770436a84eafcb5d2a86b6031369e7e19ba32d069161` |
| 18 | `theorem` | [factorialMellinWeight_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight-lower-integrable--c4186388b486e6d4dc7c348c.md) | 299 | `result-track:c4186388b486e6d4dc7c348ced08328386af7d3912aba905fc2b3ae38afa53da` |
| 19 | `theorem` | [factorialMellinWeight_lower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight-lower-integral--e6a71c832b6a4b8b272a7ed3.md) | 307 | `result-track:e6a71c832b6a4b8b272a7ed3fc1b23646e03411f1d6278d722c21ee115e10180` |
| 20 | `theorem` | [factorialMellinWeight_eq_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight-eq-upper--ea72e11f05ff89faea80d1f2.md) | 314 | `result-track:ea72e11f05ff89faea80d1f2791ac69f8eb2d4b8b3ff38cba94e55da4ed62a9c` |
| 21 | `theorem` | [factorialMellinWeight_upper_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight-upper-integrable--2b9b15175830cb76fe04d9cc.md) | 323 | `result-track:2b9b15175830cb76fe04d9cccdd90ce5b7af61c26271d6a160efab0bbb2cb0b4` |
| 22 | `theorem` | [factorialMellinWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight-integrable--c93f13ada7e60ddadd7bfc54.md) | 336 | `result-track:c93f13ada7e60ddadd7bfc54e2dc8186524f26c1ecc5f842fec336fd6b272393` |
| 23 | `theorem` | [factorialMellinWeight_upper_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/factorialmellinweight-upper-integral--aa66f8c8cd2f83af56702b4f.md) | 345 | `result-track:aa66f8c8cd2f83af56702b4f965d3623af0c44798bfb879db1d6ab49d7299be9` |
| 24 | `theorem` | [fullPositiveKappa_one_eq_factorial_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant1ad3c54c0ebe57c3a7d6d92657ff47a1472be6fa943ce6fa2bc8425e990ed7e6.lean/declarations/fullpositivekappa-one-eq-factorial-mellin--0df45ac25466a8173a647a76.md) | 363 | `result-track:0df45ac25466a8173a647a762c37ba94c669f5b5453d689607ad9d401ceb9fc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

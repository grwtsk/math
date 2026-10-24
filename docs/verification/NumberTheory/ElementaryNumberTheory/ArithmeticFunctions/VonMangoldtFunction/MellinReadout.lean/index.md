# Verification target: GRWTSK.NumberTheory.VonMangoldt.MellinReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "158f2611dfbc850f02be5ae6d1d01292040c1509",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/MellinReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `158f2611dfbc850f02be5ae6d1d01292040c1509`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/MellinReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/MellinReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.MellinTransform.PositiveCoordinates`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.VonMangoldt.ComplexReadout`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mellinSlope](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellinslope--7425c1b1d726bd5f347f73f3.md) | 27 | `declaration-track:7425c1b1d726bd5f347f73f36d144fc2bf7a8208e9e910b415c291acb6361bb9` |
| 2 | `theorem` | [mellinTest_hasDerivAt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellintest-hasderivat--6b9e5b0e14654a31c04fb5e3.md) | 30 | `result-track:6b9e5b0e14654a31c04fb5e39ad1a12ddf29b50bfbc806f8146a4171d6618d52` |
| 3 | `theorem` | [mellinTest_continuous](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellintest-continuous--4e2bc76c776e8a279f8ae1d0.md) | 37 | `result-track:4e2bc76c776e8a279f8ae1d00381c54920235f8f2fa60bc06db570e81cd541e0` |
| 4 | `theorem` | [mellinSlope_continuous](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellinslope-continuous--01070cde64bafe7c2f3334ed.md) | 42 | `result-track:01070cde64bafe7c2f3334ed88b66fde47bc28ad86abff8eee5a42fe93727deb` |
| 5 | `def` | [mellinC1](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellinc1--98c81bccf8ecc4934fad1639.md) | 49 | `declaration-track:98c81bccf8ecc4934fad163959545bd1725aa558bc60b01082f10abf6f57414c` |
| 6 | `theorem` | [mellin_at_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellin-at-zero--665bfbcd175cecadb962107a.md) | 55 | `result-track:665bfbcd175cecadb962107aaba87f16563a0ea7e727e8794c072317cb7d27f2` |
| 7 | `theorem` | [mellin_at_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellin-at-one--e768339e87cfd42c335d54f9.md) | 57 | `result-track:e768339e87cfd42c335d54f9651f9e90088e54747265e5cfcfca0673720c370c` |
| 8 | `theorem` | [mellin_norm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mellin-norm--c7d2f4ab5e7f59105d87f70d.md) | 60 | `result-track:c7d2f4ab5e7f59105d87f70d44a944e0e21f5f1736d4f721b433e82c541df586` |
| 9 | `theorem` | [dirichletBlock_eq_scaled_action](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/dirichletblock-eq-scaled-action--0f839313732a45f642a29816.md) | 66 | `result-track:0f839313732a45f642a298163fb5643f567665d0d39df5ba2aa889d527a4fecf` |
| 10 | `theorem` | [block_at_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/block-at-one--95001d89640e46c1c858618d.md) | 91 | `result-track:95001d89640e46c1c858618d981e0d4a87495c9f685b8f7548c79634f84d4396` |
| 11 | `theorem` | [mass0_add_mass1](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/mass0-add-mass1--09e1997b44cff38da74e2af2.md) | 106 | `result-track:09e1997b44cff38da74e2af2e4d53ad62b3aecb4421d4b03494582150cc0002b` |
| 12 | `def` | [radiusFactor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/radiusfactor--5c25630d02f9e0a0d2ae574a.md) | 128 | `declaration-track:5c25630d02f9e0a0d2ae574a50162be9afd42419ac2f571533533c33b43b17bd` |
| 13 | `def` | [radiusBudget](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/radiusbudget--605b8236242541787d02d1cf.md) | 129 | `declaration-track:605b8236242541787d02d1cf7a6ad4ea656322232c4d586bc22cbef3ffe79733` |
| 14 | `theorem` | [radiusBudget_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/radiusbudget-nonneg--1b4223f7541ec574be7a277c.md) | 132 | `result-track:1b4223f7541ec574be7a277c0e821f63862ab1c3f4f46987e96827114046df9e` |
| 15 | `theorem` | [test_norm_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/test-norm-bound--39cfad8e2c21c65a4b31929b.md) | 136 | `result-track:39cfad8e2c21c65a4b31929b3537c9e4b161a87846c97208ca663c0a208affb3` |
| 16 | `theorem` | [slope_norm_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/slope-norm-bound--1af66f741adb2c27fa2858a6.md) | 152 | `result-track:1af66f741adb2c27fa2858a6ae3d99391ff51c3e8f3957324e6cdbb9c859e803` |
| 17 | `theorem` | [testEnergy_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/testenergy-bound--42748a472df95157b5c23323.md) | 170 | `result-track:42748a472df95157b5c23323f8872667b8d338f3b64832285ae77c818ab950be` |
| 18 | `theorem` | [dirichletBlock_norm_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/declarations/dirichletblock-norm-bound--d1e0529ec582f1c97c2503d5.md) | 192 | `result-track:d1e0529ec582f1c97c2503d5a327436006ffeb4bba2319c59284d38bb9fa7eaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

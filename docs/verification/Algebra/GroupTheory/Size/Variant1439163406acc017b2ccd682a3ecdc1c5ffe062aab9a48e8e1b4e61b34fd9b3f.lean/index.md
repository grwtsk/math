# Verification target: GRWTSK.Algebra.GroupTheory.Size.Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df89534fb943ababe3838234a14f805cc5bb6028",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df89534fb943ababe3838234a14f805cc5bb6028`.

Source path: `GRWTSK/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shiftLeft_eq_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/shiftleft-eq-mul-pow--1b35dba3cd34a537efa9fd8a.md) | 26 | `result-track:1b35dba3cd34a537efa9fd8a3ea55e418924d05d5f1f6e1c7f252405f48bc4fa` |
| 2 | `theorem` | [shiftLeft'_tt_eq_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/shiftleft-tt-eq-mul-pow--1d8e618f7c8da060054bcddd.md) | 28 | `result-track:1d8e618f7c8da060054bcddd78fd476dec892eb390b02e48e8f945bbbf06e0a3` |
| 3 | `theorem` | [shiftLeft'_ne_zero_left](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/shiftleft-ne-zero-left--22b6177d2924b31e1ea33651.md) | 36 | `result-track:22b6177d2924b31e1ea3365152e480b40aa246f403a281c08c6e32c256e21396` |
| 4 | `theorem` | [shiftLeft'_tt_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/shiftleft-tt-ne-zero--27795b5f07fb0e84542c9f9d.md) | 39 | `result-track:27795b5f07fb0e84542c9f9d8febc062fbcb9c7f14e5333b984cf409da4a0849` |
| 5 | `theorem` | [size_zero](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-zero--9b55245f34079f1be73ad932.md) | 47 | `result-track:9b55245f34079f1be73ad9324880f685839bed7c3f3cc5bdc0d62e2d5b9ab22b` |
| 6 | `theorem` | [size_bit](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-bit--1cab26b8564df2e18b496696.md) | 50 | `result-track:1cab26b8564df2e18b4966964814b24c183abfdb6f137b79541c857ba15ae5c8` |
| 7 | `theorem` | [size_one](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-one--b70970d2f2f2e96bab55078d.md) | 60 | `result-track:b70970d2f2f2e96bab55078d2674be22d53f56db09a56917dcd583a0981adf75` |
| 8 | `theorem` | [size_shiftLeft'](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-shiftleft--fc73716b4a5d0da5c3eb956e.md) | 66 | `result-track:fc73716b4a5d0da5c3eb956ee6142bdd089fdce3836688bbe45e1845d1068cb8` |
| 9 | `theorem` | [size_shiftLeft](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-shiftleft--eee4b5abce7f7c9673151bf7.md) | 85 | `result-track:eee4b5abce7f7c9673151bf765c4aec4ecc4471033084171ced9ce459579aba0` |
| 10 | `theorem` | [lt_size_self](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/lt-size-self--d803433d3f87e3590b5aa2e4.md) | 88 | `result-track:d803433d3f87e3590b5aa2e4c96d378e9f8a560a69e5eec2097a03a1aabc20f5` |
| 11 | `theorem` | [size_le](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-le--b794ff468ed75965869bf00b.md) | 99 | `result-track:b794ff468ed75965869bf00b8ce90ae90c37af1c9ff9a07f1fb59a1324be00f3` |
| 12 | `theorem` | [lt_size](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/lt-size--205d78f55246cd01b20384dd.md) | 118 | `result-track:205d78f55246cd01b20384ddbf74fd78ae29b27e0795b4c38dbea3bb15fe78dd` |
| 13 | `theorem` | [size_pos](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-pos--485f0b06224a62ae8c8feabb.md) | 121 | `result-track:485f0b06224a62ae8c8feabbf5c551d9f8fd4ff4c516b0e575b3c36c06bda9d6` |
| 14 | `theorem` | [size_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-eq-zero--4b01d0f426e1cde3e3d6e4f8.md) | 123 | `result-track:4b01d0f426e1cde3e3d6e4f84cd32b2ca11ef330854fc5db570e3c6625847f81` |
| 15 | `theorem` | [size_pow](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-pow--9019dd39d5d75fe2746ddb82.md) | 126 | `result-track:9019dd39d5d75fe2746ddb82153559ff3b30f1d46efc4a8c2271e8381bb05864` |
| 16 | `theorem` | [size_le_size](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-le-size--4f09ce923ae8a4c0da53ccc5.md) | 130 | `result-track:4f09ce923ae8a4c0da53ccc594664c657cecba81769b5a4e1ecbbdf954e51692` |
| 17 | `theorem` | [size_eq_bits_len](../../../../../mathematics/Algebra/GroupTheory/Size/Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f.lean/declarations/size-eq-bits-len--bf5c02f40f6040f3a4d7b1c7.md) | 133 | `result-track:bf5c02f40f6040f3a4d7b1c724e7dd7e33b461b459808f03633567b9db0b5d82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

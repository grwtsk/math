# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Field.Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed160a8adf6b568dac7873d92ffde3e4c9efbb9c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed160a8adf6b568dac7873d92ffde3e4c9efbb9c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.FieldDivision` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_le_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/degree-le-of-ne-zero--bd4b254e853640625d80a1ee.md) | 45 | `result-track:bd4b254e853640625d80a1ee3711a9609bfb41f56af8e202f07d790b9b38bbd4` |
| 2 | `theorem` | [ne_zero_of_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/ne-zero-of-finite--40282510155d7936b5551a38.md) | 53 | `result-track:40282510155d7936b5551a38b856c33538387db9272670a2532ac37cdfe053e2` |
| 3 | `theorem` | [unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/unique--35405c085b906db7847a6bb7.md) | 61 | `result-track:35405c085b906db7847a6bb745fd50b963d82a75f61a9d4475db0bccb8a23bbe` |
| 4 | `theorem` | [dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/dvd--a54d52ceaf0c31cc686445bf.md) | 77 | `result-track:a54d52ceaf0c31cc686445bfad0ab76283d24a88bf2adb8515d6f537ed2f1447` |
| 5 | `theorem` | [dvd_map_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/dvd-map-of-isscalartower--ddbcf56426469896c621846b.md) | 91 | `result-track:ddbcf56426469896c621846be9a7e3c3b9b050aad062a801c5c563c2105b2575` |
| 6 | `theorem` | [dvd_map_of_isScalarTower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/dvd-map-of-isscalartower--56fc593b87c0a47050b67ffa.md) | 98 | `result-track:56fc593b87c0a47050b67ffaf89d4094a5d0d07b8d0bf413d52cbb4c27146826` |
| 7 | `theorem` | [aeval_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/aeval-of-isscalartower--c5d3ae455eb6602e3daeafa3.md) | 108 | `result-track:c5d3ae455eb6602e3daeafa30b1eb5821c07d8d38d8ed3a74ad0e908356653ee` |
| 8 | `theorem` | [eq_of_irreducible_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/eq-of-irreducible-of-monic--67638436890bacd5be9fcac2.md) | 119 | `result-track:67638436890bacd5be9fcac267647f4819e055de66c50f47b1c03b9d35f11823` |
| 9 | `theorem` | [eq_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/eq-of-irreducible--c13ffae77df1a2aa4fbbec13.md) | 127 | `result-track:c13ffae77df1a2aa4fbbec13804baa2b8cd5513aa07ea7c5dfa7289ca2434327` |
| 10 | `theorem` | [eq_of_algebraMap_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/eq-of-algebramap-eq--4672bd1a692a424a0a638b51.md) | 142 | `result-track:4672bd1a692a424a0a638b5107d004fa5cda769f0c8396c0dfc3761ae2d32c12` |
| 11 | `theorem` | [add_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/add-algebramap--34ca510936c0bbf328e7c93e.md) | 152 | `result-track:34ca510936c0bbf328e7c93e0f07cc909baa0d91398e3d338aeb413c704f3f52` |
| 12 | `theorem` | [sub_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/sub-algebramap--0fdfa5797a6536efb9906ff8.md) | 166 | `result-track:0fdfa5797a6536efb9906ff81f22975918fa235d53e6d1acf34b7c46c7ded7b9` |
| 13 | `def` | [Fintype.subtypeProd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/fintype-subtypeprod--06ac5ec4ab1a0ed984db7dc9.md) | 174 | `declaration-track:06ac5ec4ab1a0ed984db7dc95a89ad92b54aace40084fa113d9bf5b4043628c7` |
| 14 | `def` | [rootsOfMinPolyPiType](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/rootsofminpolypitype--c0e5753c8e9b4b6801839ce4.md) | 185 | `declaration-track:c0e5753c8e9b4b6801839ce464eab80fb070fb8d2b8f3a00b7f4641646c80cea` |
| 15 | `theorem` | [aux_inj_roots_of_min_poly](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/aux-inj-roots-of-min-poly--ca4c3c9f937f425e5a6483e1.md) | 193 | `result-track:ca4c3c9f937f425e5a6483e17c662b29440a5c81793f105b3fa5e62921fbf03d` |
| 16 | `instance` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/alghom-fintype--b2e792752af894be16a59064.md) | 203 | `declaration-track:b2e792752af894be16a59064fa32320d2cea05fc164e4a556437f3a598d5c2a2` |
| 17 | `theorem` | [eq_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/eq-x-sub-c--5dae5dcbe490aafbcc41666a.md) | 216 | `result-track:5dae5dcbe490aafbcc41666a1dd63c2df7aa6a17536d3319b12779bc50b39316` |
| 18 | `theorem` | [eq_X_sub_C'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/eq-x-sub-c--539741755354a48a4b9d6c05.md) | 221 | `result-track:539741755354a48a4b9d6c0531772e41c3f659fc4ef59b5ba054fda4e2b207d6` |
| 19 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/zero--06cbe906b8bed3a6efbf5649.md) | 230 | `result-track:06cbe906b8bed3a6efbf56495dae1f06bf0888b571d03194b95654e18e9940ab` |
| 20 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/one--3a5658d00fa2590cc299be4d.md) | 236 | `result-track:3a5658d00fa2590cc299be4d90ae63868c7c54bf36819f31166a28a4366d4c40` |
| 21 | `theorem` | [prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/prime--15c36e635d3c951f5a36efa1.md) | 249 | `result-track:15c36e635d3c951f5a36efa1938ae54a3346d1603801eca140d95669e731d136` |
| 22 | `theorem` | [root](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/root--c5447d55dee995d76f2c85bb.md) | 259 | `result-track:c5447d55dee995d76f2c85bbb33b01432f1ce5065725a69619302a14876886d8` |
| 23 | `theorem` | [coeff_zero_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/coeff-zero-eq-zero--b08c2a2e81b2e5c5927f0f8b.md) | 270 | `result-track:b08c2a2e81b2e5c5927f0f8b598485290bcc5296d9c6b58bf5d3784431df7ba2` |
| 24 | `theorem` | [coeff_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/declarations/coeff-zero-ne-zero--799f5ad4baea3308434e9486.md) | 281 | `result-track:799f5ad4baea3308434e94863838182a30eaa8b6594736706d0ce895fb244d0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

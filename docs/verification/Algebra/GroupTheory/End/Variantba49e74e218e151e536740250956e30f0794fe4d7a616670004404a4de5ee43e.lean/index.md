# Verification target: GRWTSK.Algebra.GroupTheory.End.Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49b59966711791b806e39e5b21f00caaf2c6adbb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49b59966711791b806e39e5b21f00caaf2c6adbb`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/instance--089015b079853756d1eff716.md) | 27 | `declaration-track:089015b079853756d1eff716ee75a269472044349f031b2c63e58a156ff5b081` |
| 2 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/one-def--35c9a3b2802f47f52155adbd.md) | 34 | `result-track:35c9a3b2802f47f52155adbd0fbd61e6fd35cc60749e1978956a241884aa164b` |
| 3 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/mul-def--d8385dd44a1fe922209d8af3.md) | 35 | `result-track:d8385dd44a1fe922209d8af3792dfa2289779a0dd476cd41b40b60dcb2232579` |
| 4 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/coe-one--d1fc839465bf9877063e8068.md) | 37 | `result-track:d1fc839465bf9877063e806888577a1ae7c626421c8860ac3e65aff2dcf7e6f4` |
| 5 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/coe-mul--c91cde8e6e0c2bf8fc13fba4.md) | 38 | `result-track:c91cde8e6e0c2bf8fc13fba4143bd1abd8777d25480f48b2c1136905b107e9eb` |
| 6 | `lemma` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/one-apply--927ef1b09500f1ecd0078cbe.md) | 40 | `result-track:927ef1b09500f1ecd0078cbeeca566cb9dfa2b33815265ffd2baee9de7501ca0` |
| 7 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/mul-apply--e56e4313becc689743c33f8b.md) | 41 | `result-track:e56e4313becc689743c33f8b753771b8e0a7954f43d894faa7bbd5e3d94ebd0e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/instance--e82a7d2c5b63858d9a742635.md) | 47 | `declaration-track:e82a7d2c5b63858d9a74263534d52f2f8d00189238101935c69a4ebb47eae06c` |
| 9 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/one-def--3968933849f0e92aa23aad05.md) | 54 | `result-track:3968933849f0e92aa23aad05c4d25c3aec6fbccfff406b283dc2ccdc6fc74883` |
| 10 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/mul-def--a9b187f62ea902e4e3966ccc.md) | 55 | `result-track:a9b187f62ea902e4e3966cccff24c900de0e1c90773cc19e36c9a108028c1ff1` |
| 11 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/coe-one--384402bb6e8f4e5d4aa4613d.md) | 57 | `result-track:384402bb6e8f4e5d4aa4613d7268ebd445c70cd41ccff8f6fe94f4cb4ba9a523` |
| 12 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/coe-mul--7ffd4c82970c10c01f21a8f9.md) | 58 | `result-track:7ffd4c82970c10c01f21a8f961567d013a7cdf7dc6fdc630d7c18ebed4588375` |
| 13 | `lemma` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/one-apply--17b4d862bed23dcb93c70fd7.md) | 60 | `result-track:17b4d862bed23dcb93c70fd77830b0f1beda9aa54ad404eca62fc51cfb737127` |
| 14 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/mul-apply--862312f97e94097d9f676ad0.md) | 61 | `result-track:862312f97e94097d9f676ad038fbafa1c3d2b38c1d8b39ebe9904b8a2073d308` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/instance--51aba53d7d3dc8f1e8e32b40.md) | 67 | `declaration-track:51aba53d7d3dc8f1e8e32b40c24417a0ef6472d544f0981cc99175c7e67dbeb0` |
| 16 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/one-def--be2f2b05179a0f6ee8ff2e38.md) | 76 | `result-track:be2f2b05179a0f6ee8ff2e38fe5c4aa47358f9f2a5a052255b913ea1f86e7291` |
| 17 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/mul-def--e0224133b868f02cc7573bef.md) | 77 | `result-track:e0224133b868f02cc7573bef1c65a0f8ecf7dee13f33a82dc22c758fa65bf949` |
| 18 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/coe-one--548eb4ef47b9c3b7f86d9f76.md) | 79 | `result-track:548eb4ef47b9c3b7f86d9f7648d49e44511cde1018fbb1302eee982f1bd14c55` |
| 19 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/coe-mul--3671af9b9556aea5294b4748.md) | 80 | `result-track:3671af9b9556aea5294b4748a3448f32abf5ab632a41f7061c8a01a35e090d4f` |
| 20 | `lemma` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/one-apply--ea31dee178ad3d9c2f4278a0.md) | 82 | `result-track:ea31dee178ad3d9c2f4278a097d098f8604090f23015176d4a604fcdc93a970f` |
| 21 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/mul-apply--662b55f32741ef3e7e431880.md) | 83 | `result-track:662b55f32741ef3e7e4318802441fc171d04d1c115d549f42dc2ab373024bd7a` |
| 22 | `theorem` | [inv_apply_self](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/inv-apply-self--3ceef826886f468ff2167a1f.md) | 86 | `result-track:3ceef826886f468ff2167a1f43b434c7a1d4e17743eb89d1fa476d20c7a3c511` |
| 23 | `theorem` | [apply_inv_self](../../../../../mathematics/Algebra/GroupTheory/End/Variantba49e74e218e151e536740250956e30f0794fe4d7a616670004404a4de5ee43e.lean/declarations/apply-inv-self--bb7fc3b963aa5568684d1ba0.md) | 90 | `result-track:bb7fc3b963aa5568684d1ba06660e3a09fffebcd452b9eaccdbd80a505a7b9de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pow.Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f1cb37d36a7477c6d079f72bad985ec90af4bc6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f1cb37d36a7477c6d079f72bad985ec90af4bc6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/instance--96ae52a45b9db7be81f4ddfb.md) | 35 | `declaration-track:96ae52a45b9db7be81f4ddfbde9149039bcc8d37092f643dabe651e29c670163` |
| 2 | `lemma` | [epow_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-def--2c8a4d5e871b7a601a6fc470.md) | 40 | `result-track:2c8a4d5e871b7a601a6fc470d0834945aa9df38a190552413680087687128a55` |
| 3 | `lemma` | [epow_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-natcast--8ae0672f2e66f90f6e40de93.md) | 47 | `result-track:8ae0672f2e66f90f6e40de93fa69a34e3fe2ecc84a32ca9ecd4f96a1865c18ba` |
| 4 | `lemma` | [zero_epow_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/zero-epow-top--882127ec954f75ad0716287a.md) | 50 | `result-track:882127ec954f75ad0716287acb06cbee07c3d4c09c9a54d0975307f2426841c5` |
| 5 | `lemma` | [zero_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/zero-epow--67946e6499a86bc22a0d5ef0.md) | 52 | `result-track:67946e6499a86bc22a0d5ef0f63eadcb7520b43aa9be4fbbc7d4f719cd2f5cc7` |
| 6 | `lemma` | [one_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/one-epow--60ef5fe99d749c9fb5d05d86.md) | 58 | `result-track:60ef5fe99d749c9fb5d05d867a283ad64dd08a7d84a2b5101444b8eca5301497` |
| 7 | `lemma` | [top_epow_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/top-epow-top--7562c866216865d7ec5a614a.md) | 64 | `result-track:7562c866216865d7ec5a614a45e7ffaeaaf321c4e1a2a45f65970dd8a835819e` |
| 8 | `lemma` | [top_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/top-epow--183a3d0b5e10abaf94fe338c.md) | 66 | `result-track:183a3d0b5e10abaf94fe338cba66d82b70f01d4ae5aca2992198ad0b5a3bf905` |
| 9 | `lemma` | [epow_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-zero--27a76ecb6071babf4c1aa7f9.md) | 72 | `result-track:27a76ecb6071babf4c1aa7f913386300e2ab1bbe869947a0085e81a7e2a2a936` |
| 10 | `lemma` | [epow_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-one--5287196335855a83085bc267.md) | 76 | `result-track:5287196335855a83085bc267a209c2d59b6375c60e38eee0e6c391a2253ba55a` |
| 11 | `lemma` | [epow_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-top--f08dc31ef93898a1f4937b12.md) | 79 | `result-track:f08dc31ef93898a1f4937b1233d3ced5dadb1328c3f1bbacfe85601f6a672249` |
| 12 | `lemma` | [epow_right_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-right-mono--bf358bb740033a9467691cd9.md) | 83 | `result-track:bf358bb740033a9467691cd9ad9bce72acd6a642a5667e450b422d2ffb4839d8` |
| 13 | `lemma` | [one_le_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/one-le-epow--8d292fc6bee96997b60f30c9.md) | 94 | `result-track:8d292fc6bee96997b60f30c9a7c84235485168dcf33c79deacdf720ad6fb358f` |
| 14 | `lemma` | [epow_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-pos--da0d11660e71479c55a04d83.md) | 97 | `result-track:da0d11660e71479c55a04d831f66e815f03b42bbabc6944a45de3b84f412489d` |
| 15 | `lemma` | [epow_left_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-left-mono--6644fbf200116d846d6e0801.md) | 100 | `result-track:6644fbf200116d846d6e0801ffccb42665cb6ea22f59b3b9da889fc04495f70a` |
| 16 | `lemma` | [epow_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-eq-zero-iff--fbe7abccb4f375a9bf8fdb79.md) | 110 | `result-track:fbe7abccb4f375a9bf8fdb79eb8c11db48386977d7d0f8e51dde6d2ac862d846` |
| 17 | `lemma` | [epow_eq_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-eq-one-iff--59bd7f2d9caceab06e066003.md) | 116 | `result-track:59bd7f2d9caceab06e066003c0fcb17db2ea6915c8b897cf084dc367b49b6aa4` |
| 18 | `lemma` | [epow_add](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-add--648d52c500488a693e21309c.md) | 125 | `result-track:648d52c500488a693e21309ca372a43cb7b63f6530bd07b12c642abadb4ef6f7` |
| 19 | `lemma` | [mul_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/mul-epow--19b9f7e3efab4de89778ad46.md) | 141 | `result-track:19b9f7e3efab4de89778ad463cd3326a83d09c2c84b19458594678378da83c1f` |
| 20 | `lemma` | [epow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/declarations/epow-mul--9897612f29e232b453d224d6.md) | 153 | `result-track:9897612f29e232b453d224d61f3f5607bbe21c9f2213a5e70b1859f9ebb4f9af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

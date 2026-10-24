# Verification target: GRWTSK.Algebra.LinearAlgebra.BraidQuotientAttempt01.Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0bcf9eca798295b0fa8f4759028bd0d5e692483",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0bcf9eca798295b0fa8f4759028bd0d5e692483`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/braidrelator--75747d2c2df96a2d356de1ff.md) | 22 | `declaration-track:75747d2c2df96a2d356de1ff9f46652886aa6f4ff5f972b5fcbf494e190a702c` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/braidrelations--06662c17af47f66ed515cc3f.md) | 26 | `declaration-track:06662c17af47f66ed515cc3fefdfa24d64ca65bff5524c28a005e8d22c17fadb` |
| 3 | `def` | [B3](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/b3--65149fc0d649e46a9b9d04b6.md) | 28 | `declaration-track:65149fc0d649e46a9b9d04b6c1a7d7a242497e6835bf144da3f7741631abcad3` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/sigma1--8a0efc764a6618a7b2a581f9.md) | 30 | `declaration-track:8a0efc764a6618a7b2a581f9fe7417866186d31b5e1fb69388baa7e6035a7627` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/sigma2--04711f6680f4cb0c5b819ae9.md) | 32 | `declaration-track:04711f6680f4cb0c5b819ae9bff29a70b2438588325c63ecc8f308bcb78c193c` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/braid-relation--0f317b116571612775adb245.md) | 34 | `result-track:0f317b116571612775adb245bd009be53e91c318490b0c6f3c6617a4bc9b323e` |
| 7 | `def` | [upperGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/uppergenerator--444353e592c669a48c47d3fb.md) | 42 | `declaration-track:444353e592c669a48c47d3fb78e9216fd402476f7085e1da6564c2db7d879aca` |
| 8 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/lowergenerator--eb048236b43d4fced6ec50f5.md) | 45 | `declaration-track:eb048236b43d4fced6ec50f53dc9a904e9af19434a7bf0d53cb02ba70c46a4a8` |
| 9 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/matrix-braid-relation--2be67fb24790781cb435877b.md) | 48 | `result-track:2be67fb24790781cb435877ba3a120ea990ef31d573d9ba6310cdcd52920a98f` |
| 10 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/generatormatrix--3b2888b11352fc763ee10c2d.md) | 56 | `declaration-track:3b2888b11352fc763ee10c2d74645a2eea6d01e458bdae2743d23528c5414d41` |
| 11 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/matrix-relator-identity--1c065be83f099f01f221f81b.md) | 58 | `result-track:1c065be83f099f01f221f81b926758629eaa4f55bdc7a9e626d1d2ae05a9260a` |
| 12 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/matrixrepresentation--00a9e0f75c67ba20034fcc8a.md) | 68 | `declaration-track:00a9e0f75c67ba20034fcc8a625daca3ccde39466d269d039f14a099d55acf42` |
| 13 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/matrixrepresentation-sigma1--a31401fa90e294616ab5127c.md) | 71 | `result-track:a31401fa90e294616ab5127cd8d543c3a72aac92751c9abc6f90d95cd5085ec6` |
| 14 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/matrixrepresentation-sigma2--5059279dcf09ad5db690a423.md) | 74 | `result-track:5059279dcf09ad5db690a4237123395ddb3122c16f20d6feb009a90a57c5677f` |
| 15 | `def` | [generatorExponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/generatorexponent--ddb565955660632ba641c8a6.md) | 78 | `declaration-track:ddb565955660632ba641c8a6ad99f5f9a4a8acc92164ddec8c926aa94dfd21d7` |
| 16 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/exponent-relator-identity--50a684af0acfd65dcd24d422.md) | 80 | `result-track:50a684af0acfd65dcd24d4222391df24332f5eac9954d615063bcb8439e64378` |
| 17 | `def` | [exponentHom](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/exponenthom--2d589a6c1a5453fbcc2900f7.md) | 88 | `declaration-track:2d589a6c1a5453fbcc2900f737ba7bd499f466e30e983b88cd934b3ea15681c0` |
| 18 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/exponenthom-sigma1--2325008267b9916492ad3bfd.md) | 91 | `result-track:2325008267b9916492ad3bfdb65c8095f3b91ed2c06ba16eb9fee96a57827ce5` |
| 19 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/exponenthom-sigma2--4f5f3eb8584af20c6cdef7f3.md) | 94 | `result-track:4f5f3eb8584af20c6cdef7f3587ab12876a5d137545d9efa828db2209420c037` |
| 20 | `def` | [lostBraid](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/lostbraid--ee41bb11ca6d548b5cbbaa28.md) | 98 | `declaration-track:ee41bb11ca6d548b5cbbaa28a1fd72eb2b7d2ef566c1c2376355f4dfc5d5788c` |
| 21 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/generator-product-matrix--9286ea1d8401843b674ce5b2.md) | 100 | `result-track:9286ea1d8401843b674ce5b28f4e182c4c1ff4188c5afad43b7be4ff7e8eab7c` |
| 22 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/generator-product-sixth--26e2ccb87a99d9609675aa69.md) | 107 | `result-track:26e2ccb87a99d9609675aa69ce0bd37bad12106fbc6820c3ae4d443550592523` |
| 23 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/lostbraid-matrix-identity--beb204029cc78d2f1d55a232.md) | 113 | `result-track:beb204029cc78d2f1d55a2321a2c8f404a10c36db4111607f96cedd08fde6154` |
| 24 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/lostbraid-exponent--13fc87521f43b85287175ebf.md) | 117 | `result-track:13fc87521f43b85287175ebf8856254fe8071ba48edfd6effd9f32b587580a07` |
| 25 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/lostbraid-ne-one--19dbf84cb5ce59eba6606c46.md) | 120 | `result-track:19dbf84cb5ce59eba6606c463fe22ac8c834d79a5a652f1a15f47ea70382aa7b` |
| 26 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variantb77c887fdae27825b65fcc4b301fc0d0ea230d13deb1afb9f0b74e519912acfb.lean/declarations/matrixrepresentation-not-injective--8602189e2c0272a37abb546a.md) | 126 | `result-track:8602189e2c0272a37abb546a09fbca81da4eef9fcadae6962140f7ffa76d04c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

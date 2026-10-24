# Verification target: GRWTSK.Algebra.LinearAlgebra.Integer.Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86f406e3a9c638fe4f14e50a5019f2584ea63c3e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86f406e3a9c638fe4f14e50a5019f2584ea63c3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_mul_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/map-mul-natcast--c87e9a001b848345a362f7ce.md) | 47 | `result-track:c87e9a001b848345a362f7ce2ac984a7274f34d8fb42bb9bbadf60c3702bfe6f` |
| 2 | `lemma` | [map_mul_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/map-mul-intcast--e52f5232ba7c1b5423bbdb69.md) | 51 | `result-track:e52f5232ba7c1b5423bbdb6986a1e84341979c4fd71f14bec518cdc60a963806` |
| 3 | `lemma` | [map_mul_ratCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/map-mul-ratcast--e5c3407789794ad1ff395ab8.md) | 55 | `result-track:e5c3407789794ad1ff395ab8d2140b6b7a66a5f24ee521c16eb6a77437345ba9` |
| 4 | `def` | [den](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den--d54b8843a1b9149845ae1fe8.md) | 65 | `declaration-track:d54b8843a1b9149845ae1fe80f4bc8deafcacca90401e01de9dee24ed58d06c4` |
| 5 | `def` | [num](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num--e02372bbbf96cc4f669d623c.md) | 69 | `declaration-track:e02372bbbf96cc4f669d623ce17fcc740e684c91b30a6df8a9112606f74ccf6f` |
| 6 | `lemma` | [den_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-ne-zero--54e049e5d8a2d97ff996d5e1.md) | 71 | `result-track:54e049e5d8a2d97ff996d5e12c1b55cc9c8b1914763076c33302ab86c49293f2` |
| 7 | `lemma` | [num_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-eq-zero-iff--ec3ce54b48081d773d7cd981.md) | 74 | `result-track:ec3ce54b48081d773d7cd981325aa5e5777bf4b45498d6e7d50e84bc723ee501` |
| 8 | `lemma` | [den_dvd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-dvd-iff--de10cf8180d9b3b84b1c9129.md) | 77 | `result-track:de10cf8180d9b3b84b1c912948b397ca0c4936f3a1d215afc5097dc09a50952c` |
| 9 | `lemma` | [num_div_den](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-div-den--4d4d4c542fb0ff51e7e21cd3.md) | 81 | `result-track:4d4d4c542fb0ff51e7e21cd37169ac16e7726ec85743151570e31a69379c5a9b` |
| 10 | `lemma` | [inv_denom_smul_num](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/inv-denom-smul-num--4f08084d6696e72e08c1dca3.md) | 88 | `result-track:4f08084d6696e72e08c1dca3bbb24846fefc3abe994ff57ea913af0a155b06ae` |
| 11 | `lemma` | [den_neg](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-neg--f5f04be7c2e2002488911697.md) | 94 | `result-track:f5f04be7c2e20024889116978e38b68a297c58d685045f4e0d08ec304ed5a900` |
| 12 | `lemma` | [num_neg](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-neg--52be954558fd9d84bb40eca5.md) | 98 | `result-track:52be954558fd9d84bb40eca5ee3004b01c18c391e8dcc53a8fc287f949007ed9` |
| 13 | `lemma` | [den_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-transpose--64579dadb0bcebf060134804.md) | 102 | `result-track:64579dadb0bcebf060134804f68a1874c9ae384dcda8f233d86fad86144f4057` |
| 14 | `lemma` | [num_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-transpose--2796ad894b865e75ab89adfe.md) | 105 | `result-track:2796ad894b865e75ab89adfe6b33d2dfb9eca19a374cec3556d8d22f4f2e16a5` |
| 15 | `lemma` | [den_map_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-map-intcast--141b70c90d6b30ce2e853169.md) | 113 | `result-track:141b70c90d6b30ce2e853169b72e65cde0ab7d3ccb2d7f497ecd5207d9d05f07` |
| 16 | `lemma` | [num_map_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-map-intcast--f42449ff1fc86f5a6ebb4f07.md) | 117 | `result-track:f42449ff1fc86f5a6ebb4f07542eced806e6ed500f7c6c0b03e763941d7a4998` |
| 17 | `lemma` | [den_map_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-map-natcast--35f972205c53304c58dd71b6.md) | 121 | `result-track:35f972205c53304c58dd71b6c547de31757e372313d261aaeb50e0307873ddf6` |
| 18 | `lemma` | [num_map_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-map-natcast--7352e0e3c62757de56c8de5e.md) | 125 | `result-track:7352e0e3c62757de56c8de5e46d8ac31c590441bcbfde03524578589596e7421` |
| 19 | `lemma` | [den_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-natcast--fb5a0a804799be00ddea25ee.md) | 133 | `result-track:fb5a0a804799be00ddea25ee942faef5fdfb3fc95a2535209c874d413e8d6d5d` |
| 20 | `lemma` | [num_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-natcast--d67a83c816f82550fb92c3bf.md) | 137 | `result-track:d67a83c816f82550fb92c3bff2410f1ba467b431f91166cc6078a9b9530f4952` |
| 21 | `lemma` | [den_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-ofnat--3c42d3569ff0bd9902c9cdaf.md) | 141 | `result-track:3c42d3569ff0bd9902c9cdafc545a30f3c79cf3f215bd8c974cc7b8e136b26c2` |
| 22 | `lemma` | [num_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-ofnat--686ef88f337501b9c3e9dbcb.md) | 146 | `result-track:686ef88f337501b9c3e9dbcb71dfbd7352654069fd99c507656fa6e7e7a15e01` |
| 23 | `lemma` | [den_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-intcast--98b1a781c9518cc192972005.md) | 151 | `result-track:98b1a781c9518cc1929720054189743e6ba1ca508a43232af989a06e7986b8bc` |
| 24 | `lemma` | [num_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-intcast--4c674fabac32029971a56da8.md) | 155 | `result-track:4c674fabac32029971a56da863fef58e36165b722eb34554eca09f13d5ecc50c` |
| 25 | `lemma` | [den_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-zero--1a7d25b0e92917d9996444c3.md) | 159 | `result-track:1a7d25b0e92917d9996444c3c1fe6fcb834946c38ba7bb1d9c1e995ee4addcfd` |
| 26 | `lemma` | [num_zero](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-zero--57a99190d049870726cd6779.md) | 163 | `result-track:57a99190d049870726cd67796a4520013c2fc6ecb7f1a3d54292a4976d62d322` |
| 27 | `lemma` | [den_one](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/den-one--bd362c3f29193a3f8225df59.md) | 167 | `result-track:bd362c3f29193a3f8225df593913c0318f3356de24108ddbe0affab0b2a0866b` |
| 28 | `lemma` | [num_one](../../../../../mathematics/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/declarations/num-one--26ac5c8bb46d82b6d19eb21b.md) | 171 | `result-track:26ac5c8bb46d82b6d19eb21b56c085a0a5c8b46717d1107ff5a8e5de566bb48d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

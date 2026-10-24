# Verification target: GRWTSK.Algebra.LinearAlgebra.BinaryMatrix.Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "702913a371aa7b2651aad0b55160b65e53a8cd93",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `702913a371aa7b2651aad0b55160b65e53a8cd93`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BinMat](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/binmat--d70d4eb8d4d9ae803b25c513.md) | 31 | `declaration-track:d70d4eb8d4d9ae803b25c513172397756bd8d37739be3bc3cea86afa5721edd4` |
| 2 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/map--fd188ca1b7b3adb99e3fe2e7.md) | 40 | `declaration-track:fd188ca1b7b3adb99e3fe2e7401eb153496e63500dc3a145280d7642d4daa91c` |
| 3 | `def` | [zipWith](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/zipwith--00a082e2dc7d7bec83a9b6d2.md) | 45 | `declaration-track:00a082e2dc7d7bec83a9b6d239f87eefb35fe526396e7269b428f42b4c5630f7` |
| 4 | `def` | [and](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/and--a2b6fd52fb9446040395d2c0.md) | 53 | `declaration-track:a2b6fd52fb9446040395d2c0150d7d8fe31359dc2a8c2e709a3996ca46b4edd2` |
| 5 | `def` | [or](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/or--5344dd6efdd3adbb3b3340a5.md) | 58 | `declaration-track:5344dd6efdd3adbb3b3340a55cd5dc4f218830399f8a8f9a31be59fdd6047448` |
| 6 | `def` | [xor](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/xor--4ee8d57181b83bdbd5761474.md) | 63 | `declaration-track:4ee8d57181b83bdbd5761474fd3e90a6d9846d2237f5672d279e81b514c9e4e1` |
| 7 | `def` | [not](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/not--099bacd07ef44a00577d3fac.md) | 68 | `declaration-track:099bacd07ef44a00577d3fac644bf8eb908917aba4b2d3d454995330510eca1c` |
| 8 | `theorem` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/map-apply--4e031f630dfe651fbf465fae.md) | 72 | `result-track:4e031f630dfe651fbf465faefa75ed8ca19f061a16a0ce1d96bac359634b9467` |
| 9 | `theorem` | [zipWith_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/zipwith-apply--0f6c210d6a491a82d9a69f0e.md) | 81 | `result-track:0f6c210d6a491a82d9a69f0e81e0c7e103c0a1b274483c075f1e6f2d094c692b` |
| 10 | `theorem` | [and_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/and-apply--6010c973b588048257d3fb77.md) | 90 | `result-track:6010c973b588048257d3fb771b70370044c938f96fcc58a7d8730a3fde9f0243` |
| 11 | `theorem` | [or_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/or-apply--71525fc6c05bb8150b7aaaf3.md) | 98 | `result-track:71525fc6c05bb8150b7aaaf357f8de7463788aed068a98a73fcc7910106f2b66` |
| 12 | `theorem` | [xor_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/xor-apply--7c0f08c412c28e1b45170a99.md) | 106 | `result-track:7c0f08c412c28e1b45170a99301baa9ce968317aeea0497166b748e4fcb4d975` |
| 13 | `theorem` | [not_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/not-apply--a8a83cb8d54280eac6ea50de.md) | 114 | `result-track:a8a83cb8d54280eac6ea50de09d75e8e21e2880248ccd00836454fab9120d9c0` |
| 14 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/ext--be8670e03fa970fe8c570ec2.md) | 123 | `result-track:be8670e03fa970fe8c570ec28332843979279667b9c15479f41bc5338f7df03d` |
| 15 | `theorem` | [and_comm](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/and-comm--78a131c846baa29a6cb1715b.md) | 130 | `result-track:78a131c846baa29a6cb1715bddf35b7fe96f614bb4ae3766e76ca02d56adcfff` |
| 16 | `theorem` | [and_assoc](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/and-assoc--843b663f9089ead058c677a2.md) | 138 | `result-track:843b663f9089ead058c677a22ebf643e15526af44342af8fb14353ab25435a9b` |
| 17 | `theorem` | [or_comm](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/or-comm--5759313c09c6c2ea013e704b.md) | 147 | `result-track:5759313c09c6c2ea013e704b10a86c651df236f351c1f0ae856d3c222d83267c` |
| 18 | `theorem` | [xor_comm](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/xor-comm--d35b426d0e48bb31999723a3.md) | 155 | `result-track:d35b426d0e48bb31999723a3f2587339ec7364d9496c79ded58b6d6d0ce9273c` |
| 19 | `theorem` | [not_not](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/not-not--585ae4547f108ae4f9881f3f.md) | 163 | `result-track:585ae4547f108ae4f9881f3fe722c42a1ec956bc1ae461a4b0e8eb8c0854fa43` |
| 20 | `structure` | [BinMatMut](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/binmatmut--f758ab29a38edd8ecaa1fb22.md) | 181 | `declaration-track:f758ab29a38edd8ecaa1fb22e7ee8e97383a3571cfbf6eaaf1bc80dbfaf7104a` |
| 21 | `def` | [flatIdx](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/flatidx--1a80a6af25fc8af7b8315c5e.md) | 195 | `declaration-track:1a80a6af25fc8af7b8315c5e2866afd28be25e004bbb703c85334f241368d413` |
| 22 | `def` | [ofArray?](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/ofarray--007bb3a700767b59b5540e90.md) | 214 | `declaration-track:007bb3a700767b59b5540e90cb98795af3b1f1a21fb330cbdb1ed7d996d505a6` |
| 23 | `def` | [fill](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/fill--500b2fa086156e7201a9e57c.md) | 225 | `declaration-track:500b2fa086156e7201a9e57cf5dc0ad55bba0c77c6eb94f25e163084aec5a65b` |
| 24 | `def` | [get](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/get--cb14b2eb5583878147827328.md) | 238 | `declaration-track:cb14b2eb5583878147827328977bcc5f45ecdb6f440b869e65fc6e3544a48fbb` |
| 25 | `def` | [toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/todecl--a2dd26b5589755a8d774ce15.md) | 248 | `declaration-track:a2dd26b5589755a8d774ce151519437b50f13a20b92c93da5b2999e1a6c05ea5` |
| 26 | `def` | [mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/mapinplace--3c388aa11509e41a27d3349a.md) | 260 | `declaration-track:3c388aa11509e41a27d3349a513f11c3901aae4fc0009f1b30d636848c9bcd8a` |
| 27 | `def` | [zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/zipwithinplace--47c4a18f44bb55e0d3ecd5bc.md) | 274 | `declaration-track:47c4a18f44bb55e0d3ecd5bc8d0ae505d9e17a605006959f513ecffccc82e258` |
| 28 | `def` | [andInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/andinplace--c83335365d06ca7d11ebe859.md) | 288 | `declaration-track:c83335365d06ca7d11ebe859687cb23d8aab41d137ba795b953a322cc8ef2510` |
| 29 | `def` | [orInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/orinplace--e47e91a34a35f42a8f11dcbf.md) | 294 | `declaration-track:e47e91a34a35f42a8f11dcbf7ec69821dcd7d43fc7b05b326ef861920b4d31d2` |
| 30 | `def` | [xorInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/xorinplace--004fdea36b379e5a8c8866f0.md) | 300 | `declaration-track:004fdea36b379e5a8c8866f0dda53e991e4cf8ebb1466f6a15090798a551b1ff` |
| 31 | `def` | [notInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/notinplace--93a185d9843959721e7eb524.md) | 306 | `declaration-track:93a185d9843959721e7eb5241c21c6c92ef3f5342f7269ce2390492af17f6539` |
| 32 | `theorem` | [get_mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/get-mapinplace--83d5423c06881f2163d0bac7.md) | 318 | `result-track:83d5423c06881f2163d0bac7992ed76042ce3f759aae587c49e93e30963ff451` |
| 33 | `theorem` | [get_zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/get-zipwithinplace--eb1848505b79ca050d1327b1.md) | 329 | `result-track:eb1848505b79ca050d1327b16b15cafea1b26020b186dfcbc81f59c63bd7e9d5` |
| 34 | `theorem` | [mapInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/mapinplace-spec--fb0f0c05bd16997227af4ba7.md) | 343 | `result-track:fb0f0c05bd16997227af4ba72a7af09a7a7ef8ca19a6b2ff156f035e66d3a3a7` |
| 35 | `theorem` | [zipWithInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/zipwithinplace-spec--4f946178fe3c12c95e07d7bb.md) | 358 | `result-track:4f946178fe3c12c95e07d7bb65300ee89a3134f9416a41af7292b7d34a48aba8` |
| 36 | `theorem` | [andInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/andinplace-spec--7300d23b51df0c0891056af3.md) | 367 | `result-track:7300d23b51df0c0891056af3cd24ed008d20d9d2b79858b964fb8c97fc846b8b` |
| 37 | `theorem` | [orInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/orinplace-spec--f951398930503c3df81c8eab.md) | 374 | `result-track:f951398930503c3df81c8eabe9460666d58b6420c7d8b45b7fac50b0c597672b` |
| 38 | `theorem` | [xorInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/xorinplace-spec--bb584e4f682e1e48076eacd2.md) | 381 | `result-track:bb584e4f682e1e48076eacd24a6d076ada0542b95ec51188340a3af4059833e7` |
| 39 | `theorem` | [notInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/notinplace-spec--2cc8b4c65ad27ffcdab8c4ab.md) | 388 | `result-track:2cc8b4c65ad27ffcdab8c4ab6a5f10c52853b41c34a739a349c9d196417a98e5` |
| 40 | `def` | [Refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/refines--fd3c44548a2f3f1719b852e2.md) | 402 | `declaration-track:fd3c44548a2f3f1719b852e2c8303e058e584778333ba91f630215e7bc615a58` |
| 41 | `theorem` | [refines_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/refines-todecl--88b14194257c6954dc6a36ea.md) | 408 | `result-track:88b14194257c6954dc6a36eae6b8d3f8b0ed5b8b2d973c15c78897086c063790` |
| 42 | `theorem` | [mapInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/mapinplace-refines--0202eaa73c7bc9696543e97f.md) | 416 | `result-track:0202eaa73c7bc9696543e97fcfea3256a1c09459ded33a8c2b042ca085be7e23` |
| 43 | `theorem` | [zipWithInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/zipwithinplace-refines--18353378e38000b7233a7d5e.md) | 430 | `result-track:18353378e38000b7233a7d5efcf03970fab7342ffa77c536d26c5ff6080b6a8d` |
| 44 | `theorem` | [andInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/andinplace-refines--aff0bcd9a57f0eaaa215c041.md) | 442 | `result-track:aff0bcd9a57f0eaaa215c04168303ea48df338b78615fa83f46e743822c20354` |
| 45 | `theorem` | [andInPlace_comm_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/andinplace-comm-todecl--dcddd99e2188136f8db3909f.md) | 467 | `result-track:dcddd99e2188136f8db3909f74c28a23a9f020f15c60718160b4e4f31feabc41` |
| 46 | `theorem` | [andInPlace_assoc_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/andinplace-assoc-todecl--dd95f9aac075ecf9728176e3.md) | 474 | `result-track:dd95f9aac075ecf9728176e34372d541225a943cf323debec371607537b14613` |
| 47 | `theorem` | [notInPlace_involutive_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84.lean/declarations/notinplace-involutive-todecl--1000f29ce69d2dcb498b7bf4.md) | 482 | `result-track:1000f29ce69d2dcb498b7bf4471679a69aa521054608a6ceed6d16511d76d5f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

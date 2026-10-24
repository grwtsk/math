# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6c712637d344205b91ae33b852ba21205d5bc0e",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6c712637d344205b91ae33b852ba21205d5bc0e`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distrib](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/distrib--e632c3679a04ed0db49740b4.md) | 31 | `declaration-track:e632c3679a04ed0db49740b4ab9a4fb7c488c6eb08633f6df988eaae6773d610` |
| 2 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/mulzeroclass--cba5f96abcb9d63c6b42fb42.md) | 36 | `declaration-track:cba5f96abcb9d63c6b42fb42af146a80cc8b45587a7555397b72e4e63be95069` |
| 3 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/mulzerooneclass--9520e43b786155d0cf5edd12.md) | 42 | `declaration-track:9520e43b786155d0cf5edd129263f020caa9b8e0ac71587f4e8177b68fb71671` |
| 4 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/semigroupwithzero--42b024c50aac4c7c0bda577a.md) | 45 | `declaration-track:42b024c50aac4c7c0bda577a3046fae822e429c7170333f972cfb1da82a2da17` |
| 5 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/monoidwithzero--f1599f6671ef8145e831f471.md) | 48 | `declaration-track:f1599f6671ef8145e831f471cd627af018c64606822ae0439b2d75fb79347e16` |
| 6 | `instance` | [nonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalnonassocsemiring--5bcfbba55fd20b565e41bb4a.md) | 51 | `declaration-track:5bcfbba55fd20b565e41bb4a9fdf88f726c78f12d097f4849f95be1182d6b9bf` |
| 7 | `instance` | [nonUnitalSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalsemiring--b11224f254c742e7a8d64100.md) | 54 | `declaration-track:b11224f254c742e7a8d64100df49e5a40bc87b6c31f49d60dce4b45df1be8357` |
| 8 | `instance` | [nonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonassocsemiring--f4b3b89443f06a9cf73b893c.md) | 57 | `declaration-track:f4b3b89443f06a9cf73b893c2439650ee5fce336d15628fd094763de4e5f0134` |
| 9 | `instance` | [semiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/semiring--b1e66f8b218ceb6f87547e84.md) | 61 | `declaration-track:b1e66f8b218ceb6f87547e8450626bd43eac6c30d643ad3c44064e9d00eadbd9` |
| 10 | `instance` | [nonUnitalCommSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalcommsemiring--fb255426de6376cf14be0933.md) | 65 | `declaration-track:fb255426de6376cf14be0933861ce9feb6b2cd4c21b6113dbade4cebfb4a4ae3` |
| 11 | `instance` | [commSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/commsemiring--0fecef24738ed190d506103e.md) | 68 | `declaration-track:0fecef24738ed190d506103ed44d5b5a25e4b63c2675cacc4aea3fc618dc4e82` |
| 12 | `instance` | [nonUnitalNonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalnonassocring--4cad6feabf8ace19a78f33a6.md) | 71 | `declaration-track:4cad6feabf8ace19a78f33a65eb4b82e69520aec6f73d14b018cf225670fefd1` |
| 13 | `instance` | [nonUnitalRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalring--4e4cbbab66bb92f8c7713256.md) | 75 | `declaration-track:4e4cbbab66bb92f8c77132563d811dcbfe1a38ab377ef169e4709fb5dc03ce6e` |
| 14 | `instance` | [nonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonassocring--44f5deaf29f533c76e491a23.md) | 79 | `declaration-track:44f5deaf29f533c76e491a23222a635ac28991183f654f10bd50b8bbe7cdb80e` |
| 15 | `instance` | [ring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/ring--e180c16ba14a5a3bebf24008.md) | 83 | `declaration-track:e180c16ba14a5a3bebf24008c0fb6e84fbcf73ea38d46590912be2682240cdb2` |
| 16 | `instance` | [nonUnitalCommRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalcommring--ea76511c2dddc4f70e855de6.md) | 86 | `declaration-track:ea76511c2dddc4f70e855de645875218d1545b4f1c60fe736935d2edd1bb79b7` |
| 17 | `instance` | [commRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/commring--f8c016ec8ebb66b95e81d2d2.md) | 90 | `declaration-track:f8c016ec8ebb66b95e81d2d2fe870a947388d3d911feed63c317b1464e632ba5` |
| 18 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nozerodivisors--a734e6d1e64b28588c1347a4.md) | 93 | `declaration-track:a734e6d1e64b28588c1347a404c4907427c4994b43085bf2d8a7b98b45ee59fd` |
| 19 | `instance` | [isDomain](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/isdomain--b257257f0afda4f09bfd91df.md) | 98 | `declaration-track:b257257f0afda4f09bfd91df32530c03868203b88360b6bcbbc63313506ce1ce` |
| 20 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/groupwithzero--ffe52695ea951ad00e81d1f7.md) | 101 | `declaration-track:ffe52695ea951ad00e81d1f7af69d7a90e5715c6f2bbd3c4eb64889da430d35a` |
| 21 | `instance` | [distrib](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/distrib--6a56c21fcb5b1588b3792ed2.md) | 111 | `declaration-track:6a56c21fcb5b1588b3792ed278f8ed503fdd957571fc1a723d83b4d12a16d766` |
| 22 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/mulzeroclass--d7c62633bd78bb08946d1fc1.md) | 116 | `declaration-track:d7c62633bd78bb08946d1fc129a2193f55efedc7fdc64d165c5868c9f765fd1f` |
| 23 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/mulzerooneclass--ce8b6f4b252fe8e956c3e085.md) | 122 | `declaration-track:ce8b6f4b252fe8e956c3e0859375598d5908fca08d1b3bdbd5263c33220d354e` |
| 24 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/semigroupwithzero--886c1c1328b5e1e3c69bf4ae.md) | 125 | `declaration-track:886c1c1328b5e1e3c69bf4ae3e8f07f1550e7503a71ab170cd5af8e830ad103a` |
| 25 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/monoidwithzero--2ca805450b8abba67c84f752.md) | 128 | `declaration-track:2ca805450b8abba67c84f7521f7ac913139e74741cc7bd11c924a77c209e3eac` |
| 26 | `instance` | [nonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalnonassocsemiring--c5bfaf17c97077b909af766e.md) | 131 | `declaration-track:c5bfaf17c97077b909af766ee19c6e4fe846bb1f21228624cae9f4fd7c7aa57a` |
| 27 | `instance` | [nonUnitalSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalsemiring--873fd61e97dac93554c55352.md) | 134 | `declaration-track:873fd61e97dac93554c5535258a391f47e6beaf6df74a0f775f13867adf7a38a` |
| 28 | `instance` | [nonAssocSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonassocsemiring--b5151df9aab6f759b12a6408.md) | 137 | `declaration-track:b5151df9aab6f759b12a64085ac8527410a4113ab56c6b782908c423c4a14a0c` |
| 29 | `instance` | [semiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/semiring--e204ef8961e1fa76300dfa68.md) | 141 | `declaration-track:e204ef8961e1fa76300dfa6888af3986d8f6a4f8f5d135997e41fdf8b45b872a` |
| 30 | `instance` | [nonUnitalCommSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalcommsemiring--d1f36975c44135adc0602c46.md) | 145 | `declaration-track:d1f36975c44135adc0602c464b9a0ea8d9f3be7ab69f4324d986c240739b1b04` |
| 31 | `instance` | [commSemiring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/commsemiring--e6ecb173d3348f7e5dc5e7ca.md) | 148 | `declaration-track:e6ecb173d3348f7e5dc5e7caa0c5c6b38c077a9e5ac93e2fd58bf5bfca4559dc` |
| 32 | `instance` | [nonUnitalNonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalnonassocring--838f46e4fa1756ebb394b237.md) | 151 | `declaration-track:838f46e4fa1756ebb394b237bcbfbf84ae3b24a260d23a7a1643469f66336902` |
| 33 | `instance` | [nonUnitalRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalring--cc0929d72a106e88626c5ca0.md) | 154 | `declaration-track:cc0929d72a106e88626c5ca0482a9e872bc48f6086dad1cb11b7c9a5dedfdbd9` |
| 34 | `instance` | [nonAssocRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonassocring--2b5ad87ff8b717a84447ecdf.md) | 157 | `declaration-track:2b5ad87ff8b717a84447ecdf397ef20304d9836bdc49ea17da1e1b809ab288e8` |
| 35 | `instance` | [ring](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/ring--79a11b760cec030d2c3e80e2.md) | 160 | `declaration-track:79a11b760cec030d2c3e80e220531258960b14bdfd4d5b876786604fa2cf5927` |
| 36 | `instance` | [nonUnitalCommRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalcommring--b0cd79862bf663ff360814a1.md) | 163 | `declaration-track:b0cd79862bf663ff360814a1c48d8a76b3b6ddff54ab1a972caeb7d5bf03a8dd` |
| 37 | `instance` | [commRing](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/commring--1e561e66f0b5a196357e7ec3.md) | 166 | `declaration-track:1e561e66f0b5a196357e7ec32c397ff35b3a24d79316ffc405e43b32e3efba1a` |
| 38 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nozerodivisors--3156625b3b12b4eccecdcdc5.md) | 169 | `declaration-track:3156625b3b12b4eccecdcdc5975c3c2d0c32f48880e58ab9ab05b7f243079e26` |
| 39 | `instance` | [isDomain](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/isdomain--85b338c2e54564967fb78b03.md) | 174 | `declaration-track:85b338c2e54564967fb78b03b136f86b518c1f6705b0632117aec7736681c587` |
| 40 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/groupwithzero--f1ba3ea9683792f7731382d4.md) | 177 | `declaration-track:f1ba3ea9683792f7731382d438ac285792ae8cbd0805922c5d7722e92d3aa366` |
| 41 | `def` | [NonUnitalRingHom.toOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalringhom-toopposite--03a05063ef5dbb2a3719371c.md) | 190 | `declaration-track:03a05063ef5dbb2a3719371c8a9fd8def5000e1e70abe4d107dedb0ee4eb93bb` |
| 42 | `def` | [NonUnitalRingHom.fromOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalringhom-fromopposite--ef439c790524b963c7ac207a.md) | 199 | `declaration-track:ef439c790524b963c7ac207a4916953252bc9da76baad09ee33443a5db6a079d` |
| 43 | `def` | [NonUnitalRingHom.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalringhom-op--3f02063b608002f540eeacac.md) | 208 | `declaration-track:3f02063b608002f540eeacac8463b63953e6208dd40272ece51a9ec482dc7887` |
| 44 | `def` | [NonUnitalRingHom.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/nonunitalringhom-unop--6c36b0d8a656bdda0167b7c8.md) | 219 | `declaration-track:6c36b0d8a656bdda0167b7c867fe31070f30b3f44b54caf08d2716f5b34a5292` |
| 45 | `def` | [RingHom.toOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/ringhom-toopposite--5fa8ea468843f36a1c93a018.md) | 227 | `declaration-track:5fa8ea468843f36a1c93a01880ea37224c30b1200dade82ef4ffbc37b45c11f9` |
| 46 | `def` | [RingHom.fromOpposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/ringhom-fromopposite--bb1956ffeb2c38c52ba6e4bd.md) | 237 | `declaration-track:bb1956ffeb2c38c52ba6e4bd02ad402c6bfe45e770d3778853bda49db7703043` |
| 47 | `def` | [RingHom.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/ringhom-op--82a95ef07054c290933d47d0.md) | 247 | `declaration-track:82a95ef07054c290933d47d0bc456fcbd004c0514bdc8272afac11ae926fffb7` |
| 48 | `def` | [RingHom.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd6c94bb6a391d15b514e806a46636263629f680fdd3466fbc59fad4346202acc.lean/declarations/ringhom-unop--bf6475d105811e686e8f2d76.md) | 258 | `declaration-track:bf6475d105811e686e8f2d76485fcee4f1a0cbcdbd2eeed829670450cc971660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

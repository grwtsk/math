# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e9101f0af4fa771697b80968d78f2dffb7484e0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e9101f0af4fa771697b80968d78f2dffb7484e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TensorPower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/tensorpower--5c777e98aaf219173ddc3a6c.md) | 36 | `declaration-track:5c777e98aaf219173ddc3a6ce3d6b68e8bc89cc3329090fc7bfdf17f11fcf51d` |
| 2 | `theorem` | [gradedMonoid_eq_of_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gradedmonoid-eq-of-reindex-cast--7806055f433a05a1ce2246a0.md) | 49 | `result-track:7806055f433a05a1ce2246a03062970cf3a06e8a4f6bf4359067ba6eb2285b5f` |
| 3 | `instance` | [gOne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gone--e5c4f0c2f993101c6e5f0e4b.md) | 65 | `declaration-track:e5c4f0c2f993101c6e5f0e4b3c1352ecf357598eabefa75a83bab691e37edb22` |
| 4 | `theorem` | [gOne_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gone-def--475b2653e66061dfa0e8102b.md) | 69 | `result-track:475b2653e66061dfa0e8102bec1d1b3b7f4123245a2c1580d850eb78aa8d29cd` |
| 5 | `def` | [mulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/mulequiv--efdcd83d863c0500ca72b87e.md) | 73 | `declaration-track:efdcd83d863c0500ca72b87ecc3931f7429ae8505cc061f5647dcac8c448a31c` |
| 6 | `instance` | [gMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gmul--eac0cce452707f8a3bddae69.md) | 77 | `declaration-track:eac0cce452707f8a3bddae697656d3b71afe4614ea9e76f2cf006c12edf55f15` |
| 7 | `theorem` | [gMul_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gmul-def--e91175817e62641396a197d0.md) | 83 | `result-track:e91175817e62641396a197d0d8f6624fd7c3effae0c7c9ce608b9f6f71dd420a` |
| 8 | `theorem` | [gMul_eq_coe_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gmul-eq-coe-linearmap--17284c188746f110d6a68016.md) | 87 | `result-track:17284c188746f110d6a680167d80352c52b0fb8b663f266b89b0b004f2ec62ec` |
| 9 | `def` | [cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/cast--bdeb0f833e0b57581e6808e3.md) | 95 | `declaration-track:bdeb0f833e0b57581e6808e3cce937f81783e010a353baafbde55683e54d008d` |
| 10 | `theorem` | [cast_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/cast-tprod--75230cb77a637afab788dc75.md) | 97 | `result-track:75230cb77a637afab788dc751fe350eb5712344d83a42cf26a866d05ae1466ac` |
| 11 | `theorem` | [cast_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/cast-refl--e76f73f6ec086086474e71f4.md) | 102 | `result-track:e76f73f6ec086086474e71f4428f4b8a2f59ee213b51c4fdf3fe6576ca872472` |
| 12 | `theorem` | [cast_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/cast-symm--b5885037352761bd07d61f1f.md) | 106 | `result-track:b5885037352761bd07d61f1f6afe747e5f049c225f16f81a89a065420cce358b` |
| 13 | `theorem` | [cast_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/cast-trans--64a864f28200c6687ebf10ed.md) | 110 | `result-track:64a864f28200c6687ebf10ed043f598a79ec84682b2e6a6396b19c41e332e6f8` |
| 14 | `theorem` | [cast_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/cast-cast--836742c589d1307e3406e5f9.md) | 117 | `result-track:836742c589d1307e3406e5f9e6a3ec2f15b69755e94f6030224969aed5304401` |
| 15 | `theorem` | [gradedMonoid_eq_of_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gradedmonoid-eq-of-cast--bd45c728d445d987788cbcde.md) | 122 | `result-track:bd45c728d445d987788cbcde7e8915ca4f1fae4272804a4b831806d05de2b1ac` |
| 16 | `theorem` | [cast_eq_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/cast-eq-cast--c02f6ff4bab9e673931a27d6.md) | 128 | `result-track:c02f6ff4bab9e673931a27d6384245681af71d1dbf0de3b726b7b311a846cdb0` |
| 17 | `theorem` | [tprod_mul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/tprod-mul-tprod--afba3aab2aa7a3ad7eb8b201.md) | 135 | `result-track:afba3aab2aa7a3ad7eb8b201b096775a656a11fd9b0b0d22ad8f17ec8d4bdfd1` |
| 18 | `theorem` | [one_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/one-mul--b492640ca78f316e8d661ca3.md) | 145 | `result-track:b492640ca78f316e8d661ca32b1cbf9fb0b3e111a3ee92081a36d923798c738b` |
| 19 | `theorem` | [mul_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/mul-one--e8e17fda014319b15e9163e6.md) | 158 | `result-track:e8e17fda014319b15e9163e62ce90e93d24b806c9cbe9b554df5dd304f2d0d97` |
| 20 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/mul-assoc--458b239f84028c275b1e6fd2.md) | 171 | `result-track:458b239f84028c275b1e6fd23e974f05ced0e65a6999abd87727e281e6ad797a` |
| 21 | `instance` | [gmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gmonoid--2a83d7730a44b5cd080907a6.md) | 195 | `declaration-track:2a83d7730a44b5cd080907a6d8ff1e8a579d5850515854ae6ed416da3758fa3b` |
| 22 | `def` | [algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/algebramap--f9818d0d1492993c4c9754e1.md) | 203 | `declaration-track:f9818d0d1492993c4c9754e13d97629ae10993d6eac0dd88eacc61216aaf6ae0` |
| 23 | `theorem` | [algebraMap₀_eq_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/algebramap-eq-smul-one--e4e0eb60536798eaa4e28a52.md) | 206 | `result-track:e4e0eb60536798eaa4e28a524da938224fd268739027e7deb5c52b238ec5b14d` |
| 24 | `theorem` | [algebraMap₀_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/algebramap-one--7dd51756c2da13b4971a7d4b.md) | 209 | `result-track:7dd51756c2da13b4971a7d4b0490e8827cfdbc1e612e688fe98dc6b9e6eeb426` |
| 25 | `theorem` | [algebraMap₀_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/algebramap-mul--c4e7162e702fdc7684719c1a.md) | 212 | `result-track:c4e7162e702fdc7684719c1a62ef59b9916832bedff36741bcc3fed8219febc1` |
| 26 | `theorem` | [mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/mul-algebramap--cd93352c44fd9af2338fa045.md) | 217 | `result-track:cd93352c44fd9af2338fa045ac13ff9c296f0ae7c5b020721e881d7d923dc1f1` |
| 27 | `theorem` | [algebraMap₀_mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/algebramap-mul-algebramap--2b1512fbe8e5b31bfe2762f2.md) | 222 | `result-track:2b1512fbe8e5b31bfe2762f2915458b966ae94231e9efbef7ee479340af4483f` |
| 28 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/gsemiring--5ee39d4b0e689a8562609267.md) | 227 | `declaration-track:5ee39d4b0e689a856260926726337d4e78b94fa4adced6f6f7a469e3dad21fb3` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/example--fb5017c9b3e4313b0dae38bd.md) | 237 | `declaration-track:fb5017c9b3e4313b0dae38bd9107feb0774c9d540c6e641b10748d6415e81df0` |
| 30 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/galgebra--32a66fcc766b17740356f09e.md) | 242 | `declaration-track:32a66fcc766b17740356f09e8574f1cc3b6dc9fb85177b79844e33690f89e979` |
| 31 | `theorem` | [galgebra_toFun_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/galgebra-tofun-def--89c90347bffbaec41117457f.md) | 258 | `result-track:89c90347bffbaec41117457fa256d3c04fb19b8cc45970709445121d73a5c4b3` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant102783bc280850d96d7ee91eb48122411b2f174f6e03292b17b4a917f64fde7e.lean/declarations/example--402b82bc71a3ace76bab9604.md) | 262 | `declaration-track:402b82bc71a3ace76bab9604251a08c89da85feb78b6bbd211fd5d22e211b55c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

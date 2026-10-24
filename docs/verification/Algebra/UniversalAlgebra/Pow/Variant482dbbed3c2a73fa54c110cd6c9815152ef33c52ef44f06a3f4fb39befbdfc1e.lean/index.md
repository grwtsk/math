# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pow.Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8d8524fd49e3e930a51143fdc53a828e6926953",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8d8524fd49e3e930a51143fdc53a828e6926953`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Order` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_lt_pow_of_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-lt-pow-of-lt-left--e1b54f842325a1ceb8ccfd70.md) | 27 | `result-track:e1b54f842325a1ceb8ccfd70a23b8ebaa305b89656360f533bc1ce7ffffdd9ce` |
| 2 | `theorem` | [pow_lt_pow_of_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-lt-pow-of-lt-right--7db8ac79eaff5fd1cb995d31.md) | 31 | `result-track:7db8ac79eaff5fd1cb995d3119fa9d33c92f25c56700c6b8814c2e9094d4b0b2` |
| 3 | `theorem` | [pow_lt_pow_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-lt-pow-succ--92db287a88cfdde340ef5263.md) | 35 | `result-track:92db287a88cfdde340ef526360b9e5dbcf1945cc8abf81358e40d6619192f90e` |
| 4 | `theorem` | [le_self_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/le-self-pow--87b17fc77804558470bfa131.md) | 39 | `result-track:87b17fc77804558470bfa1317658052c1fcb3f60296f4fd2ab09cc36293c99e0` |
| 5 | `theorem` | [lt_pow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/lt-pow-self--5378b742dffcb379429ec0b5.md) | 44 | `result-track:5378b742dffcb379429ec0b56ea79cd1a232fe3ea76e887e5cca4a1fb7922ea7` |
| 6 | `theorem` | [lt_two_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/lt-two-pow--2a4b0ce6f4066615bfbc101e.md) | 52 | `result-track:2a4b0ce6f4066615bfbc101ec8d566dd8a354ffd3a5780bc2a5e0d5bb748becd` |
| 7 | `theorem` | [one_le_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-le-pow--f3c53c16b255a69b78ff7a73.md) | 56 | `result-track:f3c53c16b255a69b78ff7a7342b974422b6e73ebd28c94b81313febfe6716c9b` |
| 8 | `theorem` | [one_le_pow'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-le-pow--0ff04e377a824c161db236cb.md) | 61 | `result-track:0ff04e377a824c161db236cbef48f05d263091f2ec7206ea904445a4db04307f` |
| 9 | `theorem` | [one_le_two_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-le-two-pow--8b21eb5397d3ea87706a0e48.md) | 65 | `result-track:8b21eb5397d3ea87706a0e483eabc937817e0a3fa20812558359af67375aa6a8` |
| 10 | `theorem` | [one_lt_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-lt-pow--53fbd24287ea98a7bda47eb7.md) | 69 | `result-track:53fbd24287ea98a7bda47eb7fa99a52304c66e66ba3a75bb1e760ab8306db43b` |
| 11 | `theorem` | [one_lt_pow'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-lt-pow--2fad1dc1b3d5b29101a3fda5.md) | 74 | `result-track:2fad1dc1b3d5b29101a3fda54ad871133657c900753730ba138efee6af889eee` |
| 12 | `theorem` | [one_lt_pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-lt-pow-iff--1ab85cbb26e107cb437b38fe.md) | 79 | `result-track:1ab85cbb26e107cb437b38fead9355d644bbe4a60d89287663fb486039f1cc62` |
| 13 | `theorem` | [one_lt_two_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-lt-two-pow--e2d1f9bcfe6ac3fea98035ac.md) | 93 | `result-track:e2d1f9bcfe6ac3fea98035ac6e75ddfa5a601d922f115c584f3c936063244b35` |
| 14 | `theorem` | [one_lt_two_pow'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/one-lt-two-pow--3d0b8a5b3dc39b49184faf2a.md) | 97 | `result-track:3d0b8a5b3dc39b49184faf2a47112029744e2bda3fba88338329983a3f58b6ee` |
| 15 | `theorem` | [pow_right_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-right-strictmono--8cf67abbeb90fc81bbb88bde.md) | 101 | `result-track:8cf67abbeb90fc81bbb88bde41284fd550b4e78cd77be2d33cb5d219bcfb3644` |
| 16 | `theorem` | [pow_le_iff_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-le-iff-le-right--d83bf7a3ddf6354c1008d397.md) | 105 | `result-track:d83bf7a3ddf6354c1008d397cd3fe374770230b965ecbdc9d80fb20b13c286e4` |
| 17 | `theorem` | [pow_lt_iff_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-lt-iff-lt-right--9a7c7d47174c1802bbd50c72.md) | 109 | `result-track:9a7c7d47174c1802bbd50c724e21249588bbfb03cd0a9f156205afc8e0340340` |
| 18 | `theorem` | [pow_right_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-right-injective--d3299d5dca2769253a609746.md) | 113 | `result-track:d3299d5dca2769253a609746b6c098de96ec1c00823976289b26353d66eae4e3` |
| 19 | `theorem` | [pow_left_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-left-strictmono--0a6adb4c40085d6669b5ee01.md) | 117 | `result-track:0a6adb4c40085d6669b5ee011f50fce012451bcb27b1b2f7c8bed7d616731852` |
| 20 | `theorem` | [mul_lt_mul_pow_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/mul-lt-mul-pow-succ--e4c95fcc44daa1929acafd80.md) | 121 | `result-track:e4c95fcc44daa1929acafd803e21a9f82571abb35a732c7c121a775ea67918fa` |
| 21 | `theorem` | [StrictMono.nat_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/strictmono-nat-pow--7678334302ee18b1967109e2.md) | 128 | `result-track:7678334302ee18b1967109e25665e1f40b26e499a42db84d8985970f34f09023` |
| 22 | `theorem` | [pow_le_iff_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-le-iff-le-left--3c37a5d3f7f8e6d178dcb4ce.md) | 135 | `result-track:3c37a5d3f7f8e6d178dcb4ceb55c81a6e4f16e665dba558ecf0462bce2dbd5ea` |
| 23 | `theorem` | [pow_lt_iff_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-lt-iff-lt-left--ba493cfd04602633c968945d.md) | 139 | `result-track:ba493cfd04602633c968945d39457984e9a36f33efce931511309f65c0785a92` |
| 24 | `theorem` | [pow_left_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-left-injective--ed589df7e72eea4e86d504de.md) | 143 | `result-track:ed589df7e72eea4e86d504deb88e6e9917ddce1cf3d325096132ca00ac7bce98` |
| 25 | `theorem` | [sq_sub_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/sq-sub-sq--429de617a614721a6cc117aa.md) | 147 | `result-track:429de617a614721a6cc117aa8c6ff622a2abb960199d6760228f424e161717ca` |
| 26 | `theorem` | [pow_mod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-mod--8ebec50a2255299e1e46b9d8.md) | 158 | `result-track:8ebec50a2255299e1e46b9d8342f592bd8612656b0ed51bf66c9d5ec6431be86` |
| 27 | `theorem` | [mod_pow_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/mod-pow-succ--d0aa5e8c75bf98b3d19815ce.md) | 163 | `result-track:d0aa5e8c75bf98b3d19815ce478793580e0183d9f7b37427eb4f15fdccbdf669` |
| 28 | `theorem` | [pow_dvd_pow_iff_pow_le_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-dvd-pow-iff-pow-le-pow--0dffa446ef9f77a4cf417bfa.md) | 194 | `result-track:0dffa446ef9f77a4cf417bfa84fd8ba35e7e1c7d985205fa9db68c20f0e7ce53` |
| 29 | `theorem` | [pow_dvd_pow_iff_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-dvd-pow-iff-le-right--7ea15eca9073ad1e28cf95a8.md) | 208 | `result-track:7ea15eca9073ad1e28cf95a880c0b3e23fc2afde98f2fd72ed85b28c3e8b5e94` |
| 30 | `theorem` | [pow_dvd_pow_iff_le_right'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-dvd-pow-iff-le-right--661248f8883c8073ca5a7367.md) | 212 | `result-track:661248f8883c8073ca5a73671e289162014093d2f32d2427ee5ebd8869343c3e` |
| 31 | `theorem` | [not_pos_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/not-pos-pow-dvd--7bbe4b6d16b41db4ed158532.md) | 216 | `result-track:7bbe4b6d16b41db4ed1585327ff1a084dbb5ef480d2e869a35a32bef2678e3a9` |
| 32 | `theorem` | [pow_dvd_of_le_of_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-dvd-of-le-of-pow-dvd--e72d766c4937a75ad65d6fb4.md) | 228 | `result-track:e72d766c4937a75ad65d6fb4f8964a94638ee8d18557a8b8f77d27d2a42850f2` |
| 33 | `theorem` | [dvd_of_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/dvd-of-pow-dvd--afdf399c27fd55b8011550ad.md) | 232 | `result-track:afdf399c27fd55b8011550ad2a9fc87df1f6267b0f3ad243b777bba12e524307` |
| 34 | `theorem` | [pow_div](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/pow-div--e2241579735b96652d806ab5.md) | 236 | `result-track:e2241579735b96652d806ab5e111ab81ea6d8f191f3b3bce5c3dd5b5302b3109` |
| 35 | `theorem` | [lt_of_pow_dvd_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/declarations/lt-of-pow-dvd-right--67060801122963147fdddf1f.md) | 240 | `result-track:67060801122963147fdddf1f6396857380f4d8144919858e93d2258c63774833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

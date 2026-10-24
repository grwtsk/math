# Verification target: GRWTSK.Algebra.Exponent.Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4a47583e87f8a55f580963a03a76b0676a99096",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/index.md) · [Full source](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4a47583e87f8a55f580963a03a76b0676a99096`.

Source path: `GRWTSK/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasExponent](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/hasexponent--6af1e7599f4e33cb17e2b684.md) | 58 | `declaration-track:6af1e7599f4e33cb17e2b684385e691998edb65b1cb4f355cf02bf7467b6c07e` |
| 2 | `theorem` | [hasExponent_iff'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/hasexponent-iff--ff73fe54dc32d09cbf5bead5.md) | 62 | `result-track:ff73fe54dc32d09cbf5bead537db302c7129dcc5de28d71dadbe9a9274f04d31` |
| 3 | `def` | [exponent](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/exponent--122028dbac9d8325e3085763.md) | 69 | `declaration-track:122028dbac9d8325e308576380af45dc0d978071c11364be3fff93a9c7075531` |
| 4 | `theorem` | [exponent_def](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/exponent-def--8fc3630a5a078b9df79a862b.md) | 75 | `result-track:8fc3630a5a078b9df79a862bb93f50eed5d8d7d71c344a2345a50c07572e23d4` |
| 5 | `theorem` | [exponent_def'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/exponent-def--bb2aa284b3572329134dda8f.md) | 80 | `result-track:bb2aa284b3572329134dda8f30fbb09bd6ccd826ae36c6c4195a86f6cdc91d7e` |
| 6 | `theorem` | [exponent_min](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/exponent-min--d91f0bdb0228f3a1524a0c01.md) | 87 | `result-track:d91f0bdb0228f3a1524a0c01da17ba4db3d91b849ca82f8cacb26953d0612060` |
| 7 | `theorem` | [exponent_min'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/exponent-min--f991b356f897762ea30123b8.md) | 92 | `result-track:f991b356f897762ea30123b8482fa4e170054a2f2163646fc462bc93885cf1e0` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/instance--bb9835b8c5b9bf0a1d360ce9.md) | 102 | `declaration-track:bb9835b8c5b9bf0a1d360ce9e9be8ef5dfa5595f84d618681f58ff86aba9ace9` |
| 9 | `def` | [elemExponent](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent--54d01c5e02790a651eaa929f.md) | 118 | `declaration-track:54d01c5e02790a651eaa929f601e11e663c862d7d053d575c62350655d996fbf` |
| 10 | `theorem` | [elemExponent_eq_zero_of_mem_range](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-eq-zero-of-mem-range--8b9b0618e0e8019b31562b34.md) | 123 | `result-track:8b9b0618e0e8019b31562b344541454c3437441d0266a9a7ec109450cf5cff07` |
| 11 | `theorem` | [elemExponent_eq_zero_of_charZero](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-eq-zero-of-charzero--bfb48a1fb6cf0227368d9bad.md) | 130 | `result-track:bfb48a1fb6cf0227368d9bad9742f3654f7219237e251952f8db90db9d2e214d` |
| 12 | `def` | [elemReduct](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemreduct--95f58bc1c3d4acf6cd8679f8.md) | 138 | `declaration-track:95f58bc1c3d4acf6cd8679f886fb4ddb8ede2ab29fb9ab006542150fe6898d6e` |
| 13 | `theorem` | [minpoly_eq](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/minpoly-eq--a836237ba87b9a55ebb2eaf5.md) | 142 | `result-track:a836237ba87b9a55ebb2eaf58a9bca0b3d1c15686625f45d73e4e2240eef9a7b` |
| 14 | `theorem` | [minpoly_eq'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/minpoly-eq--cd83788e2d512a80ff374b80.md) | 148 | `result-track:cd83788e2d512a80ff374b80c2236110c8e802213b53f693fac9c708f5ab6469` |
| 15 | `theorem` | [minpoly_natDegree_eq](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/minpoly-natdegree-eq--5827784d31665625dbe7e1f9.md) | 154 | `result-track:5827784d31665625dbe7e1f92e412d163c260f98f6e284d35531f43287e7859f` |
| 16 | `theorem` | [minpoly_natDegree_eq'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/minpoly-natdegree-eq--3d7239b58ec334a8b22319e2.md) | 159 | `result-track:3d7239b58ec334a8b22319e2ba8b92ab22b32f427a431f808e59ca4fa0009442` |
| 17 | `theorem` | [algebraMap_elemReduct_eq](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/algebramap-elemreduct-eq--a5f0dcad7b37c43db449e825.md) | 163 | `result-track:a5f0dcad7b37c43db449e825ae85c49875df760984f739a0c3b1028ad1c4b5eb` |
| 18 | `theorem` | [algebraMap_elemReduct_eq'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/algebramap-elemreduct-eq--364c8f198afedb100b080f47.md) | 169 | `result-track:364c8f198afedb100b080f476dd5360da540bb76b426522b2ac012304e4d95b3` |
| 19 | `theorem` | [elemExponent_def](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-def--92b1a0b80344ebbbbbfac3f8.md) | 173 | `result-track:92b1a0b80344ebbbbbfac3f835e4604a4bd1864902a059adc060f7b44ab46d74` |
| 20 | `theorem` | [elemExponent_def'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-def--64cb3dc30070cbb8cb28cd2d.md) | 178 | `result-track:64cb3dc30070cbb8cb28cd2d92a99c66ff8efcc765bb154e967a1ce4d70b20ca` |
| 21 | `theorem` | [elemExponent_le_of_pow_mem](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-le-of-pow-mem--8abd51e1ce42ec4531aeaa18.md) | 183 | `result-track:8abd51e1ce42ec4531aeaa1848b7464197b3e35f429f8d127420e7cba1be7dbb` |
| 22 | `theorem` | [elemExponent_le_of_pow_mem'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-le-of-pow-mem--9dede66ddd3145e3886655dd.md) | 200 | `result-track:9dede66ddd3145e3886655ddf4ba4a95be47ce5ff99cc20f481c7d226ca66023` |
| 23 | `theorem` | [elemExponent_min](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-min--143c9463f87629f81a1feb8a.md) | 205 | `result-track:143c9463f87629f81a1feb8a30929e019c1719e34574adedab664f50013bd882` |
| 24 | `theorem` | [elemExponent_min'](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-min--0019f8356a0ce75ea5582dce.md) | 210 | `result-track:0019f8356a0ce75ea5582dce1c4ac16b2c0b6b94933fc19262e13585731ad5b6` |
| 25 | `theorem` | [elemExponent_le_exponent](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/elemexponent-le-exponent--5b918cb3fbbc33cf91442e9b.md) | 215 | `result-track:5b918cb3fbbc33cf91442e9bfbb4679e4a23343c6e8943f30127c8eb74bf84c0` |
| 26 | `instance` | [hasExponent_of_finiteDimensional](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/hasexponent-of-finitedimensional--f2a8c6ee9835c47ba016b7be.md) | 220 | `declaration-track:f2a8c6ee9835c47ba016b7bebcfbb5fa787656b415cf99342f6d0cdeb834960b` |
| 27 | `def` | [iterateFrobeniusAux](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/iteratefrobeniusaux--64e93e4862ad12e7a411c017.md) | 251 | `declaration-track:64e93e4862ad12e7a411c0179760a7d32863aaffbf38302b6fdf4aef5b6e120d` |
| 28 | `theorem` | [algebraMap_iterateFrobeniusAux](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/algebramap-iteratefrobeniusaux--9be057fcc69df42e27266b25.md) | 256 | `result-track:9be057fcc69df42e27266b25a3c06ae9bde614a7abd93853d78fefbae7a0ef0d` |
| 29 | `def` | [iterateFrobenius](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/iteratefrobenius--065dacfc2cd04ed271deaf5c.md) | 265 | `declaration-track:065dacfc2cd04ed271deaf5cf434664ee01878cc136d3e1de2a212676ee641b9` |
| 30 | `theorem` | [algebraMap_iterateFrobenius](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/algebramap-iteratefrobenius--e91b60efe9ef04a11468461f.md) | 297 | `result-track:e91b60efe9ef04a11468461f504f195891d9e24a34a4c07ead3b8a0323ca3774` |
| 31 | `theorem` | [iterateFrobenius_algebraMap](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/iteratefrobenius-algebramap--939f31db76c8a486abb62599.md) | 303 | `result-track:939f31db76c8a486abb6259952685bef53e4aaa54309d477f5b3976068cbc1c1` |
| 32 | `def` | [iterateFrobeniusₛₗ](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/iteratefrobenius--4748c4a712c8d1f1926bfd75.md) | 317 | `declaration-track:4748c4a712c8d1f1926bfd7500e93dddd72e3edd007e032373311265bc0dcc01` |
| 33 | `theorem` | [algebraMap_iterateFrobeniusₛₗ](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/algebramap-iteratefrobenius--b1f3f8d095c2f9fcc08d9219.md) | 334 | `result-track:b1f3f8d095c2f9fcc08d92197ab5da8ea3367de60482763f4b25a62e2d20d6d5` |
| 34 | `theorem` | [iterateFrobeniusₛₗ_algebraMap](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/iteratefrobenius-algebramap--7bb17eccef74916ba474268d.md) | 339 | `result-track:7bb17eccef74916ba474268d4b2248c16501f053cfbcf38b41ea806993db5fc3` |
| 35 | `theorem` | [iterateFrobeniusₛₗ_algebraMap_base](../../../../mathematics/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/declarations/iteratefrobenius-algebramap-base--9ed898390c23e96ca295f832.md) | 344 | `result-track:9ed898390c23e96ca295f832660afcd5dca7240b8b30f4655300cd149f391213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

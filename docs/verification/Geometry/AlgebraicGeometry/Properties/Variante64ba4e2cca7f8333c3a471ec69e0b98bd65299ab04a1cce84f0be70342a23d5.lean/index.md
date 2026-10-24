# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Properties.Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbf920420ae4fb78b438b0344e8b2b37c39d7e6d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbf920420ae4fb78b438b0344e8b2b37c39d7e6d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Reduced` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--4b33e36eb6c6ba486a3ffad1.md) | 32 | `declaration-track:4b33e36eb6c6ba486a3ffad10ada8baf32599c0a71406246f459c1340024f040` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--a25c45fc1a8bffbc83eef1df.md) | 37 | `declaration-track:a25c45fc1a8bffbc83eef1df8f66a7d84c8607438344763f1426eb5d50031790` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--929ddfdad58e78e0dfc1b83c.md) | 48 | `declaration-track:929ddfdad58e78e0dfc1b83c2a1889a8bf2033cd085c113add2b034e03a5fbc3` |
| 4 | `class` | [IsReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isreduced--c7a78f9cf7f3df9c91eee442.md) | 57 | `declaration-track:c7a78f9cf7f3df9c91eee442b3ad197fca13842e739ffbf534ca6d21589104e4` |
| 5 | `theorem` | [isReduced_of_isReduced_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isreduced-of-isreduced-stalk--f33f015906fb57888640aa4e.md) | 62 | `result-track:f33f015906fb57888640aa4e68ae60c67dc58727b31ae869fe1c1fe13e94141c` |
| 6 | `instance` | [isReduced_stalk_of_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isreduced-stalk-of-isreduced--3abdc6d16cd8c2950fddeaf1.md) | 72 | `declaration-track:3abdc6d16cd8c2950fddeaf172b96c62beccd096000bff0e0ed90390707389a6` |
| 7 | `theorem` | [isReduced_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isreduced-of-isopenimmersion--d293f2c3f460ae3b099eb2bb.md) | 84 | `result-track:d293f2c3f460ae3b099eb2bb6f6da5b59e5a50a2c60ff7d606e8e8f628f765fa` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--1e060c93e0c5c97f252fcb68.md) | 94 | `declaration-track:1e060c93e0c5c97f252fcb681c0836b81a7e7b5a04221f02f8339c9b5788a812` |
| 9 | `theorem` | [affine_isReduced_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/affine-isreduced-iff--c0e0a18d89b440de164bd3cc.md) | 102 | `result-track:c0e0a18d89b440de164bd3ccb29d7c8c2f59b55f7525ab31432fd3a63b1bfc67` |
| 10 | `theorem` | [isReduced_of_isAffine_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isreduced-of-isaffine-isreduced--f6f5bee3c942f9a7c8ccd5b3.md) | 109 | `result-track:f6f5bee3c942f9a7c8ccd5b333331afea9481edce0c4ac0baf943830e8bff48c` |
| 11 | `theorem` | [reduce_to_affine_global](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/reduce-to-affine-global--f1867faf752e18575128d1ce.md) | 120 | `result-track:f1867faf752e18575128d1cea081fc4b375d9ba573000213c2ac742f240ece0f` |
| 12 | `theorem` | [reduce_to_affine_nbhd](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/reduce-to-affine-nbhd--f31a02c953adb781376832dc.md) | 138 | `result-track:f31a02c953adb781376832dcb74c9ce370083b4a3f08ddd8e129e4eb2c4ec2cf` |
| 13 | `theorem` | [eq_zero_of_basicOpen_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/eq-zero-of-basicopen-eq-bot--7413d86f2c367a10e6429bc3.md) | 148 | `result-track:7413d86f2c367a10e6429bc394888a33c4c8a85d4c1e20ccc4296b4afca2e3e6` |
| 14 | `theorem` | [basicOpen_eq_bot_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/basicopen-eq-bot-iff--70fba62a8864540c63f7dc7d.md) | 180 | `result-track:70fba62a8864540c63f7dc7d27c37a95bfb0d626d63bcd15c0f8468c2a4d6a3c` |
| 15 | `class` | [IsIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isintegral--22d46abd9c52633baa6c3f53.md) | 188 | `declaration-track:22d46abd9c52633baa6c3f53490d98c6875af985fd8bebab139a6886e58532bf` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--44ab762c15ef4d6fd845beec.md) | 194 | `declaration-track:44ab762c15ef4d6fd845beeca06af8b18b60512f3344e7b1b040bbd841f8cf01` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--d657c39617a48a5c381020f4.md) | 197 | `declaration-track:d657c39617a48a5c381020f45aac7b69c88d1c673485190555f71c1ce7af3e2d` |
| 18 | `instance` | [Scheme.component_nontrivial](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/scheme-component-nontrivial--e42680d857956fc103d264dc.md) | 208 | `declaration-track:e42680d857956fc103d264dcccbc7981d87194128f12bfc21197eb27ae27ad9f` |
| 19 | `instance` | [irreducibleSpace_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/irreduciblespace-of-isintegral--d6f06f961694ea8f1b1a5f77.md) | 212 | `declaration-track:d6f06f961694ea8f1b1a5f7727368db5c5794ba17561d4eacdaa6326b74dc26a` |
| 20 | `theorem` | [isIntegral_of_irreducibleSpace_of_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isintegral-of-irreduciblespace-of-isreduced--7d7ead4714a2a4bd3bea28d5.md) | 236 | `result-track:7d7ead4714a2a4bd3bea28d573189c711eae9018f08c076c90318a2f90887b5a` |
| 21 | `theorem` | [isIntegral_iff_irreducibleSpace_and_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isintegral-iff-irreduciblespace-and-isreduced--b7b54e5c670fcc8dc5903b45.md) | 255 | `result-track:b7b54e5c670fcc8dc5903b450d620d2ed77749ffdc04a75510e49e7120deb72e` |
| 22 | `theorem` | [isIntegral_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isintegral-of-isopenimmersion--6af39c24404cdc32db39e796.md) | 260 | `result-track:6af39c24404cdc32db39e7967f66faf50f9d3329f5064619691c2b163a10c633` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--c71bbabd31820019b06fc585.md) | 272 | `declaration-track:c71bbabd31820019b06fc5854c6807115c19ed171bf691d91e87e767dcef7fd7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/instance--b1f60ebdd3160f2c11bae9e3.md) | 275 | `declaration-track:b1f60ebdd3160f2c11bae9e3bd36c2c86c83d1fff7b8fab7f06c2ea0c2392bae` |
| 25 | `theorem` | [affine_isIntegral_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/affine-isintegral-iff--6ba6360ed03788ba6a8011f3.md) | 278 | `result-track:6ba6360ed03788ba6a8011f3dd5f0bf927da1641acb47e02b28210f90ef769d6` |
| 26 | `theorem` | [isIntegral_of_isAffine_of_isDomain](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/isintegral-of-isaffine-of-isdomain--0e52f0d906d014a8961ed2e7.md) | 283 | `result-track:0e52f0d906d014a8961ed2e7fab116c93ef2ffe2625bae9496bd87491bbdc021` |
| 27 | `theorem` | [map_injective_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/declarations/map-injective-of-isintegral--250bdea0002eb3af394c61a2.md) | 287 | `result-track:250bdea0002eb3af394c61a240fb895216e627d5b5e5693b77884d29c9f64f58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

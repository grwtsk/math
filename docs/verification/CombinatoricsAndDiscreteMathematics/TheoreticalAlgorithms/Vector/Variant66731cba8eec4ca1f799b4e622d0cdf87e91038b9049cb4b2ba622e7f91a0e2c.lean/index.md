# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f52bdbd9e2e3a00a85664c33ac1a4ab7d7546bd5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f52bdbd9e2e3a00a85664c33ac1a4ab7d7546bd5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compareLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/comparelex--39dfd98d8705ff564b3a60be.md) | 35 | `declaration-track:39dfd98d8705ff564b3a60be56b9d366a0f50e40edc0ccebb6faf9bc395ba27f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--ad2d6acd89a96c25009e95c2.md) | 38 | `declaration-track:ad2d6acd89a96c25009e95c2e2965c233bb6999fb4fe3508eecb415568473644` |
| 3 | `theorem` | [compareLex_eq_compareLex_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/comparelex-eq-comparelex-toarray--baa1bb1f7b5a3048618794f4.md) | 41 | `result-track:baa1bb1f7b5a3048618794f40c42299434e67a647563f7f87c3abf6246b71832` |
| 4 | `theorem` | [compareLex_eq_compareLex_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/comparelex-eq-comparelex-tolist--e7c24e08cfa71add69725a50.md) | 45 | `result-track:e7c24e08cfa71add69725a50ddd8fc6cd3c37e9aed12471682d8ba8ddb32ab4b` |
| 5 | `theorem` | [compare_eq_compare_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/compare-eq-compare-toarray--44cea0c4af89132f1632fd0d.md) | 49 | `result-track:44cea0c4af89132f1632fd0d7953e7eb2394056415f7ac279dd7297776e4f5e9` |
| 6 | `theorem` | [compare_eq_compare_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/compare-eq-compare-tolist--06333b17c7485580273c5942.md) | 53 | `result-track:06333b17c7485580273c5942f2fa6935fd7c0e5aca9c847f164aecb408a6d256` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--3c75fdaf8e0b16e02f7ed04f.md) | 59 | `declaration-track:3c75fdaf8e0b16e02f7ed04f183a22754218484dc3c3bc1bb53283a338e994c0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--0a2f05da7461a1409b8d0b31.md) | 62 | `declaration-track:0a2f05da7461a1409b8d0b312ae6bc7f65257ec77458758b4aa4b546a54b96f1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--b920d798171b571972e5a2f6.md) | 65 | `declaration-track:b920d798171b571972e5a2f6505ae686f2f8f2b9b2100f2b9bc9a233b7a3a6bb` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--c2f80871a6dba603c5afb4fd.md) | 69 | `declaration-track:c2f80871a6dba603c5afb4fdf505476c26117a7ad714a5da7a74ae9474d09c47` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--39080208af22e9e04422b28e.md) | 72 | `declaration-track:39080208af22e9e04422b28eb7cc43856fdace71092f18999d227d0229e48432` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--014f708b1802a29a3d6c56f6.md) | 75 | `declaration-track:014f708b1802a29a3d6c56f641434d977ab47c713eef74362629861cc4500de2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--782b4a64fbace9a29fda188a.md) | 78 | `declaration-track:782b4a64fbace9a29fda188a9509cc37745388de9372dac635f5e9425baa005b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--08ea88fce171bcfb291af421.md) | 81 | `declaration-track:08ea88fce171bcfb291af4214d2bd20f12554d8fc756e849ad03cdcf26a441c1` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--f74aafc73d62b05d9cad5b74.md) | 84 | `declaration-track:f74aafc73d62b05d9cad5b7499a77bdfe3e47a1f5ba61f622fbf92477f9a35a1` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant66731cba8eec4ca1f799b4e622d0cdf87e91038b9049cb4b2ba622e7f91a0e2c.lean/declarations/instance--1921fbec5599e6908cfa843f.md) | 87 | `declaration-track:1921fbec5599e6908cfa843f7bb4ff8faa37c8c8f5cdcad127d7949035f4f414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

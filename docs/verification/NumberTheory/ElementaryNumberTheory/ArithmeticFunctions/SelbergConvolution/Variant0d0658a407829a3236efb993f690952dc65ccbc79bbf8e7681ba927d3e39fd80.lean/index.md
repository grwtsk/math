# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergConvolution.Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f4566123088acfbb799b88395a365657513368",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f4566123088acfbb799b88395a365657513368`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pmul_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/log-pmul-convolution--39af5101477222de4def7ef0.md) | 14 | `result-track:39af5101477222de4def7ef0de8c67006ce2e33700352e4f4b79476c041653c4` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/log-pmul-zeta--13f062cf13e0e6d16b2db74c.md) | 30 | `result-track:13f062cf13e0e6d16b2db74c445effc6c0c64b9fe4b04f91287ceecaa11b62c8` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selberg-dirichlet-identity--ee93dcfef63fe5716fbba1a6.md) | 35 | `result-track:ee93dcfef63fe5716fbba1a6df4a204fa1c76dee57bbe309cf1f030344c30986` |
| 4 | `def` | [selbergCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergcoefficient--8f924c633f3d0c99a97b3495.md) | 57 | `declaration-track:8f924c633f3d0c99a97b34958f4019526bd92bb3c3299b8b7c0fa4d8a3a57ae5` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selberg-coefficient-identity--52499b2840cc5410361c518e.md) | 62 | `result-track:52499b2840cc5410361c518eab92b6f0ec2ce1b56f9cfbacf3ce235a5622a089` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergcoefficient-nonneg--c87f8763494bd46ab78ec251.md) | 74 | `result-track:c87f8763494bd46ab78ec2518a255b18bd67a1abfc62de39edfc5b75334b7bc7` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergcoefficient-zero--18835393b4ef04be77eaf76c.md) | 80 | `result-track:18835393b4ef04be77eaf76c7a0e0cc93e98ba1441ef45236176be4f4d353ab5` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergcoefficient-one--0fedbf986364db4b2a16024d.md) | 84 | `result-track:0fedbf986364db4b2a16024d72aa73c2a8f84e8c5a68e12ed059797f4af090cb` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selberg-antidiagonal-identity--fb58f7a4528a9c349ab47534.md) | 88 | `result-track:fb58f7a4528a9c349ab47534b7a29555bb1289dcba45f5fb49a654a4922b6629` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/closed-factor-cutoff-eq--2b6f744515be9aaec31218c3.md) | 96 | `result-track:2b6f744515be9aaec31218c3f488d37c87bf7e35d09b15b63d728ca542d02907` |
| 11 | `def` | [selbergPrefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergprefix--13dbfd99a9ebe92f89bf27d7.md) | 111 | `declaration-track:13dbfd99a9ebe92f89bf27d77792249665fe54525bbd4d7bcc1947fc00a8aae8` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selberg-prefix-identity--3816bd5f621e0bd548f022f7.md) | 116 | `result-track:3816bd5f621e0bd548f022f76b8d3b2b7b3905bee7fbe92775581b2220f6decf` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergprefix-nonneg--2182dc4a8bb77ac122dbf3e7.md) | 137 | `result-track:2182dc4a8bb77ac122dbf3e7682f07b85205587615005ee8bef76bfc25d306a9` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergprefix-zero--59f9d6f961508bb6b276bb05.md) | 142 | `result-track:59f9d6f961508bb6b276bb055d3205830814e038b99a0c498ed943e5a71aa374` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selbergprefix-one--f42e6f1da17e2f2a8bb4839e.md) | 146 | `result-track:f42e6f1da17e2f2a8bb4839e1f1cd861e1f8e15c17269d7d8174a06c300b2072` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant0d0658a407829a3236efb993f690952dc65ccbc79bbf8e7681ba927d3e39fd80.lean/declarations/selberg-prefix-expanded--2304ef8e7f4c83f2149b3dd7.md) | 150 | `result-track:2304ef8e7f4c83f2149b3dd7deb7c39e510b021a1ca0ad2310e77d1fe6fa4395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

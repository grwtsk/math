# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Examples.Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b5dbef662558c4d9cde265412794c399082b8a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b5dbef662558c4d9cde265412794c399082b8a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NumberBridge` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Bridge.Number` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exampleHalfPlane](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplehalfplane--4bbca68a8970f221a19e2ecb.md) | 20 | `declaration-track:4bbca68a8970f221a19e2ecbc394b8e74d606a86e8961cc99d258a2ee7ef270d` |
| 2 | `def` | [exampleZeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplezeta--3159cb240e4cc50f69042644.md) | 24 | `declaration-track:3159cb240e4cc50f690426444783361cb07383ac9ce9fc8bf2c165aa814bc1b6` |
| 3 | `def` | [exampleArithmeticFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplearithmeticfunction--78ca06e6166f81c786c87b29.md) | 27 | `declaration-track:78ca06e6166f81c786c87b29856779609d4f9368a9d3f7e0c50b9445b326b382` |
| 4 | `def` | [exampleMobiusSeries](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplemobiusseries--2e7b6c705234f5ae966c38fa.md) | 31 | `declaration-track:2e7b6c705234f5ae966c38fac8a1db89a4af113a72b7957a024f9e03776d2356` |
| 5 | `def` | [examplePrimeWindow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/exampleprimewindow--bb1982543127690e58af1521.md) | 35 | `declaration-track:bb1982543127690e58af1521de82536005e4baca05b433fe04a6090b51fc5fd6` |
| 6 | `def` | [exampleFiniteMobiusWindow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplefinitemobiuswindow--54d67a1c26578285fddae8d6.md) | 40 | `declaration-track:54d67a1c26578285fddae8d6489a413ce4b08c2df20109c54bda5925096d5ae5` |
| 7 | `def` | [exampleAbsoluteConvergence](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/exampleabsoluteconvergence--2a4e4ffafdc989d7a3d57776.md) | 48 | `declaration-track:2a4e4ffafdc989d7a3d577766b67e2da76f6b7d4911438ae6c063024300a70dc` |
| 8 | `def` | [exampleZetaMobiusAuthority](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplezetamobiusauthority--7533515d137d86876754692f.md) | 55 | `declaration-track:7533515d137d86876754692f22520aaeb7c1cd5e395bfa011319c4787edfca77` |
| 9 | `def` | [exampleBooleanShadow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplebooleanshadow--10d3daddca37dd157fadd22b.md) | 68 | `declaration-track:10d3daddca37dd157fadd22ba438ba739ac37639cc499350332dc0e2b400bc7c` |
| 10 | `def` | [exampleBooleanToNumber](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplebooleantonumber--083cc27b4983baca7bfde29e.md) | 78 | `declaration-track:083cc27b4983baca7bfde29ebca52d1d4016128fc844ce09a9e336ab3ad1d100` |
| 11 | `def` | [exampleArithmeticPayload](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplearithmeticpayload--1b21c516629b53ce6bbc2643.md) | 83 | `declaration-track:1b21c516629b53ce6bbc2643e22b01a1210909f4497bd31c62d0f7b26cc33f52` |
| 12 | `def` | [exampleAnalyticCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/exampleanalyticcertificate--478498dda6873d33a39a028b.md) | 86 | `declaration-track:478498dda6873d33a39a028bd37f9032c64a3bc5b347d02009087e4b8b60e101` |
| 13 | `def` | [examplePrecision](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/exampleprecision--61b97199f6e5b093f52d1f88.md) | 93 | `declaration-track:61b97199f6e5b093f52d1f88e752b20b7531d1def8ba1882767a62d7c9e5ba27` |
| 14 | `def` | [exampleNumberToAnalyticError](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplenumbertoanalyticerror--f085bf820cbda126a27aefe0.md) | 99 | `declaration-track:f085bf820cbda126a27aefe0ed39e0ac09af970eab1d8d3608ed773bf12a9d2f` |
| 15 | `def` | [exampleAnalyticToNumberError](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/exampleanalytictonumbererror--e42a117c3c8daec099f4f828.md) | 105 | `declaration-track:e42a117c3c8daec099f4f828d018b761a575aa465caf1f9b148f38b693c36cab` |
| 16 | `def` | [exampleAnalyticShadow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/exampleanalyticshadow--7510bb6ad42e22276f268991.md) | 111 | `declaration-track:7510bb6ad42e22276f268991b8376488f3198a82af08757574daa714985277e9` |
| 17 | `def` | [exampleNumberToAnalyticBridge](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/examplenumbertoanalyticbridge--1294b4feee8772b382b7f238.md) | 119 | `declaration-track:1294b4feee8772b382b7f238afade256f6a500b246a764d37eaa7313847ae721` |
| 18 | `theorem` | [example_boolean_to_number_boundary](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/example-boolean-to-number-boundary--9931953904abb122526245ed.md) | 137 | `result-track:9931953904abb122526245ed2e09f415cdf76c9d4c74ebb32d479d243278d02f` |
| 19 | `theorem` | [example_number_to_analytic_boundary](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/example-number-to-analytic-boundary--3b99db88b7a1aa126b31528d.md) | 148 | `result-track:3b99db88b7a1aa126b31528d7f3e6364c82d320f7aabc90eb6f520d8475c0f57` |
| 20 | `theorem` | [example_zeta_mobius_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/example-zeta-mobius-identity--5e929ca0bcde8b4518ab9c0d.md) | 162 | `result-track:5e929ca0bcde8b4518ab9c0dbe6520e5b1fd5e90c3a7bd76b64322953c59d482` |
| 21 | `theorem` | [example_finite_mobius_not_analytic_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/example-finite-mobius-not-analytic-identity--5fd5fd74e9c7174f0dd8b924.md) | 166 | `result-track:5fd5fd74e9c7174f0dd8b9248cfafd3f57ac478b12785cf867c5718959426ae3` |
| 22 | `theorem` | [example_arithmetic_payload_not_infinite_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variant11a0515ab07ff52e994d754bf2d60ecf49b6980c0e13e90cec6084f9d5c7460c.lean/declarations/example-arithmetic-payload-not-infinite-product--210e7d8bd9287f4d83df24f8.md) | 172 | `result-track:210e7d8bd9287f4d83df24f8832d0ce19d83e784886fe87d282ab469e4a4b143` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

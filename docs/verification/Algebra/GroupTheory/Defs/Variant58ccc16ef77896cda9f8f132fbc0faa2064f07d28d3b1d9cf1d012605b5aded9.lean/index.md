# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f751481bf5faa6e067930beb20556ceef332a900",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f751481bf5faa6e067930beb20556ceef332a900`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/orderedcommmonoid--4590109fd24ffa9fe8e8cc16.md) | 36 | `declaration-track:4590109fd24ffa9fe8e8cc164c7794f81e65ade5124fd0592bcc3c4b80a2f2df` |
| 2 | `class` | [OrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/orderedaddcommmonoid--4e63d3800f677ee279a85286.md) | 44 | `declaration-track:4e63d3800f677ee279a85286b1bd3f2234b2eb495fcb0757f3f890a518cc5b94` |
| 3 | `instance` | [OrderedCommMonoid.to_covariantClass_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/orderedcommmonoid-to-covariantclass-left--12a3bf48a49b42f8240ca183.md) | 54 | `declaration-track:12a3bf48a49b42f8240ca18365d100a793d6a68fcd51484d20f45d83d1415290` |
| 4 | `instance` | [OrderedCommMonoid.to_covariantClass_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/orderedcommmonoid-to-covariantclass-right--9dfae72e578da608ade1b615.md) | 63 | `declaration-track:9dfae72e578da608ade1b6156ec8a98f313f6cf70fd8a76352abc356cb0ea721` |
| 5 | `theorem` | [Mul.to_covariantClass_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/mul-to-covariantclass-left--84cce2fa2d5740a1578fa5b5.md) | 73 | `result-track:84cce2fa2d5740a1578fa5b5e726a84a2609abbe933a44dc8bc4c9a03808dbe7` |
| 6 | `theorem` | [Mul.to_covariantClass_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/mul-to-covariantclass-right--66de15d7ebb27b6a824105a8.md) | 85 | `result-track:66de15d7ebb27b6a824105a892bf44e5fc10c2485fc18ad1cb508f2ab80d6e99` |
| 7 | `theorem` | [bit0_pos](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/bit0-pos--2538348847680e3c9a2e6e63.md) | 95 | `result-track:2538348847680e3c9a2e6e63a280617b52bdc78d1432e28b1c0bdd50a6cb7c77` |
| 8 | `class` | [LinearOrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/linearorderedaddcommmonoid--e3347dc344eca35abd5d4b6f.md) | 100 | `declaration-track:e3347dc344eca35abd5d4b6f53f4eb3abc8745d50aafde4bdb2f3469154da445` |
| 9 | `class` | [LinearOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/linearorderedcommmonoid--911c1c62639425b4eb671a21.md) | 105 | `declaration-track:911c1c62639425b4eb671a21dca7805edd02f404354dc48b80e982c54dfdc67a` |
| 10 | `class` | [LinearOrderedAddCommMonoidWithTop](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/linearorderedaddcommmonoidwithtop--13d8aa09a3689c2babf321c8.md) | 112 | `declaration-track:13d8aa09a3689c2babf321c8a7eb2a4dfb735130d080b7f6d18d2041ca63b803` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/instance--597f097f18a85e6302a79478.md) | 121 | `declaration-track:597f097f18a85e6302a79478819ada64a5ec508085b7275698b61abff9b11335` |
| 12 | `theorem` | [top_add](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/top-add--541f7b7e9d6698dbdeca5cc7.md) | 131 | `result-track:541f7b7e9d6698dbdeca5cc78b02e03f4ce991dc06283f0f8983290ab950de5c` |
| 13 | `theorem` | [add_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/declarations/add-top--8df6fccc6ee7b7e566c6b30b.md) | 136 | `result-track:8df6fccc6ee7b7e566c6b30b8aad6d4e9cadf2a4236d5f2f06f073589203c39f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

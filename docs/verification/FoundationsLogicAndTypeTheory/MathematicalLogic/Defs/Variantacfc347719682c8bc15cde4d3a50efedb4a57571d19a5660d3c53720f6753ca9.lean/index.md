# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b86d17a588d4708c669e2d033e23dc13df480dc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b86d17a588d4708c669e2d033e23dc13df480dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Small](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small--ada05db747fafa9b8b55e568.md) | 29 | `declaration-track:ada05db747fafa9b8b55e568ec9005300f8743eb7af7000c60a3a48ecd5ce041` |
| 2 | `theorem` | [Small.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-mk--2dd8aec08a545311e194722a.md) | 35 | `result-track:2dd8aec08a545311e194722a8e1fe2100236ba3786946b6bf4d484b6afd80929` |
| 3 | `def` | [Shrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/shrink--2553f4a4bbf683f30789d559.md) | 41 | `declaration-track:2553f4a4bbf683f30789d5593204b9211198e1d47692f8706a6680b3f264ae71` |
| 4 | `def` | [equivShrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/equivshrink--81665c5e6a68cad5fc21ee39.md) | 46 | `declaration-track:81665c5e6a68cad5fc21ee39663d8d1177e431718664b6d9dc6341220dfbb9ec` |
| 5 | `theorem` | [Shrink.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/shrink-ext--14579e9ddb3eeb32ed044ed0.md) | 50 | `result-track:14579e9ddb3eeb32ed044ed0996d31a510a3d9809ddaa078c8d93bf31c6c5c1b` |
| 6 | `def` | [Shrink.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/shrink-rec--d4b5060eec3264e807202b71.md) | 58 | `declaration-track:d4b5060eec3264e807202b716028c66ac7b0212eff668cc28a7719f7b75a0172` |
| 7 | `lemma` | [Shrink.rec_equivShrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/shrink-rec-equivshrink--9487c09a250a940df9efdd42.md) | 63 | `result-track:9487c09a250a940df9efdd42ee0ab9de7468e00f08db2f389edcf205c72a2bc7` |
| 8 | `instance` | [small_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-self--e50a3aad88a3eec1fad57f41.md) | 68 | `declaration-track:e50a3aad88a3eec1fad57f416be5ccc961b662761dc68b46e99292e2bb9caf99` |
| 9 | `theorem` | [small_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-map--918c56087cf6b68be164b54c.md) | 71 | `result-track:918c56087cf6b68be164b54c9d0eb88e4e87b0713264c7595a433f7001e2e9be` |
| 10 | `theorem` | [small_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-lift--294413fde13fe2e72fe19f9d.md) | 75 | `result-track:294413fde13fe2e72fe19f9d949ac17f8981601da21a576654f55e6f76194161` |
| 11 | `lemma` | [small_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-max--56a7241f6c60584c38ea205a.md) | 82 | `result-track:56a7241f6c60584c38ea205ababb898b0026c208dc3fbd9b7da7d792d5a9243d` |
| 12 | `instance` | [small_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-zero--4fdea71dc069239b161f880a.md) | 85 | `declaration-track:4fdea71dc069239b161f880a1dfd4185cea0cb3f38ef5e8487ab1a7d63f03846` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/instance--4729d1b1116da2a8927a251e.md) | 87 | `declaration-track:4729d1b1116da2a8927a251ed8aa2b0f4cfda85f29058b54e137fe590140fd7a` |
| 14 | `instance` | [small_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-ulift--f3ae6444de5b7f04d42a7276.md) | 90 | `declaration-track:f3ae6444de5b7f04d42a72769efe924136e8f7cb81325be58b637c06aee75fc1` |
| 15 | `theorem` | [small_type](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-type--4d0ec331e9f11ae9d8b3028e.md) | 93 | `result-track:4d0ec331e9f11ae9d8b3028edd130d6343dc75e5b27bf1586195b48b6c8e9ff9` |
| 16 | `theorem` | [small_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-congr--654d4057390727bdf34cab1c.md) | 98 | `result-track:654d4057390727bdf34cab1ce3b6134d823711c45f145c4f606748310bbf9609` |
| 17 | `instance` | [small_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/small-sigma--4e61a2418cb1e2905578974c.md) | 101 | `declaration-track:4e61a2418cb1e2905578974cfcf0519769c18877c7f7f5f1a057956580d512de` |
| 18 | `theorem` | [not_small_type](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantacfc347719682c8bc15cde4d3a50efedb4a57571d19a5660d3c53720f6753ca9.lean/declarations/not-small-type--41252be1f76d7581373c1323.md) | 106 | `result-track:41252be1f76d7581373c1323b2176cd25de4794ac4f17aee6d279f505c7b4a92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

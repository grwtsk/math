# Verification target: GRWTSK.Analysis.MeasureTheory.BesicovitchVectorSpace.Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6406f56be53736f4fe2d29ad74d2abd2e1fa4eb5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6406f56be53736f4fe2d29ad74d2abd2e1fa4eb5`.

Source path: `GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Besicovitch` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/macro-rules--d10e6e42285638e6d17a38b8.md) | 55 | `declaration-track:d10e6e42285638e6d17a38b8409366466c574d781ce8d02029656fae57888aac` |
| 2 | `def` | [centerAndRescale](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/centerandrescale--76b1a70b891411463e0c2f2d.md) | 73 | `declaration-track:76b1a70b891411463e0c2f2d1e144fe5f8bd00e3534c926bf0342f7f47444abd` |
| 3 | `theorem` | [centerAndRescale_center](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/centerandrescale-center--6e0b69bd6208547d74d862fb.md) | 123 | `result-track:6e0b69bd6208547d74d862fbee4255c825d0854427f49d456e4c495db93c2e40` |
| 4 | `theorem` | [centerAndRescale_radius](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/centerandrescale-radius--8bd17734bf808e44cf87d286.md) | 127 | `result-track:8bd17734bf808e44cf87d286a6b0bce9ee8041988962460609d6560b0e389e56` |
| 5 | `def` | [multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/multiplicity--503efa4c427866fc1538296e.md) | 139 | `declaration-track:503efa4c427866fc1538296ed04c1cdab5e7e824913c51cd6b338558197785e8` |
| 6 | `theorem` | [card_le_of_separated](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/card-le-of-separated--cbc96dab303ed240bcbb42ef.md) | 150 | `result-track:cbc96dab303ed240bcbb42ef9236024fa0ba1436d20f6738a383817eaa9cfae6` |
| 7 | `theorem` | [multiplicity_le](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/multiplicity-le--2be024bc6d032a7fa030fb00.md) | 194 | `result-track:2be024bc6d032a7fa030fb001074233654073b9919d2ff9ded8179c85869c8c8` |
| 8 | `theorem` | [card_le_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/card-le-multiplicity--76f3f2c851a4656b964323c0.md) | 201 | `result-track:76f3f2c851a4656b964323c0900095a7bcf77fa366daf8dc8d18a689795da11c` |
| 9 | `theorem` | [exists_goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/exists-good--ba9214c523f9fea5b2ef1e0f.md) | 215 | `result-track:ba9214c523f9fea5b2ef1e0fc1683fcdd5cab149eebaf24d7772d5f593f537d8` |
| 10 | `def` | [goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/good--2d6ee9e831ecb1bda9f6d25e.md) | 292 | `declaration-track:2d6ee9e831ecb1bda9f6d25e416483717d5799f840fa556c9e44af1ff8553fec` |
| 11 | `theorem` | [goodδ_lt_one](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/good-lt-one--f527750e04a46efe75702b3b.md) | 296 | `result-track:f527750e04a46efe75702b3b619b7b275130a3b289afe82ca585a95a960cdd0a` |
| 12 | `def` | [goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/good--263584db6ed8ceca86023d56.md) | 303 | `declaration-track:263584db6ed8ceca86023d56385d17df14b68cdaf1dd1d5fb91933cd2cee0c93` |
| 13 | `theorem` | [one_lt_goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/one-lt-good--db8ff5ed3fb93f01fa0fbfb2.md) | 307 | `result-track:db8ff5ed3fb93f01fa0fbfb2fad58cbd19b867f26f075ba3bcefefddfc75a138` |
| 14 | `theorem` | [card_le_multiplicity_of_δ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/card-le-multiplicity-of--87b031aec835030f2aae1cb6.md) | 313 | `result-track:87b031aec835030f2aae1cb6149738484d13b589097508dcb41981200d8f27b7` |
| 15 | `theorem` | [le_multiplicity_of_δ_of_fin](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/le-multiplicity-of-of-fin--42fdb2cda2d8014315ac25bc.md) | 318 | `result-track:42fdb2cda2d8014315ac25bc6ed5072dc6ad6ac028262a5055c72e43da41e41c` |
| 16 | `theorem` | [exists_normalized_aux1](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/exists-normalized-aux1--2b969ad796ac8885252d18fa.md) | 363 | `result-track:2b969ad796ac8885252d18fa45b15b988c1d932a149ef62dbf024f6f1a271bdb` |
| 17 | `theorem` | [exists_normalized_aux2](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/exists-normalized-aux2--bee7c9c74dd035c2f33327ae.md) | 395 | `result-track:bee7c9c74dd035c2f33327aee862165a0feaf78b7961b5316f490b632171e2fa` |
| 18 | `theorem` | [exists_normalized_aux3](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/exists-normalized-aux3--c8a06a99da41404759624927.md) | 451 | `result-track:c8a06a99da41404759624927285a7170418f7399ab7adfa79453a9a406bf1bba` |
| 19 | `theorem` | [exists_normalized](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/exists-normalized--6bfe50a9642b7e9bb0c6864b.md) | 508 | `result-track:6bfe50a9642b7e9bb0c6864b765c331277bfff18bfd798842e66d32e50852914` |
| 20 | `theorem` | [isEmpty_satelliteConfig_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/isempty-satelliteconfig-multiplicity--d95cd8c291505931a94038de.md) | 546 | `result-track:d95cd8c291505931a94038de44d5b3bd45ea65c610df0e5d0de7a7d07c347d92` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante30f53f5c79b35f2206d429057685f977688cc482d2b2edbcec7ed638853384b.lean/declarations/instance--9ef3b975766f7cad8a1222f7.md) | 558 | `declaration-track:9ef3b975766f7cad8a1222f73ce35664c8d426f1297482419978ca1d21690f97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

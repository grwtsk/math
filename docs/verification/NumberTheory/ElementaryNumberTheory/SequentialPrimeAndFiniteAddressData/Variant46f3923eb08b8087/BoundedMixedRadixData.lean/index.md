# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.BoundedMixedRadixData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9eb35ff7a4a248d15e23f823bfaded1bc9227b6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9eb35ff7a4a248d15e23f823bfaded1bc9227b6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiberCoordinate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean/declarations/fibercoordinate--819e0c5e02b48cd24f751395.md) | 35 | `declaration-track:819e0c5e02b48cd24f751395934888a5ff3cb87c3a67b5a9575565a6cbb561c5` |
| 2 | `def` | [mixedRadixValues](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean/declarations/mixedradixvalues--274867f27b8249566f2924c6.md) | 43 | `declaration-track:274867f27b8249566f2924c6ee81f1c96517c520811b14249edb9b67010d2905` |
| 3 | `def` | [FiberCoordinate.mixedRadix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean/declarations/fibercoordinate-mixedradix--77b7679dbb9ab9a743988643.md) | 50 | `declaration-track:77b7679dbb9ab9a7439886431c17008d5e4f82ebadfa3dfc4ef5c884cba7530f` |
| 4 | `structure` | [MixedRadixEquivalence](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/BoundedMixedRadixData.lean/declarations/mixedradixequivalence--d0abcabaaa979145374f0a45.md) | 58 | `declaration-track:d0abcabaaa979145374f0a453ef39528f9976d4d88211707aed69941458f2d31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.PairingAndSequenceFormulas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fe600d5ef0668ccb0b9c401ea3df61c28723685",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fe600d5ef0668ccb0b9c401ea3df61c28723685`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SpecificationAndPrimeEnumeration`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/SpecificationAndPrimeEnumeration.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cantorPair](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean/declarations/cantorpair--f71e6b73dff84f140b18e8db.md) | 37 | `declaration-track:f71e6b73dff84f140b18e8db7a3942e919a488315c08435c2b635acd0b1342c7` |
| 2 | `def` | [finiteSequenceCode](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean/declarations/finitesequencecode--ed27ea81749fbf5684855f45.md) | 41 | `declaration-track:ed27ea81749fbf5684855f45f7ce644b5104be71e18a62cce790ac0b4a41d4e4` |
| 3 | `def` | [specificationCode](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean/declarations/specificationcode--28dbb79d991385b3a49970cc.md) | 46 | `declaration-track:28dbb79d991385b3a49970cca2b4da741b0551d72535aef8782073b87616884c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.RawTripleEnumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f1b7c14bc4f9001b415c6aaab827c4beb1de42d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f1b7c14bc4f9001b415c6aaab827c4beb1de42d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Nth` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.PairingAndSequenceFormulas`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/PairingAndSequenceFormulas.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RawCarrierAddress](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/rawcarrieraddress--121c0b131c5396fb5d1323b3.md) | 37 | `declaration-track:121c0b131c5396fb5d1323b3a3ed927f5e821788145ca4a2b6b3bbd400578b62` |
| 2 | `def` | [rawAddressCode](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/rawaddresscode--6f3621cce6f25fbf615be3f2.md) | 44 | `declaration-track:6f3621cce6f25fbf615be3f23779daa5072bd90bcf4ccd474565297dfd244e27` |
| 3 | `structure` | [AddressEnumeration](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/addressenumeration--243e708c108c144d942f3195.md) | 53 | `declaration-track:243e708c108c144d942f3195adca954079fa532344828b6d0d9c78b2021e53ab` |
| 4 | `def` | [naturalAddressEnumeration](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/naturaladdressenumeration--eba599eb23154f0e0f4daee6.md) | 62 | `declaration-track:eba599eb23154f0e0f4daee6f93f9b1209cd8032fa48c9c5ba44c444747608d6` |
| 5 | `def` | [rawAddressEquivNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/rawaddressequivnat--9137c6c915b461cd0522c47f.md) | 69 | `declaration-track:9137c6c915b461cd0522c47f2090e499c4fd06d25d65224d315929602a95cec4` |
| 6 | `def` | [rawAddressEnumeration](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/rawaddressenumeration--654eef2e4a0af31f565461e7.md) | 85 | `declaration-track:654eef2e4a0af31f565461e775bcd6cf3e55a3e12874e6b1fefd113991ef0f6e` |
| 7 | `def` | [rawCanonicalAddressEnumeration](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/rawcanonicaladdressenumeration--7ad61229fdd74f8cba17fcf4.md) | 94 | `declaration-track:7ad61229fdd74f8cba17fcf46ec2b3ceb25cf8096fea357b7cf68985c7be2715` |
| 8 | `theorem` | [rawCanonicalAddressEnumeration_code_enumerate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/rawcanonicaladdressenumeration-code-enumerate--406081036ce311fc5f14eff5.md) | 103 | `result-track:406081036ce311fc5f14eff5e848ef9b710829fe682f5926a308ff5d67767b6b` |
| 9 | `theorem` | [rawCanonicalAddressEnumeration_order](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SequentialPrimeAndFiniteAddressData/Variant46f3923eb08b8087/RawTripleEnumeration.lean/declarations/rawcanonicaladdressenumeration-order--c3991e99e9783874e9b39b37.md) | 108 | `result-track:c3991e99e9783874e9b39b372dd27d03c65fa2d0f78a0476adaecc641a71140e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

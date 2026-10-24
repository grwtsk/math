# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dc50b3abdbc695610b7afe1e1a924192d15036d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dc50b3abdbc695610b7afe1e1a924192d15036d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/sequentialprimespecification--4f92cb07ee77c404c680e76c.md) | 25 | `declaration-track:4f92cb07ee77c404c680e76c81e3a98cb1b91ac5612770c38a77c5a81045ab05` |
| 2 | `def` | [rank](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/rank--6bfa0435b0513a0e74f8f3cf.md) | 34 | `declaration-track:6bfa0435b0513a0e74f8f3cf98cadfb71c0ea67d0f8fb583e53c337293b20826` |
| 3 | `structure` | [PrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/primeenumeration--6e81bf72ce2e467545d79e75.md) | 38 | `declaration-track:6e81bf72ce2e467545d79e75c3406a2b7ff778577c8e078bde61d9240aaffe0d` |
| 4 | `def` | [cantorPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/cantorpair--ee11ac55ab972528571e9340.md) | 46 | `declaration-track:ee11ac55ab972528571e9340e0ff87817d474353ef7c665b7d31435038bd9262` |
| 5 | `def` | [finiteSequenceCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/finitesequencecode--fe2921cfb0f97ed141d39f21.md) | 50 | `declaration-track:fe2921cfb0f97ed141d39f21bfa26e10a57cffba0a1451a0eef0771e5fde21ae` |
| 6 | `def` | [specificationCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/specificationcode--c4a54226a579e0ab0cc02633.md) | 55 | `declaration-track:c4a54226a579e0ab0cc02633e666f6b68c8492b8d9fbeecf03e9cf160945c458` |
| 7 | `structure` | [FiberCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/fibercoordinate--b9e6fd001fc6cbce2d592631.md) | 60 | `declaration-track:b9e6fd001fc6cbce2d5926315b89ae2a45793b61b008be3fecfdcb9b2bf4d956` |
| 8 | `def` | [mixedRadixValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/mixedradixvalues--3fe0773c6c8f2237a839681f.md) | 68 | `declaration-track:3fe0773c6c8f2237a839681f2119a00b32976f233f4097571e78a979fe9fb531` |
| 9 | `def` | [FiberCoordinate.mixedRadix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/fibercoordinate-mixedradix--f6b1e870515efd3709f2c4f2.md) | 75 | `declaration-track:f6b1e870515efd3709f2c4f25a28ba0e07498e2fb342a16a9ce15a043c4c5d20` |
| 10 | `structure` | [MixedRadixEquivalence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/mixedradixequivalence--f3ff6801d48db30e9861bcdf.md) | 83 | `declaration-track:f3ff6801d48db30e9861bcdfa850e773daf3cafcf4cc6c40999ab708d64bb5be` |
| 11 | `structure` | [RawCarrierAddress](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/rawcarrieraddress--cea59b522d8dfc1b47bfeac9.md) | 92 | `declaration-track:cea59b522d8dfc1b47bfeac97860b7693d566c116439eaaade3222ee1ccd692b` |
| 12 | `def` | [rawAddressCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/rawaddresscode--6e72f350ae71b38589eef4c8.md) | 99 | `declaration-track:6e72f350ae71b38589eef4c8ddd821a940cfdad005549cdda11abd348b3ef058` |
| 13 | `structure` | [AddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/addressenumeration--675b1b2bffd9d86bd5afa0dc.md) | 108 | `declaration-track:675b1b2bffd9d86bd5afa0dc70c0d7f356f89dc7ff462c375c7ff0d2d0d41465` |
| 14 | `def` | [rawAddressEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/rawaddressequivnat--55d5fed66963a0c2ebd932a0.md) | 116 | `declaration-track:55d5fed66963a0c2ebd932a0532b312fab4c47c543d8fb86df444bdd0b632027` |
| 15 | `def` | [rawAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variantf85371913e5552b9b7cf442a1957e9665a299f26449e59962b5f5e267839d476.lean/declarations/rawaddressenumeration--c11aec4bf6f72d007ad12d23.md) | 132 | `declaration-track:c11aec4bf6f72d007ad12d236b617b11901604d5633b9dace85143ff8cac45ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.AdeleRing.Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df778858ba672aab04182efdcb1431c6660f2046",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df778858ba672aab04182efdcb1431c6660f2046`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Completion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InfiniteAdeleRing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/infiniteadelering--c6194bc6c9c2d8913b4735f5.md) | 59 | `declaration-track:c6194bc6c9c2d8913b4735f55fec52cde21c23e80109c452885baaa77895e207` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--a8ece4f16cbc84e84a5a4972.md) | 65 | `declaration-track:a8ece4f16cbc84e84a5a4972d4bf1ad90b59b7b69225a2c783e1670f96fb86ae` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--95774b598a0a6c9c6742f1df.md) | 67 | `declaration-track:95774b598a0a6c9c6742f1df5444021ff869fddb8f7382e4a7d8f37cdb5c303f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--930033baa1a65a0a05a6e5be.md) | 69 | `declaration-track:930033baa1a65a0a05a6e5be05691672086ccc53ca23709e44deca1bebfc995c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--79ce83195c3b69d39c4769bc.md) | 72 | `declaration-track:79ce83195c3b69d39c4769bcf54c890eea1fb4357ce087bbc9b08d287557b32b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--b3eb27419373310a18ec982d.md) | 74 | `declaration-track:b3eb27419373310a18ec982d2dbabba6ac0f150f39fad4474060d70e61cca11a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--f19161325dcba59973054afc.md) | 76 | `declaration-track:f19161325dcba59973054afc1ef2c3ead7baf36ce8fbb0ece9a07c8bac206571` |
| 8 | `theorem` | [algebraMap_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/algebramap-apply--57f91c0abe46515b7aa3d123.md) | 79 | `result-track:57f91c0abe46515b7aa3d12328005dbc2e4c8395f3fea27e7bdaecb8ad3b7f6b` |
| 9 | `instance` | [locallyCompactSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/locallycompactspace--fa95d1b5f283d424aa750100.md) | 83 | `declaration-track:fa95d1b5f283d424aa750100120eefa1d614deb3661057cebab7f20bad92aa56` |
| 10 | `abbrev` | [ringEquiv_mixedSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/ringequiv-mixedspace--76f96f4ad9ab5533685e8449.md) | 89 | `declaration-track:76f96f4ad9ab5533685e8449c54de8382358c12cf6e7e62b0832d20d9e240c1a` |
| 11 | `theorem` | [ringEquiv_mixedSpace_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/ringequiv-mixedspace-apply--8717d73e582d6f085e636a09.md) | 103 | `result-track:8717d73e582d6f085e636a09a9d02eadd26c7b365f0b81282e5a2114cd9cd633` |
| 12 | `theorem` | [mixedEmbedding_eq_algebraMap_comp](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/mixedembedding-eq-algebramap-comp--a4e62dd17926e4a8bd6a4d88.md) | 111 | `result-track:a4e62dd17926e4a8bd6a4d889adb56b144874bf1f8e993ff7a26271901da0c39` |
| 13 | `def` | [AdeleRing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/adelering--014187b0858f5cd49bdf15cf.md) | 136 | `declaration-track:014187b0858f5cd49bdf15cfb88c83f411019afc60b724c6e84f94c3b8d7a9e9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--7222e1f9df0c3d5c1132fc3d.md) | 144 | `declaration-track:7222e1f9df0c3d5c1132fc3df455ffb299190322e9816b88df9dd629b77826ad` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--2e62b5a5b9a17bd129bf8cbd.md) | 146 | `declaration-track:2e62b5a5b9a17bd129bf8cbd0a500bb3ed88bfea1c394d5ae88d947b3eb4d283` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--5dc6d8fe380277b16daa69bf.md) | 148 | `declaration-track:5dc6d8fe380277b16daa69bf11b10f23dd4a798e2027c70afac406fb51f8edc0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--331c7e4cf795adc579e19459.md) | 150 | `declaration-track:331c7e4cf795adc579e194598d2a2bf3e44e5ecf7ef3539e3bdf0d2870cf8558` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/instance--0f33478455d6196890c246b0.md) | 152 | `declaration-track:0f33478455d6196890c246b01fabf1e2eaef94eb0275d5b2038b56defd9e5696` |
| 19 | `theorem` | [algebraMap_fst_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/algebramap-fst-apply--1bad6110a4e82c7e218d5a81.md) | 155 | `result-track:1bad6110a4e82c7e218d5a81fc3bdd6e42d6569943281d44b7cb7a584daf212d` |
| 20 | `theorem` | [algebraMap_snd_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/algebramap-snd-apply--ced70f10843d4bcc7b9a5c15.md) | 159 | `result-track:ced70f10843d4bcc7b9a5c15561f32ff6eab928c7e4b98662f3a72a2b50218cb` |
| 21 | `theorem` | [algebraMap_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/algebramap-injective--1a10fb2b3998d131cffaca82.md) | 162 | `result-track:1a10fb2b3998d131cffaca829da2122a54743110ad338eca9e908358167293ef` |
| 22 | `abbrev` | [principalSubgroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variantf92b148ecc756bed613f143e06d2bfd6cdb69805781870dce0717ce7839c60d0.lean/declarations/principalsubgroup--6a1c89fb614fa6cc39d0f1df.md) | 166 | `declaration-track:6a1c89fb614fa6cc39d0f1dfacc1ac8213699e0e1be314dd615041e0b34132dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

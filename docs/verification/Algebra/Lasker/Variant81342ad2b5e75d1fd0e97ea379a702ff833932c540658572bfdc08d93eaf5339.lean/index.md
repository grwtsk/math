# Verification target: GRWTSK.Algebra.Lasker.Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96728106ebb6fe1a666c600e42ea8edbb0daa5a9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96728106ebb6fe1a666c600e42ea8edbb0daa5a9`.

Source path: `GRWTSK/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Irreducible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Colon` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLasker](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/declarations/islasker--3e385a45dd6d33a90bd83fd1.md) | 37 | `declaration-track:3e385a45dd6d33a90bd83fd1074c475f610920a7b547207884cba536a6f75423` |
| 2 | `lemma` | [decomposition_erase_inf](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/declarations/decomposition-erase-inf--1ec50920862900a6ed990caa.md) | 44 | `result-track:1ec50920862900a6ed990caa7b9358ba906371ca70996688d8e0b2afd37c0b8d` |
| 3 | `lemma` | [isPrimary_decomposition_pairwise_ne_radical](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/declarations/isprimary-decomposition-pairwise-ne-radical--16b8ff26a834acf8a08a1bcc.md) | 60 | `result-track:16b8ff26a834acf8a08a1bcc717f5044a1026be9cff715024443c84911093512` |
| 4 | `lemma` | [exists_minimal_isPrimary_decomposition_of_isPrimary_decomposition](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/declarations/exists-minimal-isprimary-decomposition-of-isprimary-decomposition--4b0e3c705d0282bdba48ae65.md) | 96 | `result-track:4b0e3c705d0282bdba48ae6533b8d78282328a87c205917dcb9728696619d88c` |
| 5 | `lemma` | [IsLasker.minimal](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/declarations/islasker-minimal--eb64ece069c7ed0cac9a0c59.md) | 105 | `result-track:eb64ece069c7ed0cac9a0c599a4bdf5fac5c85bb3c9ed23d6ee4af464e8fb867` |
| 6 | `lemma` | [_root_.InfIrred.isPrimary](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/declarations/root-infirred-isprimary--31b47522505d2573bef17146.md) | 122 | `result-track:31b47522505d2573bef17146d792025de10177abd801c3a49c40e0e3be94379f` |
| 7 | `lemma` | [isLasker](../../../../mathematics/Algebra/Lasker/Variant81342ad2b5e75d1fd0e97ea379a702ff833932c540658572bfdc08d93eaf5339.lean/declarations/islasker--ad22710488c53b31bfb20f14.md) | 163 | `result-track:ad22710488c53b31bfb20f1408df7e1132d9883ecacdd8ce34ab4575e9732262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.Locus.Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75056e6ceb434df880749841a750ef22486580d6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75056e6ceb434df880749841a750ef22486580d6`.

Source path: `GRWTSK/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.InvSubmonoid` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/isunramifiedat--0e5ae2a41fa63582a21da6d2.md) | 45 | `declaration-track:0e5ae2a41fa63582a21da6d27b0b073c360c2277a7554ef01fcbae03230b4354` |
| 2 | `def` | [unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/unramifiedlocus--95a641cec126e91e3218067d.md) | 50 | `declaration-track:95a641cec126e91e3218067da081007ce72b698c1d9736046ae48c6b6ba13adc` |
| 3 | `lemma` | [IsUnramifiedAt.comp](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/isunramifiedat-comp--79f7388c77bb802e706ef29e.md) | 53 | `result-track:79f7388c77bb802e706ef29ea3e7f86062a2cb8e0f94c14230edc41575ad8725` |
| 4 | `lemma` | [IsUnramifiedAt.of_restrictScalars](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/isunramifiedat-of-restrictscalars--5d23d46ac2b9da9cd8b26740.md) | 62 | `result-track:5d23d46ac2b9da9cd8b267407a0a5e1325d93e7ab91150f81d2764187ded29d6` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/instance--c8f778051296c0474d49285c.md) | 66 | `declaration-track:c8f778051296c0474d49285c05d9f2f64702ffe7e91f135a1fb052458c95f3e6` |
| 6 | `theorem` | [IsUnramifiedAt.residueField](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/isunramifiedat-residuefield--7a9fd7d24cc07befa4042f30.md) | 75 | `result-track:7a9fd7d24cc07befa4042f30e44456c0d02126860bc8d89d65af59eb65ea2ade` |
| 7 | `def` | [IsUnramifiedIn](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/isunramifiedin--d609ce1849e7a54fa5e78ff2.md) | 98 | `declaration-track:d609ce1849e7a54fa5e78ff2d75a32bc51e60d8f6b987e8ab771b5cb2086a259` |
| 8 | `theorem` | [isUnramifiedIn_top](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/isunramifiedin-top--2f2eca54c2c91113d9fb959b.md) | 103 | `result-track:2f2eca54c2c91113d9fb959b519fa10e7e2495b8707287b592c284ec257a1f0f` |
| 9 | `lemma` | [unramifiedLocus_eq_compl_support](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/unramifiedlocus-eq-compl-support--9a0f70994fca878660f475ce.md) | 111 | `result-track:9a0f70994fca878660f475cef20b7d91bf74aecfa43f276284eec790c7018e6c` |
| 10 | `lemma` | [basicOpen_subset_unramifiedLocus_iff](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/basicopen-subset-unramifiedlocus-iff--9d237c6b072517bb6f96db09.md) | 119 | `result-track:9d237c6b072517bb6f96db0973099a373aa8af0901879fbc7220b7c3e353ae7a` |
| 11 | `lemma` | [unramifiedLocus_eq_univ_iff](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/unramifiedlocus-eq-univ-iff--f74dd14d74f6fe40ab4b7f63.md) | 128 | `result-track:f74dd14d74f6fe40ab4b7f63da031978794dd5c3a4e033d1e29495283fc3d675` |
| 12 | `theorem` | [formallyUnramified_iff_forall](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/formallyunramified-iff-forall--e205062ddaf081ba126061f5.md) | 133 | `result-track:e205062ddaf081ba126061f5f059dc012946d39632551b09c497b26189776673` |
| 13 | `theorem` | [unramified_iff_forall](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/unramified-iff-forall--6fba6f1d73ae4ade3833fff4.md) | 137 | `result-track:6fba6f1d73ae4ade3833fff4e3e4a43269dacfd71fc63f157c93b321dda3e5c4` |
| 14 | `lemma` | [isOpen_unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/isopen-unramifiedlocus--58a301179be90b7d21047401.md) | 141 | `result-track:58a301179be90b7d2104740129d2109856a9979cc30212110d19f31b0afe47d6` |
| 15 | `lemma` | [exists_formallyUnramified_of_isUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/exists-formallyunramified-of-isunramifiedat--fc5c70f5f4389ab316cf9d91.md) | 145 | `result-track:fc5c70f5f4389ab316cf9d91deb2da91e6678b72c0571ef3c39c0ff7adf904d1` |
| 16 | `lemma` | [exists_unramified_of_isUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/declarations/exists-unramified-of-isunramifiedat--4f9b64e89d69fef02d460ed7.md) | 152 | `result-track:4f9b64e89d69fef02d460ed73b270a024dee262a724c9282c12c82e04e960f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

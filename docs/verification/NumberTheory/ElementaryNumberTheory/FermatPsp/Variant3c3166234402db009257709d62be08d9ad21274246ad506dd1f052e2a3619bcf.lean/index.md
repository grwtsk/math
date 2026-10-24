# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FermatPsp.Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b305dcf0031420054d1f12549d3185763795d202",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b305dcf0031420054d1f12549d3185763795d202`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/probableprime--f8f9efea654e5a91f69eec17.md) | 50 | `declaration-track:f8f9efea654e5a91f69eec17ae8bfe728a00da29c82ff39a4768e1ae6b8a2f5c` |
| 2 | `def` | [FermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/fermatpsp--0a87a19025a302003938f82d.md) | 58 | `declaration-track:0a87a19025a302003938f82db25c19c852592690dd8c76f20581f6fe2880c45f` |
| 3 | `instance` | [decidableProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/decidableprobableprime--f205857ca1e385ad494d1e5f.md) | 61 | `declaration-track:f205857ca1e385ad494d1e5fe6cc1becddb9e99f75896bb3a585eaba68614fd1` |
| 4 | `instance` | [decidablePsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/decidablepsp--90902427774a175587a0d43e.md) | 64 | `declaration-track:90902427774a175587a0d43e9d29ee16de6cfc77f312723b14a2832b685c9055` |
| 5 | `theorem` | [coprime_of_probablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/coprime-of-probableprime--e37f3d5e697b0715de73a2f4.md) | 70 | `result-track:e37f3d5e697b0715de73a2f45ea39299a41067a8b7caf09139957515bd7a333c` |
| 6 | `theorem` | [probablePrime_iff_modEq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/probableprime-iff-modeq--791fb1a13b150934fd177147.md) | 96 | `result-track:791fb1a13b150934fd177147a8e8639762846f85404fdd3d0e455acb941f71d5` |
| 7 | `theorem` | [coprime_of_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/coprime-of-fermatpsp--3c020ddec49f207fdcefef6f.md) | 113 | `result-track:3c020ddec49f207fdcefef6fadc4c2664c42fb0f89980e804d7ac4a810717b10` |
| 8 | `theorem` | [fermatPsp_base_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/fermatpsp-base-one--dd0234824125a4dcce00e7bb.md) | 119 | `result-track:dd0234824125a4dcce00e7bb5ccd44c89e816ad27d9abc3613844e2aa65f7f20` |
| 9 | `theorem` | [a_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/a-id-helper--f42bae771c97a83a9822f39a.md) | 127 | `result-track:f42bae771c97a83a9822f39af8875bd87a48ed240679151813c5903a59dc4a69` |
| 10 | `theorem` | [b_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/b-id-helper--4e2570bfd334ad2145e47f69.md) | 133 | `result-track:4e2570bfd334ad2145e47f69f172273b4ddd60d0eaf15934fd72e8da5853b4b0` |
| 11 | `theorem` | [AB_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/ab-id-helper--baac7bde983f8ab7870ff96a.md) | 141 | `result-track:baac7bde983f8ab7870ff96acc90e0049009f582f85ca720fc004f2a4d19bdf7` |
| 12 | `theorem` | [bp_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/bp-helper--8d222d05427c14c6bec73b6a.md) | 150 | `result-track:8d222d05427c14c6bec73b6abf5116fe0d7908d045ace208e03e875696f9158f` |
| 13 | `def` | [psp_from_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/psp-from-prime--6330bf79895a8239a3b8e3fa.md) | 179 | `declaration-track:6330bf79895a8239a3b8e3fad1fa5cdb05ebeb3ae6851306a9090fdcc1ed9fe4` |
| 14 | `theorem` | [psp_from_prime_psp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/psp-from-prime-psp--9ec052df97cefd562c6cd030.md) | 188 | `result-track:9ec052df97cefd562c6cd03046391e9e965cd5179d42f1f89f849ab4206ca11a` |
| 15 | `theorem` | [psp_from_prime_gt_p](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/psp-from-prime-gt-p--571276fee2e8b44e71b29119.md) | 285 | `result-track:571276fee2e8b44e71b29119dedff91315e9543d7ac40729c4527d128c24d756` |
| 16 | `theorem` | [exists_infinite_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/exists-infinite-pseudoprimes--b0e7a8d44e85f584084bfbd4.md) | 319 | `result-track:b0e7a8d44e85f584084bfbd4013c65fcabe3e1405a02c5b000a86ac7ee159a00` |
| 17 | `theorem` | [frequently_atTop_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/frequently-attop-fermatpsp--30c371255f2fc7825229d49d.md) | 353 | `result-track:30c371255f2fc7825229d49df18d852b073728abac3b7c735c4ee3ae69824af3` |
| 18 | `theorem` | [infinite_setOf_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/declarations/infinite-setof-pseudoprimes--bd032a4ee7206437c1d4945e.md) | 361 | `result-track:bd032a4ee7206437c1d4945e06d4d2ae3e680bf924633393d89f0934f24bf5f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

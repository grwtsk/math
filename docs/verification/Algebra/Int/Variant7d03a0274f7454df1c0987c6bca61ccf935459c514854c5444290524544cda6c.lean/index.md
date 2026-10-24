# Verification target: GRWTSK.Algebra.Int.Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93cd49e2fd800e3dd0cc2b4f72568d00f8c8f76e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93cd49e2fd800e3dd0cc2b4f72568d00f8c8f76e`.

Source path: `GRWTSK/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteger](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/isinteger--714694bbca773856c9461b12.md) | 37 | `declaration-track:714694bbca773856c9461b12a0ce19ff5e189b77d4d07c0d31d6f30d22e2536d` |
| 2 | `lemma` | [isInteger_zero](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/isinteger-zero--7d02ef109eac725abac0464d.md) | 40 | `result-track:7d02ef109eac725abac0464d22945f7ba8d984437a4afbb583c523ab4799721a` |
| 3 | `theorem` | [isInteger_add](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/isinteger-add--a4d3f57dfd4cb9b50715ea47.md) | 43 | `result-track:a4d3f57dfd4cb9b50715ea47e60aefba629c929e357f5d0687f6346a9b03fbd0` |
| 4 | `theorem` | [isInteger_smul](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/isinteger-smul--6bb4683bf1177b435cd747d8.md) | 46 | `result-track:6bb4683bf1177b435cd747d8ddad96d11b5314df4994607e0c0b55298b1bae62` |
| 5 | `theorem` | [exists_integer_multiple](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/exists-integer-multiple--596220a27739a93a3c966334.md) | 55 | `result-track:596220a27739a93a3c96633421d7fec1aef488810f03399b1a1160ac139a586d` |
| 6 | `theorem` | [exist_integer_multiples](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/exist-integer-multiples--cc32b2155c61304b04134d7b.md) | 60 | `result-track:cc32b2155c61304b04134d7b58d2475c610839f2ba672df752647fc13206921e` |
| 7 | `theorem` | [exist_integer_multiples_of_finite](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/exist-integer-multiples-of-finite--76792844fe66d644ab88faa0.md) | 74 | `result-track:76792844fe66d644ab88faa0e22dff794d6897024da02b5e6425d76e416b563b` |
| 8 | `theorem` | [exist_integer_multiples_of_finset](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/exist-integer-multiples-of-finset--86beadfdcc7e08d7a5aea6ea.md) | 81 | `result-track:86beadfdcc7e08d7a5aea6ea33b687f39a4dcec3c0c82f5634ff4e528aabbd7a` |
| 9 | `def` | [commonDenom](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/commondenom--6c8da7fbc0ede825f39547bc.md) | 86 | `declaration-track:6c8da7fbc0ede825f39547bc63e93f0c31677793c8e6226aa730de99566ecd2a` |
| 10 | `def` | [integerMultiple](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/integermultiple--5211dbed04024802d72aa4b1.md) | 91 | `declaration-track:5211dbed04024802d72aa4b1406dad2d4a4bf14311b83fda1a11bfbedfad172c` |
| 11 | `theorem` | [map_integerMultiple](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/map-integermultiple--f0e1800ae2abe50c75a70b7b.md) | 95 | `result-track:f0e1800ae2abe50c75a70b7b6148c64aec7c2bb34135d82ba249397b4622570b` |
| 12 | `def` | [commonDenomOfFinset](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/commondenomoffinset--f0e71ed682030bca729832ab.md) | 100 | `declaration-track:f0e71ed682030bca729832abe208d3361c27cbee63cb45cd9f54d914cdcc2047` |
| 13 | `def` | [finsetIntegerMultiple](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/finsetintegermultiple--aea81477f685766848425865.md) | 104 | `declaration-track:aea81477f685766848425865ba1c3cf7212bd3f1183c71edf6febf5efacea816` |
| 14 | `theorem` | [finsetIntegerMultiple_image](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/finsetintegermultiple-image--b5022eb304d121d381ccf5f6.md) | 109 | `result-track:b5022eb304d121d381ccf5f63d03b50d10c39bb3a6ca3465d8068f464cc0439e` |
| 15 | `theorem` | [smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/Int/Variant7d03a0274f7454df1c0987c6bca61ccf935459c514854c5444290524544cda6c.lean/declarations/smul-mem-finsetintegermultiple-span--6471f0fa91f561e027ccfbc1.md) | 122 | `result-track:6471f0fa91f561e027ccfbc1bf1649072a7e6c29a793507f3089103bd0f66cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

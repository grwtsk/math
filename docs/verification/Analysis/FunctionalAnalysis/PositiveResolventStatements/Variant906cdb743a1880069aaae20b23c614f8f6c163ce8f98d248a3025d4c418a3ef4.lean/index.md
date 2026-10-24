# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventStatements.Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4f96edd3c05c2e320bbb03046b627d69e02fd08",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4f96edd3c05c2e320bbb03046b627d69e02fd08`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveshift--9b6dbbdca0ce6c0011c244a5.md) | 29 | `declaration-track:9b6dbbdca0ce6c0011c244a5714a37cf83a12de8cbecab5371cecc79b1becc7c` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveshift-ispositive--e684c2a7f489d4f84bae1e13.md) | 33 | `result-track:e684c2a7f489d4f84bae1e134e1136c139974b5d7bf3acfbb7e4b87301d191b7` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveshift-coercive--dca8e7f36aa6bc80373055b2.md) | 40 | `result-track:dca8e7f36aa6bc80373055b29cd975604ce53973fdce061ad3354d9543200807` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveshift-isunit--b561ec1ab7a68fb053d4bc63.md) | 55 | `result-track:b561ec1ab7a68fb053d4bc631f3b2baa6cb70e43aec57450baef2fbc39e4945a` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveresolvent--1dcdf2550ef99556297ed51f.md) | 66 | `declaration-track:1dcdf2550ef99556297ed51f449207a194035c102b5e05708ba1c182c2dfaad7` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveshift-mul-resolvent--93ccd1033fc535b72a7e951c.md) | 70 | `result-track:93ccd1033fc535b72a7e951cfafc87fb8c98a1a7e8424b268d6327e3622cbaaa` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/resolvent-mul-positiveshift--004e43daed03013bdc52ea0d.md) | 75 | `result-track:004e43daed03013bdc52ea0d336cb7f900386a2cedfe409063c4a0c922c6e432` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveshift-resolvent-apply--b57e1a97a5c8225f32e35246.md) | 80 | `result-track:b57e1a97a5c8225f32e352460d880a69f5dee2f692c14d385c7f850dc6af45ad` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveresolvent-norm-le--ace5e5c18d17d9f393c1b7ab.md) | 87 | `result-track:ace5e5c18d17d9f393c1b7abe6d720d6d647ceb65ad8ea8defaf92435b54f527` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveresolvent-ispositive--a8cef8508ee3fe46ee049de1.md) | 103 | `result-track:a8cef8508ee3fe46ee049de165452c9cf6ef1f4211d22ccd53b57b71b5232d16` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveresolvent-sub--1da83840032094e2b598be7d.md) | 114 | `result-track:1da83840032094e2b598be7d603ea9c203a8c728f35cd12132a7e0f5d08824c7` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/positiveresolvent-sub-norm-le--5617837b5b997feaba514bc8.md) | 126 | `result-track:5617837b5b997feaba514bc888238286400c4bf406ed14a5e88c2c0465d5608a` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/regularizedmass--c452a6ca0c6d8758cd3cedbb.md) | 140 | `declaration-track:c452a6ca0c6d8758cd3cedbb3bdcc2126d2f009d601ae589c138a292afebf336` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/abs-re-inner-map-le--dfb4f947abee7a47dcb3026e.md) | 144 | `result-track:dfb4f947abee7a47dcb3026ebdc600875a127d6c4af4d008859f0705881d2afe` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/regularizedmass-sub-abs-le--9e00626022c651d7d82e802e.md) | 153 | `result-track:9e00626022c651d7d82e802e8d1347c96f1efce45c1377c38e072037297686f7` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/reference-regularizedmass-sub-abs-le--dbb577dfd6e1db38ac37ecfd.md) | 173 | `result-track:dbb577dfd6e1db38ac37ecfd51082ecaabef673a12a0c190c2eca6f48d740176` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--73bd0ad1e3f317b1505a0094.md) | 198 | `declaration-track:73bd0ad1e3f317b1505a0094a65eee69e2932a71b27583d5af8e31859a34509a` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--f8f59d0d5f488e63f2ec3bb5.md) | 200 | `declaration-track:f8f59d0d5f488e63f2ec3bb5a09d2278736c2ae86e984fabeba82dd98141b73a` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--9a1c51e1ca0eb248ecc531f2.md) | 202 | `declaration-track:9a1c51e1ca0eb248ecc531f25177737ce267aea64829d43cc5bf44d1867660a9` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--7c9ea3acdf4512803fe53bff.md) | 204 | `declaration-track:7c9ea3acdf4512803fe53bff1278b5adc703b51e09dae8d3a125941da2d3d350` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--85b7c7c3e4854af09d4957db.md) | 208 | `declaration-track:85b7c7c3e4854af09d4957dbd379a953a6324ed66cb4e723a27ddb9cb497e82f` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--1b443e1151358197fde72591.md) | 213 | `declaration-track:1b443e1151358197fde725911a9646ce7dc2c8bdd71f2da35ccb34da015d79f0` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--d31ef5d5f1dd69e6e172741e.md) | 217 | `declaration-track:d31ef5d5f1dd69e6e172741e178d1007ed56b4d058be8ca4be61a4d9aec25a80` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--9aa3cdf4c3d09766f375a69e.md) | 221 | `declaration-track:9aa3cdf4c3d09766f375a69eeba8868fbe9079c3627a1590aa47804c17b47d06` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--068646a97d275d055d29103c.md) | 225 | `declaration-track:068646a97d275d055d29103c8f9f69f90aca1a4ab57639187900772cca3a6a55` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--fbe6067d5ecc873874e50197.md) | 230 | `declaration-track:fbe6067d5ecc873874e50197a686de05eb89ea3843d182115fb64fd7c30b87e6` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--5378b3d752389c00486b4f98.md) | 234 | `declaration-track:5378b3d752389c00486b4f983c06f9219f9e635e28756d9154648c246ef3792e` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--c7febe5bf12e8e37efeb0087.md) | 238 | `declaration-track:c7febe5bf12e8e37efeb0087e17112bf110fa097b9646bbde226feba732ad9d0` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--0832ba17028aa75108df3698.md) | 244 | `declaration-track:0832ba17028aa75108df3698385b4381dae3718f0c3fc1dfac10b2ce5c83f4e6` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--79c5eb4a43ba0c87f038cc7e.md) | 249 | `declaration-track:79c5eb4a43ba0c87f038cc7eb93735d0ead679e3e8e2c78686421cfa1852f210` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--7abc11a66f5c814128e6643f.md) | 254 | `declaration-track:7abc11a66f5c814128e6643f79fe2dc9a52c3a9d46dec216648b83b8c6eba873` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/declarations/example--8c2f7b2c3079b3d4cd9e400c.md) | 265 | `declaration-track:8c2f7b2c3079b3d4cd9e400c0bcbc87a770c16446bd200c0abbbf0d49442e0fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

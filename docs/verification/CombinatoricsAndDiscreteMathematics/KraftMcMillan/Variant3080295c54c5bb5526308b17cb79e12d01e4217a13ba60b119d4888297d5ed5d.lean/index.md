# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.KraftMcMillan.Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9278650f29163c61b2e9c413cfd18700e7c33bae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9278650f29163c61b2e9c413cfd18700e7c33bae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Normed` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [concatFn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/declarations/concatfn--8fb8def7ffa45b0c991c225d.md) | 56 | `declaration-track:8fb8def7ffa45b0c991c225da73e8e7e7852beb4b04e04d42cec0638bdabb1b5` |
| 2 | `lemma` | [concatFn_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/declarations/concatfn-length--7ac04696c2be6f57a0d30548.md) | 59 | `result-track:7ac04696c2be6f57a0d30548391a65f4f1bbe2dad4341f1ef0aed6dc14871c58` |
| 3 | `lemma` | [concatFn_injective_of_isUniquelyDecodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/declarations/concatfn-injective-of-isuniquelydecodable--2919eb1011cb60e62c4afb0c.md) | 68 | `result-track:2919eb1011cb60e62c4afb0c1c71e94709d55d04f5d6105c552905271e7601d5` |
| 4 | `lemma` | [sum_pow_length_filter_eq_le_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/declarations/sum-pow-length-filter-eq-le-card-mul--30441a6f12ef6948912201c3.md) | 76 | `result-track:30441a6f12ef6948912201c3b0400390aaa459c9f2739c8833773c91d65188d2` |
| 5 | `lemma` | [concatFn_length_mem_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/declarations/concatfn-length-mem-icc--6de8fbea671aecc02b104725.md) | 89 | `result-track:6de8fbea671aecc02b104725156ac17b388520690812712dddb271430c7db1db` |
| 6 | `lemma` | [kraft_mcmillan_inequality_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/declarations/kraft-mcmillan-inequality-aux--654db9c9b9d668b649e7f523.md) | 107 | `result-track:654db9c9b9d668b649e7f52346dacba838621717c6fe315e132ea022fd05655a` |
| 7 | `theorem` | [IsUniquelyDecodable.finsetSum_one_div_card_pow_length_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/declarations/isuniquelydecodable-finsetsum-one-div-card-pow-length-le-one--83b8799e09d1476327080a9b.md) | 153 | `result-track:83b8799e09d1476327080a9bef632622b864d1035c6c84c7e5dd4c26993b6804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Equitable.Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4dc0545b899873bde488d27d6858e85cd0f2d6a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4dc0545b899873bde488d27d6858e85cd0f2d6a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EquitableOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon--8481376a5db4b9ecddfe79aa.md) | 41 | `declaration-track:8481376a5db4b9ecddfe79aa00ea9e0320fd8b5ac51f92fe3023f59ab1af07e1` |
| 2 | `theorem` | [equitableOn_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-empty--59a94b66b0e7d17d5154fe6a.md) | 46 | `result-track:59a94b66b0e7d17d5154fe6ab680d60fc52e31fbc9320f8c7ddd3aaa717831bf` |
| 3 | `theorem` | [equitableOn_iff_exists_le_le_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-iff-exists-le-le-add-one--0cc7df53ab0dcd0d13cb8b04.md) | 50 | `result-track:0cc7df53ab0dcd0d13cb8b04e42c5885cbd9d6e85e3441546c3d5da39db70ec2` |
| 4 | `theorem` | [equitableOn_iff_exists_image_subset_icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-iff-exists-image-subset-icc--617cafb136db6da8bff841d6.md) | 65 | `result-track:617cafb136db6da8bff841d6f6f6a25cf86ecf9524b83ab7f750e3b1d387faaa` |
| 5 | `theorem` | [equitableOn_iff_exists_eq_eq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-iff-exists-eq-eq-add-one--d2f189f94e28dc3cb4895c0e.md) | 70 | `result-track:d2f189f94e28dc3cb4895c0e2bd67b9cfc2d4c40e97bb9b863221f0a806a86c3` |
| 6 | `theorem` | [Subsingleton.equitableOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/subsingleton-equitableon--715547669e370e1b6de4d92a.md) | 79 | `result-track:715547669e370e1b6de4d92ad0b146e0a57a8020515cb140d43ca70ea82d08c8` |
| 7 | `theorem` | [equitableOn_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-singleton--1806bb483f1f010f5fe7a948.md) | 85 | `result-track:1806bb483f1f010f5fe7a9489eaa2a6488a72ca5dd7943b47854ec90190cc03d` |
| 8 | `theorem` | [equitableOn_iff_le_le_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-iff-le-le-add-one--98e03a4449d5c8e1e96b0ad9.md) | 99 | `result-track:98e03a4449d5c8e1e96b0ad9cef84cf6bef1003b32e00f92c765c8f9a94a6377` |
| 9 | `theorem` | [EquitableOn.le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-le--65b5513bffe2883c8a6daccc.md) | 122 | `result-track:65b5513bffe2883c8a6daccc607a7c7b7a059c6e56db65af56e4d847f117a3d1` |
| 10 | `theorem` | [EquitableOn.le_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-le-add-one--fc81938bb9ebe9c2f0b531fc.md) | 127 | `result-track:fc81938bb9ebe9c2f0b531fc25b0f392aa05f28eca640de35c25810df2332810` |
| 11 | `theorem` | [equitableOn_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Equitable/Variant00995b705feedf59ffa74ef3351a7e0f258da19c28e6faab0e8489bd9aeb4b8d.lean/declarations/equitableon-iff--3591f23380b0e2e98e7ea308.md) | 132 | `result-track:3591f23380b0e2e98e7ea3087a130cc933e4aba6f4a0dd05ef45a9bed915e2e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

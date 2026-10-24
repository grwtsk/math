# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SMul.Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f4cc4f59d8df96566987987c3f2657d03683a8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f4cc4f59d8df96566987987c3f2657d03683a8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval₂_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean/declarations/eval-smul--34e7b1351524210361d0fe3b.md) | 48 | `result-track:34e7b1351524210361d0fe3bd86ac98735db3a1a108911bb4584fdb8b78f940e` |
| 2 | `theorem` | [eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean/declarations/eval-smul--ab8742b335da9727be414f5d.md) | 62 | `result-track:ab8742b335da9727be414f5d3591150cc45cec52784e7c42fe867b06353a90e4` |
| 3 | `def` | [leval](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean/declarations/leval--5938579994704d0764fca7c4.md) | 68 | `declaration-track:5938579994704d0764fca7c4347c4fbbfef365c60b814ce375482ae02272f3bd` |
| 4 | `theorem` | [smul_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean/declarations/smul-comp--465863568c61c7a6887cd918.md) | 78 | `result-track:465863568c61c7a6887cd918cf036a56a3f72a92f48991415d129266cc947853` |
| 5 | `theorem` | [map_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant0f073689ba809ed557245c961a3829bb5a0d81e8753b1389b3b8b35a80b15365.lean/declarations/map-smul--309f0034ba1183515dfc55e1.md) | 90 | `result-track:309f0034ba1183515dfc55e13781299d30a6fe66edf108a596d7eb629836c820` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

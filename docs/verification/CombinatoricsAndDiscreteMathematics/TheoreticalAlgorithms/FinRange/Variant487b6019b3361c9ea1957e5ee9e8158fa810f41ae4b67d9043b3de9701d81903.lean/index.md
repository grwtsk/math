# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5b698e662a8693d4c85b44f4e974ce0c06b872d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5b698e662a8693d4c85b44f4e974ce0c06b872d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.OfFn` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_coe_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/map-coe-finrange--c253eb576c8e71b8f7d0028b.md) | 25 | `result-track:c253eb576c8e71b8f7d0028be70c680e1de03fac5061440dcd4483dd3c3d7565` |
| 2 | `theorem` | [finRange_succ_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/finrange-succ-eq-map--82fb25bb8254f32dcc537aff.md) | 30 | `result-track:82fb25bb8254f32dcc537affb79c6a69ab17b0b36bb944d318dc5b77fc5f2d2a` |
| 3 | `theorem` | [ofFn_eq_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/offn-eq-pmap--cd39f26ca291b47fac457feb.md) | 39 | `result-track:cd39f26ca291b47fac457feb8e0c2410f1a83c59b485ecf799ba63939abafe8c` |
| 4 | `theorem` | [ofFn_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/offn-id--028273b8b3f46588572478e8.md) | 45 | `result-track:028273b8b3f46588572478e8d4d4f9029c28bd2e83319be3ed6e124d7ff6899c` |
| 5 | `theorem` | [ofFn_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/offn-eq-map--c99086999276f6c1a79be5c6.md) | 49 | `result-track:c99086999276f6c1a79be5c6a02cbbc401b7239a09031232a1436bd9ec70ea01` |
| 6 | `theorem` | [nodup_ofFn_ofInjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/nodup-offn-ofinjective--a40f1729c4e1a7c57eacb7b2.md) | 53 | `result-track:a40f1729c4e1a7c57eacb7b2eb0232fda32cea3d8bd90a4cb5e7cba6b38e2329` |
| 7 | `theorem` | [nodup_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/nodup-offn--4486eb8179be5b8c37cff47b.md) | 59 | `result-track:4486eb8179be5b8c37cff47b59526b7bc45b022b076c3ae0168c3e616f56e6ad` |
| 8 | `theorem` | [Equiv.Perm.map_finRange_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/equiv-perm-map-finrange-perm--3ab45fda70b1c1aaf5a7c743.md) | 74 | `result-track:3ab45fda70b1c1aaf5a7c7430b22077b1c039200cf60a98000ef8fce3bd1bbe4` |
| 9 | `theorem` | [Equiv.Perm.ofFn_comp_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant487b6019b3361c9ea1957e5ee9e8158fa810f41ae4b67d9043b3de9701d81903.lean/declarations/equiv-perm-offn-comp-perm--ee23cf040014bb98e00dad80.md) | 82 | `result-track:ee23cf040014bb98e00dad80b976d3e87920fe16453a37f1883db7f926c1e57b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

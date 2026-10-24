# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55cc52d14de52f65d7b8e237d7862495c62169b7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55cc52d14de52f65d7b8e237d7862495c62169b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/declarations/cast-list-sum--52a6332d02d70079f3704221.md) | 25 | `result-track:52a6332d02d70079f37042212c7b5d20610ff9c3a630769980b6fbf1f11031af` |
| 2 | `theorem` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/declarations/cast-multiset-sum--f9557f56cad9e97e12eee9dd.md) | 30 | `result-track:f9557f56cad9e97e12eee9dd28221484a6a5753d90538f7df9a523afd5c18e32` |
| 3 | `theorem` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/declarations/cast-sum--8736d3c1fc5a777057c88a12.md) | 35 | `result-track:8736d3c1fc5a777057c88a12b937d9c5758ea13ad87d8e79afd882d880806b7a` |
| 4 | `theorem` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/declarations/cast-list-prod--7344d6ce186f1962c48c17d7.md) | 40 | `result-track:7344d6ce186f1962c48c17d7a45e3dade761fd6415d15a47fa147485dbbbbf9b` |
| 5 | `theorem` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/declarations/cast-multiset-prod--6b7b3757e913b78dcd5ebb49.md) | 51 | `result-track:6b7b3757e913b78dcd5ebb496fdd464739d0d2469c27888c7bd2c6b7747d2426` |
| 6 | `theorem` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean/declarations/cast-prod--19735078a74885b2e7e69c18.md) | 56 | `result-track:19735078a74885b2e7e69c183f720bd8b5955b2af0dc783ec2284e6a9903908d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

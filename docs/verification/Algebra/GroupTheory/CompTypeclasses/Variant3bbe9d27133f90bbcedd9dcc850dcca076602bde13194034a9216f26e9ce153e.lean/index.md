# Verification target: GRWTSK.Algebra.GroupTheory.CompTypeclasses.Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76816dfcc2eaa8ad586bd7700842016e42640d47",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76816dfcc2eaa8ad586bd7700842016e42640d47`.

Source path: `GRWTSK/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.CompTypeclasses` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompTriple](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/comptriple--afeba10cbbb785277fb211fd.md) | 50 | `declaration-track:afeba10cbbb785277fb211fd15e6874f7ed68b485834a503bab72e28dfaa3d49` |
| 2 | `class` | [IsId](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/isid--944fe8a972aa2de95781e8c7.md) | 62 | `declaration-track:944fe8a972aa2de95781e8c7667e8b99c8187e6308d3d6d2c7495cedd921b3d5` |
| 3 | `instance` | [instIsId](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/instisid--060ca1b8130e459dfe983b32.md) | 65 | `declaration-track:060ca1b8130e459dfe983b322b9c418563c3945b3c88534f1b938f0add174693` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/instance--76ff1a614f42eae0ba562e2b.md) | 68 | `declaration-track:76ff1a614f42eae0ba562e2b3152a63b7e256ad8ea4aec962c2dcb51c7c39fd4` |
| 5 | `instance` | [instComp_id](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/instcomp-id--40c3027d2aa342f2dff41339.md) | 71 | `declaration-track:40c3027d2aa342f2dff41339476fe2fc4f5009313bde22e220e9c6a5d723efb0` |
| 6 | `instance` | [instId_comp](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/instid-comp--7a3705c4836a5964c33b45fb.md) | 76 | `declaration-track:7a3705c4836a5964c33b45fba6cca07e93670292d067c89a247cc8b11fe71508` |
| 7 | `lemma` | [comp_inv](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/comp-inv--a7f8f0246a03acc27896fb3c.md) | 81 | `result-track:a7f8f0246a03acc27896fb3c308875ad0dfd643e649009e253be66e194815d85` |
| 8 | `instance` | [instRootCompTriple](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/instrootcomptriple--f9d140d9269d800da3a68e2b.md) | 86 | `declaration-track:f9d140d9269d800da3a68e2b7bee97ba7c29c02206cdb5537a31d7eeed812bd3` |
| 9 | `theorem` | [comp](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/comp--f22d49dc71e9d3fe6e0593ad.md) | 93 | `result-track:f22d49dc71e9d3fe6e0593ad2859d6503f9a613d9dd5bdfc372fd4727b32ea7e` |
| 10 | `lemma` | [comp_apply](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/comp-apply--52aa9ad1ef08b66fdc14f0bc.md) | 97 | `result-track:52aa9ad1ef08b66fdc14f0bc631951b1c6f61b0012b55346e145c71c6b1d2af0` |
| 11 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/GroupTheory/CompTypeclasses/Variant3bbe9d27133f90bbcedd9dcc850dcca076602bde13194034a9216f26e9ce153e.lean/declarations/comp-assoc--7b06ab63c9305cbe2ad0a009.md) | 102 | `result-track:7b06ab63c9305cbe2ad0a00982db669e8d0ba049398b79eabf1b1cfa335afabf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

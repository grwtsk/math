# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b121e60b41da57b7743e4e50f5b14007efff33e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b121e60b41da57b7743e4e50f5b14007efff33e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppLEquivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean/declarations/finsupplequivdirectsum--812a6a070ddbd1dfa53907e8.md) | 41 | `declaration-track:812a6a070ddbd1dfa53907e89ac0b6a4826f1832b51ec887907f6992b4f1223f` |
| 2 | `theorem` | [finsuppLEquivDirectSum_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean/declarations/finsupplequivdirectsum-single--9d0384edc5a1bc2f42c9093a.md) | 46 | `result-track:9d0384edc5a1bc2f42c9093aa4b4ebe9b1b160861e372e4a6341320cc6593bfd` |
| 3 | `theorem` | [finsuppLEquivDirectSum_symm_lof](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf61a60decde40a78db28e8e76bc9e3e86a2c5a296572100569d9ef4ebd6ae436.lean/declarations/finsupplequivdirectsum-symm-lof--e0c1197f7efb381262ea3370.md) | 51 | `result-track:e0c1197f7efb381262ea337020f56116b3a14ae8346f4126c31f02ace01efb9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

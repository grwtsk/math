# Verification target: GRWTSK.Algebra.LinearAlgebra.Goursat.Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f188e36ea307b8b0c4f67815c853e8c7e6c40fa8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f188e36ea307b8b0c4f67815c853e8c7e6c40fa8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goursatFst](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/declarations/goursatfst--cd305fb360b4b35f824d53e2.md) | 47 | `declaration-track:cd305fb360b4b35f824d53e21e501490a431a95949cfbcc278a641af8492bb68` |
| 2 | `def` | [goursatSnd](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/declarations/goursatsnd--85732943be01c8948e693ea5.md) | 56 | `declaration-track:85732943be01c8948e693ea5f097e6b832100372a865f68c3bce24fba02d4b00` |
| 3 | `lemma` | [goursatFst_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/declarations/goursatfst-toaddsubgroup--d985c786f6259c07e3970269.md) | 59 | `result-track:d985c786f6259c07e39702695b5866285b69fae6569f11a22955dc7aee2ab9a4` |
| 4 | `lemma` | [goursatSnd_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/declarations/goursatsnd-toaddsubgroup--9156fed99c641e772f57467d.md) | 64 | `result-track:9156fed99c641e772f57467d0ad94182199aef5c698ca35738f5be4941da5f6c` |
| 5 | `lemma` | [goursatFst_prod_goursatSnd_le](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/declarations/goursatfst-prod-goursatsnd-le--f34885b789daa962e7a58e03.md) | 70 | `result-track:f34885b789daa962e7a58e03746244853dba2f1327adc287e303bd1ca9acf0ef` |
| 6 | `lemma` | [goursat_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/declarations/goursat-surjective--e217c2c4d4129c23e4a2c936.md) | 83 | `result-track:e217c2c4d4129c23e4a2c936aee6fd7bc4b95bd47a1f335a9d148771eb22adf6` |
| 7 | `lemma` | [goursat](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant1e8057513e75efe5c5758996043353ab044c5df240fda6d53229fee449b53237.lean/declarations/goursat--80fbc9becc6b6600c9f26862.md) | 111 | `result-track:80fbc9becc6b6600c9f268621ea8ce87ae2857eac4b6ab25027ba5fff74b80cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.ComplexAnalysis.BorelCaratheodory.Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93a02ec1040d17eb0b2a8a1b2b4ccaa688fbcdfa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93a02ec1040d17eb0b2a8a1b2b4ccaa688fbcdfa`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean.json)

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
| 1 | `lemma` | [eq_mul_div_one_add_of_eq_div_sub](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/declarations/eq-mul-div-one-add-of-eq-div-sub--e5a035d4bdd6ef9a2291afa7.md) | 52 | `result-track:e5a035d4bdd6ef9a2291afa76d4dc94c7c6675f002d7b6914c65874a84258914` |
| 2 | `lemma` | [norm_two_mul_div_one_add_le](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/declarations/norm-two-mul-div-one-add-le--658683f4f3139a7222815bda.md) | 58 | `result-track:658683f4f3139a7222815bda33719da32f391b7df4f0382ad6798c0a7ed0f68d` |
| 3 | `lemma` | [norm_le_norm_two_mul_sub](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/declarations/norm-le-norm-two-mul-sub--3782e08c7d2cab84b14090dd.md) | 66 | `result-track:3782e08c7d2cab84b14090dd8bb9890949439db9711022b12d2fd7d2d7605a13` |
| 4 | `lemma` | [schwarz_applied](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/declarations/schwarz-applied--bd90c8dea4ef23d52e7a60ed.md) | 74 | `result-track:bd90c8dea4ef23d52e7a60ed089ba5f905a8441f199cdab18ed31177f2bed671` |
| 5 | `theorem` | [borelCaratheodory_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/declarations/borelcaratheodory-zero--6006fcd7de24b8df59bf2e01.md) | 94 | `result-track:6006fcd7de24b8df59bf2e019663d4e43ac4fc6d5ebd29341e0395ba7de279c8` |
| 6 | `theorem` | [borelCaratheodory](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/declarations/borelcaratheodory--9e5c5109489880aa04f14faf.md) | 117 | `result-track:9e5c5109489880aa04f14faf344b0e56d021fdae86f57776e3698d951b0d964d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

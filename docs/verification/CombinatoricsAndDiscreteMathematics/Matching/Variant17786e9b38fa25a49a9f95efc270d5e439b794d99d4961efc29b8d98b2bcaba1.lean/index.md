# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Matching.Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c834ffa0cc7d46acc1cc39090009f4c06a29661",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c834ffa0cc7d46acc1cc39090009f4c06a29661`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Correspondence` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteSpectralMatchingCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/declarations/finitespectralmatchingcertificate--6b2b60906726a217f4026ad9.md) | 16 | `declaration-track:6b2b60906726a217f4026ad919bc74907c65955061045eb3f58da6564d4b8854` |
| 2 | `theorem` | [perfectCertifiedMatching_noMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/declarations/perfectcertifiedmatching-nomissing--ed156dfc7dc85e7454733022.md) | 56 | `result-track:ed156dfc7dc85e745473302207668cf378a66f6c052ae33f50ad30205298a0d6` |
| 3 | `theorem` | [perfectCertifiedMatching_noSpurious](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/declarations/perfectcertifiedmatching-nospurious--f3254aac92661f45acb919e0.md) | 70 | `result-track:f3254aac92661f45acb919e08e1441f3289e4ef028081a0a43bfbe3e15eb33ce` |
| 4 | `theorem` | [perfectCertifiedMatching_preservesMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/declarations/perfectcertifiedmatching-preservesmultiplicity--ce1e88a019907a80da1eacc3.md) | 84 | `result-track:ce1e88a019907a80da1eacc3966e34d803d2e7ef6f5b6a02f17a42a1de79a559` |
| 5 | `theorem` | [perfectCertifiedMatching_noMissing_noSpurious](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/declarations/perfectcertifiedmatching-nomissing-nospurious--6a83c6a40231b3c8398083ca.md) | 97 | `result-track:6a83c6a40231b3c8398083ca6d98343fcb481dc08cf002715319992f2ff3ec1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeComposite.Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e16be012e864571a0ee6a605ac88f34510112919",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e16be012e864571a0ee6a605ac88f34510112919`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.NumberSystems` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeEvidence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/declarations/primeevidence--bb0bd6d1208f8bb080449b5d.md) | 5 | `declaration-track:bb0bd6d1208f8bb080449b5d073385606ddbc000694eeb02258283fe3eb7cdb0` |
| 2 | `structure` | [CompositeEvidence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/declarations/compositeevidence--4d776c3a81ab19a7c80525b6.md) | 9 | `declaration-track:4d776c3a81ab19a7c80525b620442efe9ed4e8a86155995e9bb7655d412c35fe` |
| 3 | `structure` | [FactorizationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/declarations/factorizationcertificate--c8caca20a26c57b5e70e1a82.md) | 14 | `declaration-track:c8caca20a26c57b5e70e1a82c75fb9af145e11f3e19d2fef19704cb5c8f29586` |
| 4 | `theorem` | [factorization_certificate_has_value](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/declarations/factorization-certificate-has-value--e3650d8522e7df723ab24c44.md) | 21 | `result-track:e3650d8522e7df723ab24c44a6a5883dd6ba52bcb44842b2b8a005ca942a0530` |
| 5 | `theorem` | [factorization_certificate_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/declarations/factorization-certificate-product--d9ff98e7367ac4b061749497.md) | 25 | `result-track:d9ff98e7367ac4b061749497758dd528fa4d9b2287ab76d01502b9011d6c842c` |
| 6 | `theorem` | [factorization_uniqueness_requires_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8.lean/declarations/factorization-uniqueness-requires-boundary--da1bf1b6c9cbc85b2ee56eaf.md) | 31 | `result-track:da1bf1b6c9cbc85b2ee56eafa23097c75767f328fbd07760605da2ffa6f20e90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConceptRecord.Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a84d065a6f6cb067ee5c1a68365800c24eeadb0a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a84d065a6f6cb067ee5c1a68365800c24eeadb0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.Relation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.AuthorityElements.AuthorityProfile` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.Boundary` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.KindElements.ConceptKind` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.KindElements.Lifecycle` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Record](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/declarations/record--67dd89c2729b454af04cc4f1.md) | 21 | `declaration-track:67dd89c2729b454af04cc4f1f2dd9d2e8258fc8ed1a506a5b1212c66268edb81` |
| 2 | `def` | [SameIdentity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/declarations/sameidentity--210acbfabd87be54aba83c35.md) | 42 | `declaration-track:210acbfabd87be54aba83c358ff598bc7df4c315359f65dcb02ce59928c455ba` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/declarations/instance--d32f58dda8d39e9bcd222378.md) | 44 | `declaration-track:d32f58dda8d39e9bcd2223788c630507412152d87cb6965c4694ceac1bd42069` |
| 4 | `def` | [AcceptsEntity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/declarations/acceptsentity--a37d0c38562b300ace11e343.md) | 48 | `declaration-track:a37d0c38562b300ace11e3435957fd34130f9f6bbc393bef19c4cedea009faec` |
| 5 | `theorem` | [sameIdentity_of_id_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/declarations/sameidentity-of-id-eq--ff4158418b6ad20cfcd29368.md) | 52 | `result-track:ff4158418b6ad20cfcd2936843fc937251923cfd210fb1e3fe55421339c6b3db` |
| 6 | `def` | [SameName](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConceptRecord/Variantc3ecbcf84ef95032e4f9903f0176cf6cf5e68a69547c3c552ea990e6a004af4b.lean/declarations/samename--d7a1d5613db882f6f22acc89.md) | 57 | `declaration-track:d7a1d5613db882f6f22acc896e9c077eedd7368ee548366fc47634f8c83666b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

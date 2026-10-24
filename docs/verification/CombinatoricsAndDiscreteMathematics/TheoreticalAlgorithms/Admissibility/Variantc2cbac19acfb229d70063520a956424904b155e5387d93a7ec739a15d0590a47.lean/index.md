# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Admissibility.Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b1d3cc47279bf647f0cf35a60c5a4c44e02a69",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b1d3cc47279bf647f0cf35a60c5a4c44e02a69`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Color.Centroid` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Band](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/band--6c7f201b31a99fae3dd423e7.md) | 5 | `declaration-track:6c7f201b31a99fae3dd423e7120efa165934aae87262c4eae26ce4ed214cebb7` |
| 2 | `inductive` | [ColorAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/coloratom--a7c222b97eacaf753313b6aa.md) | 14 | `declaration-track:a7c222b97eacaf753313b6aad4953de8f1cea50f9d1a0795b8669ff12a8bbeed` |
| 3 | `structure` | [Admissibility](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/admissibility--c40c60d4436756b781beb50b.md) | 25 | `declaration-track:c40c60d4436756b781beb50be7a0a9d23119f40b02f453bb3aea4893535b28ac` |
| 4 | `def` | [acceptsOnly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/acceptsonly--0ff9d0db6d2166b608994eba.md) | 31 | `declaration-track:0ff9d0db6d2166b608994eba005fbb1e15d8ac3c4b083cc289ebe49a44baf80e` |
| 5 | `def` | [rejectsUnresolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/rejectsunresolved--4a0478a6a84aaacc16a8aa0e.md) | 34 | `declaration-track:4a0478a6a84aaacc16a8aa0e1cdd156f992a589cc341970f84e6cf469c6b6853` |
| 6 | `def` | [symmetricMixColorSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/symmetricmixcolorset--f78e31830098d9ade7c34d45.md) | 38 | `declaration-track:f78e31830098d9ade7c34d456e3db8166863a73d5c4eb5e90fbe5a7f406c03e7` |
| 7 | `theorem` | [symmetricMixColorSet_red_green](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/symmetricmixcolorset-red-green--4967ecc09aa69de321773dec.md) | 41 | `result-track:4967ecc09aa69de321773decbbd3de99b80ef1b1eb117777ae984dea15680a4f` |
| 8 | `theorem` | [symmetricMixColorSet_green_red](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47.lean/declarations/symmetricmixcolorset-green-red--ec51ccc382e7c01450084c65.md) | 44 | `result-track:ec51ccc382e7c01450084c650d66c91114033af25bc6fa049b61477c9267a060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

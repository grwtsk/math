# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.TotallyRealComplex.Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd0cfbd9b48d68174c7639cdf8599ac7ff85d825",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd0cfbd9b48d68174c7639cdf8599ac7ff85d825`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.InfinitePlace.Ramification` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsTotallyReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal--26e1ea81eb57531cbcee1434.md) | 51 | `declaration-track:26e1ea81eb57531cbcee14343d3fbfbf1c35a4e995ff85d15d7d752612710800` |
| 2 | `theorem` | [nrComplexPlaces_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/nrcomplexplaces-eq-zero-iff--76fa105a73537644e1a5859d.md) | 56 | `result-track:76fa105a73537644e1a5859d97c52290a71eb15e4c66de2780bf26af5863c13b` |
| 3 | `theorem` | [IsTotallyReal.ofRingEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-ofringequiv--248c80afc1e8181f987856b8.md) | 60 | `result-track:248c80afc1e8181f987856b80499a3add9d8b4ce9dd1ac7cc17f3b0e6521e67c` |
| 4 | `theorem` | [IsTotallyReal.of_algebra](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-of-algebra--90dd419886d6d425c2393426.md) | 64 | `result-track:90dd419886d6d425c2393426c24b21d5968cf86bb03bbf06c051dfe542de2dc2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/instance--2547aa1b013b583f98d4314c.md) | 69 | `declaration-track:2547aa1b013b583f98d4314c5b2f77e86b35b1728dc501fe9a531e3292346a44` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/instance--aa0897939f8df93251aa88fd.md) | 72 | `declaration-track:aa0897939f8df93251aa88fd8798b08d68477c47951b13436239711fc8b02dd7` |
| 7 | `theorem` | [IsTotallyReal.nrComplexPlaces_eq_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-nrcomplexplaces-eq-zero--e674ba797fb1e74f00989bad.md) | 78 | `result-track:e674ba797fb1e74f00989bad2584576e09cf38935d7fd871769701a6a12110e1` |
| 8 | `theorem` | [IsTotallyReal.finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-finrank--a1c816472cf46a88662b04ae.md) | 82 | `result-track:a1c816472cf46a88662b04aec04ed2b39bb7b8d43fd59e5b38dd734ca9eebfba` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/instance--216e9869228c9beb22984003.md) | 86 | `declaration-track:216e9869228c9beb22984003336daaf9fb902552b216a2f68790fd5e36594b80` |
| 10 | `def` | [maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/maximalrealsubfield--e7a4c4175df85a46dc45d660.md) | 100 | `declaration-track:e7a4c4175df85a46dc45d660c6f521dec6687eacbdb6cfacc953ef93da3d8627` |
| 11 | `instance` | [isTotallyReal_maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-maximalrealsubfield--f80979be4e5c79d43ff71f8a.md) | 109 | `declaration-track:f80979be4e5c79d43ff71f8a054801851c66f492ef42b564e60d201c5256f47b` |
| 12 | `theorem` | [IsTotallyReal.le_maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-le-maximalrealsubfield--a0b0cb80655d1f2e80623de3.md) | 119 | `result-track:a0b0cb80655d1f2e80623de35a4fb97ea2b18fc8a5748753c6436859d4f66178` |
| 13 | `theorem` | [isTotallyReal_iff_le_maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-iff-le-maximalrealsubfield--501c4291d01a4c58b227a778.md) | 126 | `result-track:501c4291d01a4c58b227a77828bdf0d3268d54be5077e919ded3d39518cf66a2` |
| 14 | `instance` | [isTotallyReal_sup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-sup--2069525c0a15e70f6c8b8a47.md) | 131 | `declaration-track:2069525c0a15e70f6c8b8a471006f79f7528194c7c62b12ffe323d53a518d78b` |
| 15 | `instance` | [isTotallyReal_iSup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallyreal-isup--b10ac62998a60d939593d5e1.md) | 135 | `declaration-track:b10ac62998a60d939593d5e1c257fd5a9bac03395eca1b7b44c7e99f145590a4` |
| 16 | `class` | [IsTotallyComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallycomplex--4fc2183de3159bb381098bbe.md) | 154 | `declaration-track:4fc2183de3159bb381098bbe89fbe326e57cdc574e14ebb5a0b4dcfeddc4a453` |
| 17 | `theorem` | [nrRealPlaces_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/nrrealplaces-eq-zero-iff--7361a5e23804bf0ddb3e52c4.md) | 159 | `result-track:7361a5e23804bf0ddb3e52c459206665ef68c10286ccde86c7b53ae0dc1de178` |
| 18 | `theorem` | [IsTotallyComplex.nrRealPlaces_eq_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallycomplex-nrrealplaces-eq-zero--4d76bd87d1146c6314ad85ac.md) | 166 | `result-track:4d76bd87d1146c6314ad85ac6f33884f98c96406d22f2db6b95918ace6717b3c` |
| 19 | `theorem` | [IsTotallyComplex.finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variantda2e41c95f443fe8b40eb1182cc33060dc1882244af46400a9044ac86ebfa1bc.lean/declarations/istotallycomplex-finrank--2646713ea3449df50e0ae254.md) | 170 | `result-track:2646713ea3449df50e0ae2540e537035852f3b68fe93c6fdec6931f8c814310a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

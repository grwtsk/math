# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mem.Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83625e201dc533aa00e4d7851f97a7c74ef37482",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83625e201dc533aa00e4d7851f97a7c74ef37482`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.BasicAux` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sizeOf_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/declarations/sizeof-lt-of-mem--4efdeebf14b3eb436209d4e7.md) | 22 | `result-track:4efdeebf14b3eb436209d4e7250bc12837dc84a9b1c4345c0ee0b5c4b08f3264` |
| 2 | `theorem` | [sizeOf_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/declarations/sizeof-get--7074a8bdfeaa5520e948cfd0.md) | 26 | `result-track:7074a8bdfeaa5520e948cfd06db077281da3e77bae4d613520897ca531030e5b` |
| 3 | `theorem` | [sizeOf_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/declarations/sizeof-getelem--3d077584fa7e532fa61befb7.md) | 30 | `result-track:3d077584fa7e532fa61befb791c8532d09b88d0ace0eab3d37060339d37ad332` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/declarations/macro--0b32fd2e24b9258ac32a9502.md) | 36 | `declaration-track:0b32fd2e24b9258ac32a9502e7b05355a7cf34ada149bf1c1066c93e5ae8ca15` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/declarations/macro-rules--e0a79e399ec1f9f5fff5bf52.md) | 45 | `declaration-track:e0a79e399ec1f9f5fff5bf52e5236eca088e2b142e25a9ee6149bf317346fe4c` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/declarations/macro--1d50386b154fbcc13d46ff23.md) | 51 | `declaration-track:1d50386b154fbcc13d46ff2358127f2997a06defcb3143744ddff86b8de5c3f1` |
| 7 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variantda82c7e79cd29aab9dfaddc64e942f6c13804fc50d186317796ea63e6a537836.lean/declarations/macro-rules--2e606b6a8a8133433beb54da.md) | 59 | `declaration-track:2e606b6a8a8133433beb54dab976095d17f26bab236ab458e12e802ae37f3d2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

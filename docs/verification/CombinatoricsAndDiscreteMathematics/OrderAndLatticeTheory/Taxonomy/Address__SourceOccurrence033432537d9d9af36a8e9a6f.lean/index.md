# Verification target: GRWTSK.Order.Taxonomy.Address

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4b72808aa028026237ee503edf94ae424f0be9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Order/Taxonomy/Address.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4b72808aa028026237ee503edf94ae424f0be9`.

Source path: `GRWTSK/Order/Taxonomy/Address.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Order/Taxonomy/Address.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Address](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/address--34e071387386c34c4815410e.md) | 22 | `declaration-track:34e071387386c34c4815410e8e4cf78aa4c3aed2d78dfc7f99fc4805a8b1a257` |
| 2 | `def` | [Prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefix--bfaa51acf163bc4ffd43e2e7.md) | 25 | `declaration-track:bfaa51acf163bc4ffd43e2e7ed9957dab139ea714b83f4b28b065899be4731fc` |
| 3 | `def` | [prefixDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefixdecidable--1babd46f002b46b966df2e6c.md) | 30 | `declaration-track:1babd46f002b46b966df2e6c9972865ec890be5a09eecc5c88a6c2fd2bacd363` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/instance--cb6934c5162024a07f5474f3.md) | 39 | `declaration-track:cb6934c5162024a07f5474f39b3ef7d996a77da05c6d05d3e7b81bc210eb4b86` |
| 5 | `theorem` | [prefix_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefix-nil--07440f1e00358e97e00f6fb4.md) | 41 | `result-track:07440f1e00358e97e00f6fb4bba7405a492a4f102e24b3608eb04857c331a759` |
| 6 | `theorem` | [prefix_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefix-refl--f5149b32dd441e71aed40eda.md) | 43 | `result-track:f5149b32dd441e71aed40eda916601e9207dd207acdaffc2d899f91d274ba16c` |
| 7 | `theorem` | [prefix_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefix-trans--ef1b7a31b4431ac1778f25b4.md) | 47 | `result-track:ef1b7a31b4431ac1778f25b4ca0053a0e982b7273ae76e3e22ab4ee5017a832f` |
| 8 | `theorem` | [prefix_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefix-antisymm--88b99ae80cb1fbe2484c7a0e.md) | 59 | `result-track:88b99ae80cb1fbe2484c7a0ed09e73cf30d58c878c11e15b4d082c2b27df202f` |
| 9 | `theorem` | [ancestors_comparable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/ancestors-comparable--ccc92d35638d7e066467f1d4.md) | 72 | `result-track:ccc92d35638d7e066467f1d4b02880b27084ec1a0b9223de721b6a2a382a7abb` |
| 10 | `def` | [commonPrefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/commonprefix--5e30fc2fa4af75d65603fa1c.md) | 91 | `declaration-track:5e30fc2fa4af75d65603fa1c856b33cce56d2876cb330908faba484b6f5d33ca` |
| 11 | `theorem` | [commonPrefix_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/commonprefix-left--fba2011affa7c489f055df19.md) | 97 | `result-track:fba2011affa7c489f055df19f228afec56b6c5b3a0b4141bbd2cc337e57b30e6` |
| 12 | `theorem` | [commonPrefix_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/commonprefix-right--d30501f957c1300de41691a0.md) | 108 | `result-track:d30501f957c1300de41691a058bb8f8f11dba26f10fa978da3321b26902158ea` |
| 13 | `theorem` | [commonPrefix_greatest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/commonprefix-greatest--07a578ebc2668e37ca0fbfe1.md) | 119 | `result-track:07a578ebc2668e37ca0fbfe1db55040c0d7fffe84b82aa2a2c3be65074e82d39` |
| 14 | `theorem` | [commonPrefix_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/commonprefix-self--95eda3bc0e96f4e618cbd2c3.md) | 134 | `result-track:95eda3bc0e96f4e618cbd2c3c98e9432a7d5d24de9b6cdfbbb4b412af031eff3` |
| 15 | `theorem` | [commonPrefix_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/commonprefix-comm--5fe8528b639cf3bd3fc45b6d.md) | 138 | `result-track:5fe8528b639cf3bd3fc45b6d02d3bea37c6a4636d38d0d0ea1a3ac5e3f94802f` |
| 16 | `def` | [prefixes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefixes--440d7fe981d184285bd40621.md) | 144 | `declaration-track:440d7fe981d184285bd4062149bb63c0fb77f5e35fb119a7e500f10b03644187` |
| 17 | `theorem` | [prefix_iff_mem_prefixes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/declarations/prefix-iff-mem-prefixes--f281ed6783de4050556fe31e.md) | 148 | `result-track:f281ed6783de4050556fe31e1494b620235c023d367c1178fb46949eea718b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

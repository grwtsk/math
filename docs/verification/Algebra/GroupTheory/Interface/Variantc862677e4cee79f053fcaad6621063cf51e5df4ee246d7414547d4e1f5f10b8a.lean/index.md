# Verification target: GRWTSK.Algebra.GroupTheory.Interface.Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7558f20879db4308a92a7ec636b765119b3d0959",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7558f20879db4308a92a7ec636b765119b3d0959`.

Source path: `GRWTSK/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Comparison.LogicalStatus` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Properties` — import line 3; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Datum](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/datum--3b4ad954576401973fa2ba09.md) | 33 | `declaration-track:3b4ad954576401973fa2ba098ce01d384383915c37f40adb982ae86cbe0877da` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/instance--75548e63b6a4c654fdb8b551.md) | 44 | `declaration-track:75548e63b6a4c654fdb8b55166bee4bc98555b4cefb9f2d635398010b06695d1` |
| 3 | `def` | [comparison](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/comparison--869fd46a864e1f5d6028393d.md) | 48 | `declaration-track:869fd46a864e1f5d6028393d37df29c604f278d7bccb4024c2f6b3b29b145547` |
| 4 | `theorem` | [comparison_apply](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/comparison-apply--8b2ef8d49bee4f9bb2683186.md) | 57 | `result-track:8b2ef8d49bee4f9bb268318655f4852560160a93cc79e6731f0477b2e6afab6d` |
| 5 | `def` | [IsomorphismClaim](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/isomorphismclaim--20a6d4289d6834b12281bac9.md) | 65 | `declaration-track:20a6d4289d6834b12281bac921929c7e0bfee521c64f3e07a6d78452725e6347` |
| 6 | `def` | [isomorphismClaim](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/isomorphismclaim--49f65548712be819c348199b.md) | 71 | `declaration-track:49f65548712be819c348199bb8bae8a5ddb55bd8f50109e49cb8aeb04293e2e6` |
| 7 | `def` | [certified](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/certified--cd1e40b70dc51f17630487e5.md) | 81 | `declaration-track:cd1e40b70dc51f17630487e599b333deac8be262d7671fdec88583addac21d9c` |
| 8 | `structure` | [FarrellJonesHypothesis](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/farrelljoneshypothesis--233ebda740ece0c4929b9a37.md) | 104 | `declaration-track:233ebda740ece0c4929b9a3730526ea210c1e475bc6214fc2fc6abd43317c1cb` |
| 9 | `theorem` | [bijective](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/bijective--4b1dc6ba7dffe87ab479fb6d.md) | 111 | `result-track:4b1dc6ba7dffe87ab479fb6d0822b6439fea0fade392c5efe6dfdd25de2918ca` |
| 10 | `theorem` | [certificate](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/certificate--41f729b199c1387df6258eb4.md) | 119 | `result-track:41f729b199c1387df6258eb486c7f1e0e348935ae82d9accc8255ecaa9ddef46` |
| 11 | `def` | [conditionalIsomorphismCertificate](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantc862677e4cee79f053fcaad6621063cf51e5df4ee246d7414547d4e1f5f10b8a.lean/declarations/conditionalisomorphismcertificate--6a98bf382305cff9ab695596.md) | 134 | `declaration-track:6a98bf382305cff9ab695596f2b988156994818b7b0c17eebbf93056369773db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

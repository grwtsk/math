# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Stabilization.Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fbdd430c78f3615df4ad0db288f3f5ef3a943a2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fbdd430c78f3615df4ad0db288f3f5ef3a943a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Percolation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalityCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/declarations/localitycertificate--152ba34c79f236b226f83a6c.md) | 23 | `declaration-track:152ba34c79f236b226f83a6cbf93922b49e4c55f2973caf44b5a56c6e28a505c` |
| 2 | `structure` | [PersistentTerminalProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/declarations/persistentterminalprofile--c08bfd6b65e5855608003a0a.md) | 35 | `declaration-track:c08bfd6b65e5855608003a0a886d955e01eb76ec31b077ee5bd7635aaf5d6f83` |
| 3 | `def` | [terminalStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/declarations/terminalstratum--4962cb730a4c1ec764506eaf.md) | 50 | `declaration-track:4962cb730a4c1ec764506eaf741ce60d43e5bf23e68f979fd793684cd99ebe64` |
| 4 | `theorem` | [mem_terminalStratum_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/declarations/mem-terminalstratum-iff--0138902e198911e5c7a180bb.md) | 58 | `result-track:0138902e198911e5c7a180bb1896cb0456df02ec1bfae9a731fb3e8a9b372fad` |
| 5 | `theorem` | [terminalStrata_partition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/declarations/terminalstrata-partition--c9c14e2f8e8cffbfa88dbad1.md) | 68 | `result-track:c9c14e2f8e8cffbfa88dbad17d8fe3999f99951174063672af509c622044d6af` |
| 6 | `theorem` | [active_support_nesting](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a.lean/declarations/active-support-nesting--9bba39385ed9322a10fe7c1d.md) | 79 | `result-track:9bba39385ed9322a10fe7c1d45b737285b47e10bb7bfec78e6559a6d5052c5bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

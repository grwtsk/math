# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Raw.Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7acbc2cad2f5e7eb6c879871058863606b49a559",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7acbc2cad2f5e7eb6c879871058863606b49a559`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Completion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Raw](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/raw--70b4b5451281c0dae7d7f595.md) | 35 | `declaration-track:70b4b5451281c0dae7d7f59592010574e051b456556b79349a6c2beec10f73d7` |
| 2 | `def` | [toFinsupp](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/tofinsupp--8727eb939fb522a498bd3991.md) | 42 | `declaration-track:8727eb939fb522a498bd3991befbfe0c4a243cf7d2961e98181a06c2d14b16ad` |
| 3 | `def` | [inner](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/inner--1daa12924758812ec08e08fa.md) | 46 | `declaration-track:1daa12924758812ec08e08fa4378cb67558740940c0594853fcfd38d1a179e27` |
| 4 | `def` | [core](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/core--fe37331db8f5604c5bdd68c1.md) | 52 | `declaration-track:fe37331db8f5604c5bdd68c12ebdc614fae22a58fd01d390098f09661f3ab533` |
| 5 | `def` | [seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/seminorm--00d78b78852950d30cd01b0f.md) | 77 | `declaration-track:00d78b78852950d30cd01b0f3545d11190abd7dd89267019b4d4272d44f88c72` |
| 6 | `theorem` | [conjugate_linear_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/conjugate-linear-left--98c82a51453703915c24f492.md) | 81 | `result-track:98c82a51453703915c24f4923d37fab8ca0e9070eeb2761b2306b7a2cfe20055` |
| 7 | `theorem` | [inner_conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/inner-conj-symm--2458959dad6a341faee14dc0.md) | 88 | `result-track:2458959dad6a341faee14dc0c1e834f737954d8c3d4a9118ec754e97fe619a3a` |
| 8 | `theorem` | [linear_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/linear-right--4129ff0d4909e78055019071.md) | 93 | `result-track:4129ff0d4909e78055019071c0186af001e7f60eb97ea5068c09fc7ea35d916d` |
| 9 | `theorem` | [add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/add-left--ccb3b32f79e884b530f79a33.md) | 101 | `result-track:ccb3b32f79e884b530f79a33398c3d7a0aa19d315e3488ca8a181847a3a36ab6` |
| 10 | `theorem` | [add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/add-right--9afde72dc6cafc57a415105d.md) | 107 | `result-track:9afde72dc6cafc57a415105d58be795b9cd39eb7c60ca0ad777e231cc2bbd7d2` |
| 11 | `theorem` | [inner_self_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/inner-self-nonneg--debf6815ba6c0aa54edd5fbf.md) | 114 | `result-track:debf6815ba6c0aa54edd5fbf7b9aa7a433f34844e42309346e4cf3b50a55b9ef` |
| 12 | `theorem` | [kernel_cauchy_schwarz](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/kernel-cauchy-schwarz--27511bcb3906eebe4874538a.md) | 119 | `result-track:27511bcb3906eebe4874538aaf5df55988a8308a4bbbd5c6d8d55045ccdc703b` |
| 13 | `def` | [basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/basisvector--e58b08e202a26a906185f7a3.md) | 131 | `declaration-track:e58b08e202a26a906185f7a3f20a006067f0d64d890a94fea93559fb1a0bda41` |
| 14 | `theorem` | [inner_basisVector_basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant310b87597b11983e4c847ac93824aac5a6c39ad920b04a9fbf22ed7b9ce8e6c1.lean/declarations/inner-basisvector-basisvector--d2d6e549abb72f02eada542d.md) | 135 | `result-track:d2d6e549abb72f02eada542d6d8334f5d4c0c5468628957f4e3336b7848899b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

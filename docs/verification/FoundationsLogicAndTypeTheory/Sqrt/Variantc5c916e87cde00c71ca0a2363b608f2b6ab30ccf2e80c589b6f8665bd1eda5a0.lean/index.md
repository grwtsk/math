# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eac07ca001826cb68a8c50aea420b74df5f5912",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eac07ca001826cb68a8c50aea420b74df5f5912`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Sqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean/declarations/sqrt--21c7de4dc6c44de44d96c721.md) | 34 | `declaration-track:21c7de4dc6c44de44d96c7218b855174d7b2ab0bd741c84405e3f21f40410ea2` |
| 2 | `theorem` | [sqrt_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean/declarations/sqrt-eq--6934079bc99791ab446c8b6a.md) | 37 | `result-track:6934079bc99791ab446c8b6aff491f184af8f3ecb9182ad4846cc62e8751bfdb` |
| 3 | `theorem` | [exists_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean/declarations/exists-mul-self--8010aa3c17750e4c7a8e0eb8.md) | 41 | `result-track:8010aa3c17750e4c7a8e0eb82f6ef4d0d6db8d7592f94115e463f0e7a133c175` |
| 4 | `theorem` | [sqrt_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0.lean/declarations/sqrt-nonneg--7065595caa1e6256957fb05a.md) | 45 | `result-track:7065595caa1e6256957fb05a3e9b9a1343b5ceb49e351880d6ebff8dd8719523` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

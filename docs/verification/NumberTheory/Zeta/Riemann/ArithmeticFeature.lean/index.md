# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticFeature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0917858f3552b84590bc6059cc811796d7fda495",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0917858f3552b84590bc6059cc811796d7fda495`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/arithmeticsource--7d7b5ff77660f63b1c1f08df.md) | 25 | `declaration-track:7d7b5ff77660f63b1c1f08dfe8ce0e75dd5a8f5bc33f97c434f2f8b7f423e025` |
| 2 | `structure` | [ArithmeticFeature](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/arithmeticfeature--d54d6b6468be5409eeed5b9c.md) | 37 | `declaration-track:d54d6b6468be5409eeed5b9ca8a7bf483ee43f0949d7bc6c2553263d5fa6372a` |
| 3 | `def` | [extract](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract--7c27b5e9d470eecfdbdef5d2.md) | 51 | `declaration-track:7c27b5e9d470eecfdbdef5d2ae24daa400a4535b0310d08e89a464ee31cf7c3d` |
| 4 | `theorem` | [extract_sourceId](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-sourceid--b4e91e32715e0a117baaccb9.md) | 62 | `result-track:b4e91e32715e0a117baaccb9aae2ba6df60e463925b25b9f5f82c91fbcfe5bed` |
| 5 | `theorem` | [extract_revision](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-revision--b3dfa09e1a36d16e72897684.md) | 66 | `result-track:b3dfa09e1a36d16e7289768460277f6be059e031f5bffe6a8a909b5cef912a99` |
| 6 | `theorem` | [extract_primePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-primepower--64092d05899488be0a3e22f6.md) | 70 | `result-track:64092d05899488be0a3e22f689d020897789a87354718bbaafc6571813bc82b6` |
| 7 | `theorem` | [extract_archimedean](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-archimedean--a642b7ed198804b24667eb16.md) | 74 | `result-track:a642b7ed198804b24667eb166d857d6f7765dd3919d85af0639f05329f0ff822` |
| 8 | `theorem` | [extract_pole](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-pole--fb4f2d4a980772d9e1342ace.md) | 78 | `result-track:fb4f2d4a980772d9e1342aceda5da6005dd6b16e53a7de9c30f02d4b948fcde4` |
| 9 | `theorem` | [extract_trivialZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-trivialzero--ee20c4942942fe0ed161ebd2.md) | 82 | `result-track:ee20c4942942fe0ed161ebd208a84078bd995abe4bc73327c8862124e8a7c5ef` |
| 10 | `theorem` | [extract_nontrivialZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-nontrivialzero--d46a8fda56e18c35bd0c8249.md) | 86 | `result-track:d46a8fda56e18c35bd0c8249bc8e0020fa23f3f93dc9e87b5c3898679ff436c4` |
| 11 | `theorem` | [extract_endpoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-endpoint--058dc9cb31d3f488247b6000.md) | 90 | `result-track:058dc9cb31d3f488247b6000a0c55c18ee9d30f274110c2edb1d13dd7683f877` |
| 12 | `theorem` | [extract_tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-tail--067c5a9ba17693928554c21b.md) | 94 | `result-track:067c5a9ba17693928554c21b502d1b35f97bab5f94ff0d8b9127ff396c5c62b2` |
| 13 | `def` | [SourceFaithful](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/sourcefaithful--dcb6b3df95241d22ffc1df9d.md) | 101 | `declaration-track:dcb6b3df95241d22ffc1df9dce75f30ec006adbd88574b5278ba1296f46cd658` |
| 14 | `theorem` | [extract_sourceFaithful](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/extract-sourcefaithful--81f474ad8cd9ef8ef0d47d3b.md) | 106 | `result-track:81f474ad8cd9ef8ef0d47d3b01c7dfdb9699dcc5633884d86e805541d4874170` |
| 15 | `structure` | [SourceFaithfulArithmeticMap](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/sourcefaithfularithmeticmap--7b7a89d54985ed13e790f80d.md) | 112 | `declaration-track:7b7a89d54985ed13e790f80df7df6024de721460f47a0be95bac3d421e77b051` |
| 16 | `def` | [ArithmeticSource.factorThrough](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/arithmeticsource-factorthrough--90c2e234117b6896fd5cfd96.md) | 123 | `declaration-track:90c2e234117b6896fd5cfd96ec78d32c27d7836e616c5307979ca0ea61d2b455` |
| 17 | `theorem` | [factorThrough_featureMap_eq_extract](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/factorthrough-featuremap-eq-extract--fffda4e4ea571eb9322f23e1.md) | 135 | `result-track:fffda4e4ea571eb9322f23e12495ddde1fe2ebadae343b9147bc5c4928427b93` |
| 18 | `theorem` | [factorThrough_map_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/declarations/factorthrough-map-eq--05d8b55a9c6e7ea7a5e78c43.md) | 141 | `result-track:05d8b55a9c6e7ea7a5e78c43bbaddbc60d4aefcb9ffb870ac72eb3a1d7753556` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

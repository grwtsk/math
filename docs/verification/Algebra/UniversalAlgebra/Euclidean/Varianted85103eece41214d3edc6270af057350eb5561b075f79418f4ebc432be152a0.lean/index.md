# Verification target: GRWTSK.Algebra.UniversalAlgebra.Euclidean.Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ddb07353fef8f69d4cc23cf1472db1eb3c45cf6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ddb07353fef8f69d4cc23cf1472db1eb3c45cf6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsEuclidean](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean/declarations/iseuclidean--efb177a1ce35915eea5b388a.md) | 36 | `declaration-track:efb177a1ce35915eea5b388ac086cfc41f62473df21085a997db7333e83d8f07` |
| 2 | `theorem` | [map_lt_map_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean/declarations/map-lt-map-iff--53275f88d538ba4003dd2b67.md) | 46 | `result-track:53275f88d538ba4003dd2b6700510614bf0895c6fe5bd974f8ca6947407ec695` |
| 3 | `theorem` | [sub_mod_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean/declarations/sub-mod-lt--192205ae2c33e936761ee33d.md) | 51 | `result-track:192205ae2c33e936761ee33d2f7faa2ab6230b73193bfb7bdf0b7585a2092e2a` |
| 4 | `theorem` | [abs_isEuclidean](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean/declarations/abs-iseuclidean--14f6b3db4fd67441ac4e258b.md) | 64 | `result-track:14f6b3db4fd67441ac4e258b1a0eae3017f1c47b90e82a0b5381d8bca283e166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

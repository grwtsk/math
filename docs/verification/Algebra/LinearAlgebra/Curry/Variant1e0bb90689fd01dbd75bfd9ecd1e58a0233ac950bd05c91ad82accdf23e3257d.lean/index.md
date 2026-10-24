# Verification target: GRWTSK.Algebra.LinearAlgebra.Curry.Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5074fccd45a79860952b5b6667b717155c2f0cf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5074fccd45a79860952b5b6667b717155c2f0cf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Alternating.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Curry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleft--4db41a10e4a13f4903373cb4.md) | 38 | `declaration-track:4db41a10e4a13f4903373cb401867492adb716dada131b398c33171a6ec82061` |
| 2 | `theorem` | [curryLeft_zero](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleft-zero--8393f6ed4f90953c561af267.md) | 50 | `result-track:8393f6ed4f90953c561af26785229e19e70319bbfdfe81d3c6163a8d54d3907b` |
| 3 | `theorem` | [curryLeft_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleft-add--9efee1a06cbfdf8810e715c8.md) | 54 | `result-track:9efee1a06cbfdf8810e715c8a8c3cef945a646cda7e205486598c30766d2d052` |
| 4 | `theorem` | [curryLeft_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleft-smul--94d53065a5d020483a979c65.md) | 59 | `result-track:94d53065a5d020483a979c6563828af0011d56d60a43a70c8561377a6c0374c7` |
| 5 | `def` | [curryLeftLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleftlinearmap--595616a59494cfc2bb980baa.md) | 66 | `declaration-track:595616a59494cfc2bb980baae5c1a2220e3e9d6eaaa54f392af00992ba45b633` |
| 6 | `theorem` | [curryLeft_same](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleft-same--8b206fea15c8b47e109d228e.md) | 74 | `result-track:8b206fea15c8b47e109d228e8c5e4bec1f262e1e839097dfcb83a0a2b2019b86` |
| 7 | `theorem` | [curryLeft_compAlternatingMap](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleft-compalternatingmap--40a9c5d1367139a0e05e15f2.md) | 79 | `result-track:40a9c5d1367139a0e05e15f2fe346c1c043699a5194509aee3160ddf2bcf7724` |
| 8 | `theorem` | [curryLeft_compLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant1e0bb90689fd01dbd75bfd9ecd1e58a0233ac950bd05c91ad82accdf23e3257d.lean/declarations/curryleft-complinearmap--1574cd2420ee63e3b823c196.md) | 85 | `result-track:1574cd2420ee63e3b823c1967905b2da63b4ae0d722af6fcc31e36b4cd1582b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

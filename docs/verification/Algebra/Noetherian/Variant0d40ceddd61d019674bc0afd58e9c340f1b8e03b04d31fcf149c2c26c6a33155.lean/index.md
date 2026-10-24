# Verification target: GRWTSK.Algebra.Noetherian.Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e4d6913c76ad93fea21f2326e573dc11d7041e8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean/index.md) · [Full source](../../../../mathematics/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e4d6913c76ad93fea21f2326e573dc11d7041e8`.

Source path: `GRWTSK/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Filtration` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsHausdorff.of_le_jacobson](../../../../mathematics/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean/declarations/ishausdorff-of-le-jacobson--f6d69a1dd9cf591b99ace31a.md) | 26 | `result-track:f6d69a1dd9cf591b99ace31a91dc014753bbd4cb67b389c749c3f9c421ad2515` |
| 2 | `theorem` | [IsHausdorff.of_isLocalRing](../../../../mathematics/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean/declarations/ishausdorff-of-islocalring--b55651bd60223fc93e0d11bb.md) | 29 | `result-track:b55651bd60223fc93e0d11bb758da2fab2fcc0f3da5e0b8df25c463bc4850abe` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean/declarations/instance--89b6e278b16dc3d1c36329e4.md) | 32 | `declaration-track:89b6e278b16dc3d1c36329e46545891f6efc652bd580032538eec097e58e85b8` |
| 4 | `theorem` | [IsHausdorff.of_noZeroSMulDivisors](../../../../mathematics/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean/declarations/ishausdorff-of-nozerosmuldivisors--6095e2596927b3a23b6863a4.md) | 35 | `result-track:6095e2596927b3a23b6863a462106011719ade3a4fd600d175c2987efca9a045` |
| 5 | `theorem` | [IsHausdorff.of_isDomain](../../../../mathematics/Algebra/Noetherian/Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155.lean/declarations/ishausdorff-of-isdomain--d79c718d3c1e6aa3cbca6fd9.md) | 38 | `result-track:d79c718d3c1e6aa3cbca6fd976711d23572b4ea2cab646429c7861f4eeeb3160` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

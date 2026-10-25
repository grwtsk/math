# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatFactorial.Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32ac6d2885355b91442b84ac00b97006246f685f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32ac6d2885355b91442b84ac00b97006246f685f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [asc_factorial_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/asc-factorial-aux--fe420f7038543f2c70991e46.md) | 22 | `result-track:fe420f7038543f2c70991e46f78df4a9dd69aa9afcb302c67908d22e24601f66` |
| 2 | `def` | [proveAscFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/proveascfactorial--d47809f9878c18d14e9d8d62.md) | 29 | `declaration-track:d47809f9878c18d14e9d8d62d92457b3ebea0d049ea972d5032ab446c9643e2d` |
| 3 | `lemma` | [isNat_factorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/isnat-factorial--4cb71717eb777922daf1df0c.md) | 56 | `result-track:4cb71717eb777922daf1df0c2ee9432bf025e8d49d1beab88fe725a3256484b6` |
| 4 | `def` | [evalNatFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/evalnatfactorial--7167470c4ff7ae1f1ac146d4.md) | 63 | `declaration-track:7167470c4ff7ae1f1ac146d49f0778f7b5125a474fdb63c9f366bd7720a1b3ca` |
| 5 | `lemma` | [isNat_ascFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/isnat-ascfactorial--ee6c7c1b836ba71d3323fae5.md) | 71 | `result-track:ee6c7c1b836ba71d3323fae557e805123a434909d9c372d342c81345a86d373f` |
| 6 | `def` | [evalNatAscFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/evalnatascfactorial--0db56ac376ad8ea3b4df75c7.md) | 78 | `declaration-track:0db56ac376ad8ea3b4df75c79b358279a8a80bc67dd3faba37d502d068f86954` |
| 7 | `lemma` | [isNat_descFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/isnat-descfactorial--97ca83f062ceefa213b929ab.md) | 87 | `result-track:97ca83f062ceefa213b929ab07feecab0874c822cd7aeaac6eac364d598a9592` |
| 8 | `lemma` | [isNat_descFactorial_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/isnat-descfactorial-zero--b1d659d0c2e537dd3b680be8.md) | 92 | `result-track:b1d659d0c2e537dd3b680be87c70ae2f139c3044df95a1f4a44b0b116bb811e1` |
| 9 | `def` | [evalNatDescFactorialNotZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/evalnatdescfactorialnotzero--cd4ff4a8da2e69ca9be931ae.md) | 97 | `declaration-track:cd4ff4a8da2e69ca9be931aea9ab1b79860fbd2ac8b81ce6cfd0edb766be3c51` |
| 10 | `def` | [evalNatDescFactorialZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/evalnatdescfactorialzero--702ab96f2af2a8bb98bd8e1a.md) | 106 | `declaration-track:702ab96f2af2a8bb98bd8e1a39b9d3fa779f9dd35a38e7cafe83975b67c3ddbd` |
| 11 | `def` | [evalNatDescFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/declarations/evalnatdescfactorial--22142229fd1868bcca06801d.md) | 114 | `declaration-track:22142229fd1868bcca06801d8cdc9988c5a62f4877d528eebe4b9137575b40b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatFib.Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa5ccc3da6844ba6ba0bfb4d82a681cecde65c8b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa5ccc3da6844ba6ba0bfb4d82a681cecde65c8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFibAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isfibaux--9e97574727bfa601fed0af43.md) | 29 | `declaration-track:9e97574727bfa601fed0af43ddb842aec65ab0bad94606ab238b9ae0ad2b9988` |
| 2 | `theorem` | [isFibAux_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isfibaux-zero--6c2d61fed7b191654d93efa4.md) | 32 | `result-track:6c2d61fed7b191654d93efa4445687d047f508b269966952dcc97de08cd6dbf3` |
| 3 | `theorem` | [isFibAux_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isfibaux-one--533ed7c66b7409f3fd3e675b.md) | 35 | `result-track:533ed7c66b7409f3fd3e675b587825edede5ddb69011e6b5befdaccaee5f2837` |
| 4 | `theorem` | [isFibAux_two_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isfibaux-two-mul--59d055e148633357c4fd36b6.md) | 38 | `result-track:59d055e148633357c4fd36b651986bfada42934d4f2ca6a4703011712f80174f` |
| 5 | `theorem` | [isFibAux_two_mul_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isfibaux-two-mul-add-one--8784eb72182f0051b79e7a4b.md) | 44 | `result-track:8784eb72182f0051b79e7a4ba2e7a0913305fb15993898540c550dd3a7b8bba8` |
| 6 | `def` | [proveNatFibAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/provenatfibaux--518030195fea9742f7e8e300.md) | 50 | `declaration-track:518030195fea9742f7e8e300dc2a44aecdb85906dcbf7932a66e0081634dbcb5` |
| 7 | `theorem` | [isFibAux_two_mul_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isfibaux-two-mul-done--99838621752452e8315e5e8a.md) | 78 | `result-track:99838621752452e8315e5e8a6257fc7a0a03cf96bb6ac311a2faa03934743e92` |
| 8 | `theorem` | [isFibAux_two_mul_add_one_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isfibaux-two-mul-add-one-done--935d7ff3ed1dbbe2877a46b2.md) | 82 | `result-track:935d7ff3ed1dbbe2877a46b26708232bdb1f8c9e4c97084ca08c732a05f43303` |
| 9 | `def` | [proveNatFib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/provenatfib--27ff78afc24068a532e30269.md) | 88 | `declaration-track:27ff78afc24068a532e302698d141402004eecc5f4ad7778fc1a568255e3b2e2` |
| 10 | `theorem` | [isNat_fib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/isnat-fib--6b56723279e04ce72f6eefaa.md) | 109 | `result-track:6b56723279e04ce72f6eefaa0327fc730067589c219ec01d85917ec970ff0ca6` |
| 11 | `def` | [evalNatFib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant3ab01547b81cb9d55caa43891445e3f2ad5326517c040c4bbcdbe72ac3c8b62f.lean/declarations/evalnatfib--fc3c17d040ecc22dabdf18fc.md) | 114 | `declaration-track:fc3c17d040ecc22dabdf18fcb49599596d2aeab20e5127eddae05102c4653077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

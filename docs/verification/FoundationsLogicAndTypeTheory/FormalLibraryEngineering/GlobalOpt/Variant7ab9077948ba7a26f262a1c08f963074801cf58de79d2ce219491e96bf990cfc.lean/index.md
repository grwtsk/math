# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalOpt.Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91a2bccc4f5f3f6207b81866c1b5fb8fce6c85f1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91a2bccc4f5f3f6207b81866c1b5fb8fce6c85f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Optimization.Global` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkGlobalLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/declarations/checkgloballowerbound--ef9cb0520c1624798c32c911.md) | 37 | `declaration-track:ef9cb0520c1624798c32c911d9dda0931da2ed6c92efe0a9d31baa757ca80481` |
| 2 | `def` | [checkGlobalUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/declarations/checkglobalupperbound--e592afe6dbbc80e7a7739721.md) | 47 | `declaration-track:e592afe6dbbc80e7a7739721e4f7f620c6ba4f1d2531deca7b76b4573d98c5cf` |
| 3 | `def` | [checkGlobalBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/declarations/checkglobalbounds--405cbe6fc0521882d16bfdfd.md) | 52 | `declaration-track:405cbe6fc0521882d16bfdfd9dd0daddc477d5a4fa5c168a9572d6c867b27a3b` |
| 4 | `theorem` | [verify_global_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/declarations/verify-global-lower-bound--817211e9fa5b5cd742a16d02.md) | 66 | `result-track:817211e9fa5b5cd742a16d0265c40028dc7bf309bf11833e2989017293dfd6cf` |
| 5 | `theorem` | [verify_global_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/declarations/verify-global-upper-bound--434619af773a05f4948796d9.md) | 89 | `result-track:434619af773a05f4948796d965048a63f69f0b8f43f9587a14cabc5af948e15b` |
| 6 | `theorem` | [verify_global_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant7ab9077948ba7a26f262a1c08f963074801cf58de79d2ce219491e96bf990cfc.lean/declarations/verify-global-bounds--4514a3db86f684f3b001a1e6.md) | 117 | `result-track:4514a3db86f684f3b001a1e6387b94fe71ab36797c2b97317a2f0a79cacd4530` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

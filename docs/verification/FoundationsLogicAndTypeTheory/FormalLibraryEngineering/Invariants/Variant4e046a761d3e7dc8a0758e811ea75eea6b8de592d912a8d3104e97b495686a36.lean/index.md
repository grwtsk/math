# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Invariants.Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88677754f3c81c1fb913f15d8ae055450d866249",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88677754f3c81c1fb913f15d8ae055450d866249`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.FdRep` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [average](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/average--45981c285e96e18516ea732e.md) | 46 | `declaration-track:45981c285e96e18516ea732e7b763f87ed6672052ccf895a101f1660d54c197e` |
| 2 | `theorem` | [mul_average_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/mul-average-left--2ec190a44f66f7772c0a846d.md) | 53 | `result-track:2ec190a44f66f7772c0a846d997dd27cd2fd49b7490e1a5c936065206bf8c23f` |
| 3 | `theorem` | [mul_average_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/mul-average-right--f4bb0ab0e3585cdf23f68482.md) | 64 | `result-track:f4bb0ab0e3585cdf23f68482fb8cac9acf22fd7a0a4f856d6dddd9d4b004ed20` |
| 4 | `def` | [invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/invariants--91e6aef23f00aaa0b9a0832d.md) | 86 | `declaration-track:91e6aef23f00aaa0b9a0832dea5c8723cb2bcdf9b69b5c5e7b9bd7c5bf593984` |
| 5 | `theorem` | [mem_invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/mem-invariants--e3acf703ebd2f499ec01599e.md) | 94 | `result-track:e3acf703ebd2f499ec01599e44c26668f48bcb22c7b26cfadc827347d6b396ed` |
| 6 | `theorem` | [invariants_eq_inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/invariants-eq-inter--e09792aa56236694e6b38480.md) | 97 | `result-track:e09792aa56236694e6b38480bcd201fa302f7fdf6d4153b70a4f1c6c3efea365` |
| 7 | `def` | [averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/averagemap--9e6832817b5e76ad7d80da83.md) | 106 | `declaration-track:9e6832817b5e76ad7d80da83fab90f21c74ea78f282eba24ec0e2537b8c51d0a` |
| 8 | `theorem` | [averageMap_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/averagemap-invariant--bd8cfb2c1d8af93ac392658b.md) | 112 | `result-track:bd8cfb2c1d8af93ac392658b17cb37feaf195af9b9020beb0cdf0d41c406d457` |
| 9 | `theorem` | [averageMap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/averagemap-id--a39022b78d8d625caafda1ea.md) | 119 | `result-track:a39022b78d8d625caafda1ea601f91f5420f47810b0cd1f77083bb7d5e974d17` |
| 10 | `theorem` | [isProj_averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/isproj-averagemap--6ed21a54aff2144864e1e40f.md) | 124 | `result-track:6ed21a54aff2144864e1e40f1bc1f3b52718150722d941c209af4cf91a743bb3` |
| 11 | `theorem` | [mem_invariants_iff_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/mem-invariants-iff-comm--2cfce6d429a3e6e1903cb2ea.md) | 140 | `result-track:2cfce6d429a3e6e1903cb2ea20e69b9d72046d6fd576ad73f48519f0abe70562` |
| 12 | `def` | [invariantsEquivRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/invariantsequivrephom--832e66fe048d3a92bdade528.md) | 152 | `declaration-track:832e66fe048d3a92bdade52855898a7b30c559534fdc747a5a85a010330843a4` |
| 13 | `def` | [invariantsEquivFdRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4e046a761d3e7dc8a0758e811ea75eea6b8de592d912a8d3104e97b495686a36.lean/declarations/invariantsequivfdrephom--2f62e7b110c2cf762ed2c579.md) | 170 | `declaration-track:2f62e7b110c2cf762ed2c57911179d7569287869902900660f1faa30c46ea8e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

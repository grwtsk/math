# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prime.Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "907841c64782a7b51745206599192a6237994ea0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `907841c64782a7b51745206599192a6237994ea0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_prime_mul_of_ble](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/not-prime-mul-of-ble--0d7b74e8594f06db16111cdb.md) | 42 | `result-track:0d7b74e8594f06db16111cdb2ff9e691b3304d88a02485bd7f4646f85a712128` |
| 2 | `def` | [deriveNotPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/derivenotprime--f6b409f9a6e24fa7474a6de7.md) | 48 | `declaration-track:f6b409f9a6e24fa7474a6de734a2cef851e22e374afbc148b16a8f153974fc20` |
| 3 | `def` | [MinFacHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/minfachelper--c34579d5d33d96ad27ee9e31.md) | 56 | `declaration-track:c34579d5d33d96ad27ee9e319596ccd55eea10de20b203916a55fb3f1a41535d` |
| 4 | `theorem` | [MinFacHelper.one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/minfachelper-one-lt--d8f15f36d39639a9bd7c4a82.md) | 59 | `result-track:d8f15f36d39639a9bd7c4a826e13fe2ae23093bdda44314334f2d048e879f492` |
| 5 | `theorem` | [minFacHelper_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/minfachelper-0--1198df262d212eb18871f5f0.md) | 67 | `result-track:1198df262d212eb18871f5f0e8be50a14bdb4fe4fccd340263d798da9bb96e0d` |
| 6 | `theorem` | [minFacHelper_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/minfachelper-1--7fff146c8bf257ab76a26dd5.md) | 76 | `result-track:7fff146c8bf257ab76a26dd5391467b7a63ef160ca49911128f74c5319341c05` |
| 7 | `theorem` | [minFacHelper_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/minfachelper-2--ca17de8964a71a92c17237e0.md) | 94 | `result-track:ca17de8964a71a92c17237e00126415d4db7c903d0eb8d9d10e6d27da98a108a` |
| 8 | `theorem` | [minFacHelper_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/minfachelper-3--bb0328ca6bb7b55c6678ffe6.md) | 100 | `result-track:bb0328ca6bb7b55c6678ffe65a968e5c632959223ae5a4c056df5735b040c834` |
| 9 | `theorem` | [isNat_minFac_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-minfac-1--a4687dfaeba6f6a37c113305.md) | 107 | `result-track:a4687dfaeba6f6a37c113305fd7893c6390a5d020be5b0ac2400a3955fe93060` |
| 10 | `theorem` | [isNat_minFac_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-minfac-2--959f76dd01c97aac64704683.md) | 110 | `result-track:959f76dd01c97aac647046834bcdee76fbd5c0ccd832583d2a7096f3b8d52a47` |
| 11 | `theorem` | [isNat_minFac_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-minfac-3--1d0f4d953faf9afb027ca101.md) | 113 | `result-track:1d0f4d953faf9afb027ca101b85c72057905f2846b1dd6f4515a245048d0be72` |
| 12 | `theorem` | [isNat_minFac_4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-minfac-4--1630fd44ac58136b4d784b10.md) | 119 | `result-track:1630fd44ac58136b4d784b105241ce6b34a2741a6eb0976c4bfb6e0194dbcfb5` |
| 13 | `def` | [evalMinFac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/evalminfac--66a9d6c2252c9baf7a81bbdd.md) | 132 | `declaration-track:66a9d6c2252c9baf7a81bbdd40637c2a3b5b041e5e4da8c20c6fd77729618426` |
| 14 | `theorem` | [isNat_prime_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-prime-0--db57f11dd7249a63ca3523c4.md) | 177 | `result-track:db57f11dd7249a63ca3523c45521f7e6164bbb7d186a149fe49e72e7c741c3d8` |
| 15 | `theorem` | [isNat_prime_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-prime-1--4d9c79ff61949ece119fd62b.md) | 180 | `result-track:4d9c79ff61949ece119fd62b5b2d6e62bdecd81aa0bf32158cf5542e6612a37c` |
| 16 | `theorem` | [isNat_prime_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-prime-2--1b0803aca62a4da9c9becf68.md) | 183 | `result-track:1b0803aca62a4da9c9becf68dfd3e4f71f7b7fb9712e61dd2b1dc365bcab1827` |
| 17 | `theorem` | [isNat_not_prime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/isnat-not-prime--fff7b1e46b3d4c390dd93f1e.md) | 187 | `result-track:fff7b1e46b3d4c390dd93f1e10e291a6f0df416b9820b588a3b46ac9890c884b` |
| 18 | `def` | [evalNatPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/declarations/evalnatprime--99c79b1c80fbfcae4bc889b2.md) | 190 | `declaration-track:99c79b1c80fbfcae4bc889b209ca6c5651c58e09676adbf78725e2b10bc768f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

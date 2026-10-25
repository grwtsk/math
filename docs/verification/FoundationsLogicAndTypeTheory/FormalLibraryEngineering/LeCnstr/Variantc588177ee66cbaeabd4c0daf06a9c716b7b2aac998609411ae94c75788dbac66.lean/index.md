# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeCnstr.Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a5accc7848eccf91fdde5bb792b38f049012fbb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a5accc7848eccf91fdde5bb792b38f049012fbb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Arith.Int` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Var` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Proof` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Norm` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.CommRing` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeCnstr.norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/lecnstr-norm--60112d7e42de18a0dab79d14.md) | 19 | `declaration-track:60112d7e42de18a0dab79d148a794adf5f1567e9e466d8d458110198d6d9c756` |
| 2 | `def` | [LeCnstr.applyEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/lecnstr-applyeq--ea0c7599f9cbc200aa9de013.md) | 34 | `declaration-track:ea0c7599f9cbc200aa9de013f4c349d0a8372a884a10ed17737aa4d4ea535284` |
| 3 | `def` | [LeCnstr.applySubsts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/lecnstr-applysubsts--b7d2fb60d5dc7c7f3aa6cbae.md) | 44 | `declaration-track:b7d2fb60d5dc7c7f3aa6cbae48a6c567e6905234a8b9d2460e0baf23f3dca418` |
| 4 | `def` | [_root_.Int.Internal.Linear.Poly.isNegEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/root-int-internal-linear-poly-isnegeq--12bfb7814c18b60b1a1e5424.md) | 50 | `declaration-track:12bfb7814c18b60b1a1e54243cc63de9bc55f2cda8d6aa1035f3200eca821767` |
| 5 | `def` | [LeCnstr.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/lecnstr-erase--ecd014d5bb77a23122127206.md) | 56 | `declaration-track:ecd014d5bb77a231221272066ba654a9aeec5f495b934ec0a32a07a4280642de` |
| 6 | `def` | [findEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/findeq--fe5335b6229172376402e3ff.md) | 68 | `declaration-track:fe5335b6229172376402e3ff2e60c17b54aac9db7dea5fd6e3eaf715a8323e52` |
| 7 | `def` | [refineWithDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/refinewithdiseq--0066a8096e90b632977fb30d.md) | 84 | `declaration-track:0066a8096e90b632977fb30db4b5af60c9d3ccfd597940dc2b61055d0e036957` |
| 8 | `def` | [LeCnstr.assertImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/lecnstr-assertimpl--2b997ae583298816b6b6b86b.md) | 104 | `declaration-track:2b997ae583298816b6b6b86bb107149959d276b39d5362303f012e4fec5ee77f` |
| 9 | `def` | [reportNonNormalized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/reportnonnormalized--6007c796e8d31ba98d0e72b4.md) | 128 | `declaration-track:6007c796e8d31ba98d0e72b4553a4ce39ad23d074ff0f69d9d35a9d3e3041613` |
| 10 | `def` | [toPolyLe?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/topolyle--892f57ac8f33bb2d12cc0c24.md) | 131 | `declaration-track:892f57ac8f33bb2d12cc0c241b06a5c21f33aa663052d4d4af6cf6cd3ee78b95` |
| 11 | `def` | [LeCnstr.assertCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/lecnstr-assertcore--ee1cf7190c195aaf5a684170.md) | 141 | `declaration-track:ee1cf7190c195aaf5a68417040065e69c33690edaccc5530fe8e6568d2adee73` |
| 12 | `def` | [propagateIntLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/propagateintle--6aea4a20dc89da4cf0149858.md) | 152 | `declaration-track:6aea4a20dc89da4cf0149858bd619b051e140f3e82fefcbe0c6326f6b0a90f2e` |
| 13 | `def` | [propagateNatLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/propagatenatle--155f5d7484028e7ff0e74900.md) | 160 | `declaration-track:155f5d7484028e7ff0e74900961f33c2b016d06d9a5150d22c8a63b79848ae94` |
| 14 | `def` | [propagateToIntLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/propagatetointle--f77cc32d78ac3d87ab6fced4.md) | 174 | `declaration-track:f77cc32d78ac3d87ab6fced47a17a3e5b06ac6752090e95a1e78496ccc895e94` |
| 15 | `def` | [propagateLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/propagatele--5480f3939c11e5c2f09cb32a.md) | 188 | `declaration-track:5480f3939c11e5c2f09cb32ab19b86f6483f9be9db773f56ea94d941ede22076` |
| 16 | `def` | [propagateLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/declarations/propagatelt--534ec84e26487693ba68ed44.md) | 198 | `declaration-track:534ec84e26487693ba68ed443b4f879faf3d1f08baae0833097f6d567a785aff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

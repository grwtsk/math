# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decidable.Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1aeb7f673fd609f27ff31648064243c8a9aec85",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1aeb7f673fd609f27ff31648064243c8a9aec85`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Bootstrap` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/forall-zero-iff--944a381f3278ad90977c39ce.md) | 32 | `result-track:944a381f3278ad90977c39ce24acb63203b12f4622ddfb877933b6fe1b96b0d1` |
| 2 | `theorem` | [forall_cons_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/forall-cons-iff--095058ed01f667eb0bf84ec2.md) | 41 | `result-track:095058ed01f667eb0bf84ec2ca84d0a811c31ba8d13067149973cd9167f89dc6` |
| 3 | `instance` | [instDecidableForallBitVecZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/instdecidableforallbitveczero--5196d34192ea28212680badb.md) | 51 | `declaration-track:5196d34192ea28212680badb92f2c4174318693dd33159c1893167b383be86ac` |
| 4 | `instance` | [instDecidableForallBitVecSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/instdecidableforallbitvecsucc--8b85ad3fc277fefd5c5d2d48.md) | 58 | `declaration-track:8b85ad3fc277fefd5c5d2d48fd7d06ad050e3bcf8f1fb6b945d283be11875927` |
| 5 | `instance` | [instDecidableExistsBitVecZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/instdecidableexistsbitveczero--9ce5fb1863b211f078169fec.md) | 62 | `declaration-track:9ce5fb1863b211f078169fecec6919350dfdf03a7d7bbe1006f58a52bb6c6cf0` |
| 6 | `instance` | [instDecidableExistsBitVecSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/instdecidableexistsbitvecsucc--0d62841fdc813afdb08e4e7d.md) | 66 | `declaration-track:0d62841fdc813afdb08e4e7dd7556e592af980e333815186e2c7e538568738c1` |
| 7 | `instance` | [instDecidableForallBitVec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/instdecidableforallbitvec--bbdb3c054df6778f5a374667.md) | 76 | `declaration-track:bbdb3c054df6778f5a374667a6eb36605307b8dc93a56aeb79a222126b8aca62` |
| 8 | `instance` | [instDecidableExistsBitVec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant4f8def6b1233c7b8782bef6d99938e2d11041621f40b2f313085d6034d28528b.lean/declarations/instdecidableexistsbitvec--9055bad09d61b9d55701abf4.md) | 88 | `declaration-track:9055bad09d61b9d55701abf406aeeb0194cc6346dcdf319adf7908c0460c9fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

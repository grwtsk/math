# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e264276fb6d5c662c4a90ba5c1db6a11f8a1a74a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e264276fb6d5c662c4a90ba5c1db6a11f8a1a74a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.TacticsExtra` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Mod` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AM_GM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/declarations/am-gm--5a0affca0d7d6418bc8edb41.md) | 35 | `result-track:5a0affca0d7d6418bc8edb410cc3ecc82e45810c733b9b4f67713eecf504d4b9` |
| 2 | `theorem` | [sqrt.iter_sq_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/declarations/sqrt-iter-sq-le--5fdffe08c554c9359bf75e73.md) | 43 | `result-track:5fdffe08c554c9359bf75e730d42a5d2b7988f5fb389562db7e7ab5401b3db7b` |
| 3 | `theorem` | [sqrt.lt_iter_succ_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/declarations/sqrt-lt-iter-succ-sq--fc3f97c63611582d70913e16.md) | 53 | `result-track:fc3f97c63611582d70913e168cb1741409db78b7e5cb38def8a9efe08c42d92a` |
| 4 | `def` | [IsSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/declarations/issqrt--9977ab4452b8b8f1235c6000.md) | 75 | `declaration-track:9977ab4452b8b8f1235c60007dac3fd911af131795831265369ab449a483c402` |
| 5 | `theorem` | [sqrt_isSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/declarations/sqrt-issqrt--3ef56fb08d1ba976f987abf0.md) | 87 | `result-track:3ef56fb08d1ba976f987abf0f11e893c99567ccd45e8dbb800b383b8a45ba416` |
| 6 | `theorem` | [sqrt_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/declarations/sqrt-le--33dffa63240ec6dd2162d492.md) | 105 | `result-track:33dffa63240ec6dd2162d492774cc4452bbd9329d5ec7d6fa19e68b44dfff71e` |
| 7 | `theorem` | [lt_succ_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant0641bff918b97b92d55a9b7d13b81b17379cb8eddbbbf5c2809fee4d128f6e3c.lean/declarations/lt-succ-sqrt--51d9b925097e12cb7a36376b.md) | 107 | `result-track:51d9b925097e12cb7a36376b36566457ba49f4c2c7940561cbb0074a00291b3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

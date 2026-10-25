# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decidable.Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc5a1f516ad16df507260b4785558d3c0b916f77",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc5a1f516ad16df507260b4785558d3c0b916f77`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Bootstrap` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/forall-zero-iff--0187aee0919d5908f8869dd6.md) | 24 | `result-track:0187aee0919d5908f8869dd6a22992f39c013440fc180516f52cfcb3d0ea5cc8` |
| 2 | `theorem` | [forall_cons_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/forall-cons-iff--7bac82f4175556a5db30b9a4.md) | 33 | `result-track:7bac82f4175556a5db30b9a45aa6885012169216c1777e5c05fe8e63fcedddbf` |
| 3 | `instance` | [instDecidableForallBitVecZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/instdecidableforallbitveczero--37a3783ce3986dba1a5d7bc1.md) | 43 | `declaration-track:37a3783ce3986dba1a5d7bc1e6441fc613330ae1cbca45158f4a31e2a09f7e52` |
| 4 | `instance` | [instDecidableForallBitVecSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/instdecidableforallbitvecsucc--000bcc934fe3314025b94b0c.md) | 50 | `declaration-track:000bcc934fe3314025b94b0c7fce88b0f424fc14719e70926b810acb71c28fed` |
| 5 | `instance` | [instDecidableExistsBitVecZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/instdecidableexistsbitveczero--28e9dfe77d9043bf1010be7f.md) | 54 | `declaration-track:28e9dfe77d9043bf1010be7f88915c2102d1dd8a47948028651f36943274240a` |
| 6 | `instance` | [instDecidableExistsBitVecSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/instdecidableexistsbitvecsucc--40ab52a396c4ba8d17214ca6.md) | 58 | `declaration-track:40ab52a396c4ba8d17214ca686e140c53bb43704b1e349e160e7cf2ef8ff10e2` |
| 7 | `instance` | [instDecidableForallBitVec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/instdecidableforallbitvec--b6d04255c32e82c0c32a2dad.md) | 68 | `declaration-track:b6d04255c32e82c0c32a2dadd9834aeb50013ee879fcc9dce122f995b9a34fbc` |
| 8 | `instance` | [instDecidableExistsBitVec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/declarations/instdecidableexistsbitvec--ee89a20e21c9a56b05cd72cd.md) | 80 | `declaration-track:ee89a20e21c9a56b05cd72cd80463a33111eed4c05b6b5cc7debb6b779829cf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

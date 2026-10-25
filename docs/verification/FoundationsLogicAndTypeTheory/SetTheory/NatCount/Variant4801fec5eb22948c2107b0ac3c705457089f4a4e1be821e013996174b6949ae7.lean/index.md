# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.NatCount.Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6291e34f8d22c612ac59b305f057520c991107b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6291e34f8d22c612ac59b305f057520c991107b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Count` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_le_cardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean/declarations/count-le-cardinal--38bb40166a06280236fc732c.md) | 22 | `result-track:38bb40166a06280236fc732cdc504af3f9b4443d0a83a1bfff1cdca1882c41a7` |
| 2 | `theorem` | [count_le_setENCard](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean/declarations/count-le-setencard--3471b4b4600407b84f7c24b4.md) | 26 | `result-track:3471b4b4600407b84f7c24b490de4e5862542d32fa28dda721311d08cbfeb6a5` |
| 3 | `theorem` | [count_le_setNCard](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean/declarations/count-le-setncard--15a29ce34c1f41b3e633b4d8.md) | 30 | `result-track:15a29ce34c1f41b3e633b4d8b8993f20beb2fe63c770fb8f4237a5b11d1d4853` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

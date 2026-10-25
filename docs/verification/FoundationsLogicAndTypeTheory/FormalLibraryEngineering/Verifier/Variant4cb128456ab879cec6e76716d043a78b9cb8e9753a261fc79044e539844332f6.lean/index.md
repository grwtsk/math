# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verifier.Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4339a9112c2072cf38a6a758fd56710b18ad48ff",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4339a9112c2072cf38a6a758fd56710b18ad48ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findDeclaredEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean/declarations/finddeclarededge--e6ae5d2e9716847d2b5575b5.md) | 32 | `declaration-track:e6ae5d2e9716847d2b5575b51095193c13527130b98d38950274b193b3ff4509` |
| 2 | `def` | [verifyProposal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean/declarations/verifyproposal--5171d495ff3289e26a327f4e.md) | 38 | `declaration-track:5171d495ff3289e26a327f4ef30c2dbf340c0b0af313e435ab8c17183ee38113` |
| 3 | `theorem` | [verifyProposal_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4cb128456ab879cec6e76716d043a78b9cb8e9753a261fc79044e539844332f6.lean/declarations/verifyproposal-sound--1045ecee38b65c8c72ae2b0d.md) | 197 | `result-track:1045ecee38b65c8c72ae2b0d705a8114bbd5a0885f865ee93b1f4890575bf747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoncommRing.Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbec3fba194bb1767d9cc0dd7f9c1067fbe8c002",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbec3fba194bb1767d9cc0dd7f9c1067fbe8c002`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nat_lit_mul_eq_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean/declarations/nat-lit-mul-eq-nsmul--48d210f0899a3295a123e777.md) | 34 | `result-track:48d210f0899a3295a123e777477ef7d92a19d4adeb6814c98e3d5f8f613cc9d6` |
| 2 | `lemma` | [mul_nat_lit_eq_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean/declarations/mul-nat-lit-eq-nsmul--8285f5e89a19014543c1e9af.md) | 36 | `result-track:8285f5e89a19014543c1e9af734a7c93b4b6e21707c24c541c6be6d11b6d3da7` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean/declarations/syntax--770c8faf9c62135347dc46c8.md) | 52 | `declaration-track:770c8faf9c62135347dc46c8a1f3c6ab95a85dc7581f52ad34f72700a2954507` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variantd55c79501cdec0df0b3d982b5a3c282c64baff20206234a2efcadc93706cda4d.lean/declarations/macro-rules--017db8b1833250d2b1b44503.md) | 55 | `declaration-track:017db8b1833250d2b1b4450334e70e2fe40d287c17bfecd9cc67bce20520fc2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95157d50a03db8dd5042f9414c48e530c55e7044",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95157d50a03db8dd5042f9414c48e530c55e7044`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.SimpTheorems` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Eqns` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addSymSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean/declarations/addsymsimptheorem--860f3ac03ff8af8e30a6beb2.md) | 17 | `declaration-track:860f3ac03ff8af8e30a6beb2bff00e34f453582b1607c47d2eafe4c1e06c6142` |
| 2 | `def` | [mkSymSimpAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean/declarations/mksymsimpattr--65cb647df2a936f132a8713b.md) | 26 | `declaration-track:65cb647df2a936f132a8713b6796174840b39e16e8d8cb3f655ffb2a9f71651e` |
| 3 | `def` | [registerSymSimpAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean/declarations/registersymsimpattr--02600d20a9806a4d46a323c5.md) | 62 | `declaration-track:02600d20a9806a4d46a323c51346ca3ce256f2f61d6fd7b2d49b6f75edaad545` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean/declarations/builtin-initialize--18b44caf8b14e5ab4712ae9a.md) | 69 | `declaration-track:18b44caf8b14e5ab4712ae9a477d137b383ae866d301e23e58606cf96ca18fab` |
| 5 | `def` | [getSymSimpTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0c2c7f39cb4d9c11aa3d7d6ed461e266dbd1377809543c94500d09c33a5b6b1e.lean/declarations/getsymsimptheorems--1698951f8d9d15257599d5f0.md) | 71 | `declaration-track:1698951f8d9d15257599d5f0d60b8111779a55c168eeaabbdd93d09166f4bce4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WLOG.Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "666c2edb08ae33df75654c191aa248f4d665dfca",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `666c2edb08ae33df75654c191aa248f4d665dfca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WLOGResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean/declarations/wlogresult--644ad3e6345e707a843a547c.md) | 34 | `declaration-track:644ad3e6345e707a843a547c884446ec255001c0467b6b03169b7683281e79d3` |
| 2 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WLOGResult.Variant80d170e7a750ab2a3c51e591f780b6f9cddcd9a6594ce2ab7f77832dbc150504.Lean.MVarId.wlog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-wlogr--a86a2fa64fa66b18d54be3d5.md) | 72 | `declaration-track:a86a2fa64fa66b18d54be3d564a3fde537ae076e9c13f531747bf3dd4ad48795` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean/declarations/syntax--1dbd1f83cbf29a1ca392ccb1.md) | 135 | `declaration-track:1dbd1f83cbf29a1ca392ccb15afcfda60c8c59a8a96cfc3c28f2c5acc2fce2db` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5fe869f87f6f93dbd9e127a263581933f4df5efbea315ebda42584acf2520c36.lean/declarations/elab-rules--dcc5f70e55c4783e225e076d.md) | 139 | `declaration-track:dcc5f70e55c4783e225e076d23b7dc0faa8fa44b0038409296868e8558083e3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2c212224966c3cf785ba8b13a6bdeb5af5e5e81",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2c212224966c3cf785ba8b13a6bdeb5af5e5e81`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssocListIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/declarations/assoclistiterator--f8ba57ed65279b051a8a3250.md) | 25 | `declaration-track:f8ba57ed65279b051a8a32500801276f1ee6a14a9792113e9577b287d389a01b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/declarations/instance--df2d7705535067d11ba2434d.md) | 28 | `declaration-track:df2d7705535067d11ba2434d2b2deff4137811cd7618168dd8ddc207d864e071` |
| 3 | `def` | [AssocListIterator.finitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/declarations/assoclistiterator-finitenessrelation--cdcc22c4e24cf1b70494b53f.md) | 37 | `declaration-track:cdcc22c4e24cf1b70494b53f018cf9a6cdabcc0fbdf0671c50b0fcd4fafc3b44` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/declarations/instance--bcd2fe1c5957abb14409c9f8.md) | 46 | `declaration-track:bcd2fe1c5957abb14409c9f8a406d2953057b136f493f85000cdcf2e8a191a0c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/declarations/instance--5ff8e7e6dc1be7e3b22dd4ec.md) | 49 | `declaration-track:5ff8e7e6dc1be7e3b22dd4ecad8223b4df22e7eccf476ed9fa19521084ccbd8c` |
| 6 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432.lean/declarations/iter--89cdadd45ef26cdb1f57b172.md) | 57 | `declaration-track:89cdadd45ef26cdb1f57b1725f189423b73acc95e0bfef1291f42b5ac8322185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

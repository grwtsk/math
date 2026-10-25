# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6e80fdc723b8f0fca0da93400b67a0cc69d0349",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6e80fdc723b8f0fca0da93400b67a0cc69d0349`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.CountableCover` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Cardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Perfect` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuum_le_cardinal_of_nontriviallyNormedField](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/declarations/continuum-le-cardinal-of-nontriviallynormedfield--46c445f8ebf368c7ac8f4736.md) | 28 | `result-track:46c445f8ebf368c7ac8f4736b5939fa5da234dc8004962807527caa88c69138d` |
| 2 | `theorem` | [continuum_le_cardinal_of_module](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/declarations/continuum-le-cardinal-of-module--6c869511e3b111a0da8eef9c.md) | 48 | `result-track:6c869511e3b111a0da8eef9cfab0305f37f8db02b3851abe0086196ec081c04a` |
| 3 | `lemma` | [cardinal_eq_of_mem_nhds_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/declarations/cardinal-eq-of-mem-nhds-zero--387981122e10378ff410943b.md) | 59 | `result-track:387981122e10378ff410943b52fd80b1633ed5152d2c04b2e98bca0e6a177e37` |
| 4 | `theorem` | [cardinal_eq_of_mem_nhds](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/declarations/cardinal-eq-of-mem-nhds--4f0cb9d178b7af8096b3adbf.md) | 96 | `result-track:4f0cb9d178b7af8096b3adbfd43115b3748298ac4613b22459cbac053370d2c7` |
| 5 | `theorem` | [cardinal_eq_of_is_open](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/declarations/cardinal-eq-of-is-open--a1481bd80f3403be5f326fe5.md) | 109 | `result-track:a1481bd80f3403be5f326fe55eed82011a09cc8004eb0ada6182913fa3da64ba` |
| 6 | `theorem` | [continuum_le_cardinal_of_is_open](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/declarations/continuum-le-cardinal-of-is-open--6bc3fb01ce3ab3a2102afeab.md) | 118 | `result-track:6bc3fb01ce3ab3a2102afeab0baeae811b648dedc7e4a1fe4df0c8d7280f3951` |
| 7 | `theorem` | [Set.Countable.dense_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/declarations/set-countable-dense-compl--0a6616174485839c4ecd206f.md) | 126 | `result-track:0a6616174485839c4ecd206fe9a8e9216a696daa7d83c59981c1523fcc954975` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

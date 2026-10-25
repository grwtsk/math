# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b618a05d0cce89464ef8694bf5c95464bb7614a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b618a05d0cce89464ef8694bf5c95464bb7614a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Perm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Option` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equiv.optionCongr_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/equiv-optioncongr-one--d2cb2bf811188c5fe893eafd.md) | 20 | `result-track:d2cb2bf811188c5fe893eafd934431a8bac3cad9b3627ad320f141505c3f46f6` |
| 2 | `theorem` | [Equiv.optionCongr_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/equiv-optioncongr-swap--7f504b6bb3259e887ff107b1.md) | 25 | `result-track:7f504b6bb3259e887ff107b15093fbbfa1559792ce4c13c6c56c1d05cc30cf3f` |
| 3 | `theorem` | [Equiv.optionCongr_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/equiv-optioncongr-sign--ca1c40551755c7a82cec8cce.md) | 35 | `result-track:ca1c40551755c7a82cec8cced0e53426a0863efa98c4dafaf39dc5a6a2cc5cef` |
| 4 | `theorem` | [map_equiv_removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/map-equiv-removenone--3047c075b99af2a5f799a883.md) | 44 | `result-track:3047c075b99af2a5f799a883946b19102dd64af047b56901a4ad0ad8da92e9e0` |
| 5 | `def` | [Equiv.Perm.decomposeOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/equiv-perm-decomposeoption--0142d790df9693a447585b69.md) | 62 | `declaration-track:0142d790df9693a447585b69335f32eaff7bad31a9634dd43ff709b5f44d529c` |
| 6 | `theorem` | [Equiv.Perm.decomposeOption_symm_of_none_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/equiv-perm-decomposeoption-symm-of-none-apply--71819affb8331b5a26cbe58a.md) | 73 | `result-track:71819affb8331b5a26cbe58a100deb94d64492c96e255b62916385c5f39a1b4c` |
| 7 | `theorem` | [Equiv.Perm.decomposeOption_symm_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/equiv-perm-decomposeoption-symm-sign--5c62a2763f26927cfa7846d6.md) | 77 | `result-track:5c62a2763f26927cfa7846d6d56b672409b5ede0e733a407bcd89ca4f0ecf539` |
| 8 | `theorem` | [Finset.univ_perm_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/declarations/finset-univ-perm-option--45a2819665af0bcee27653d6.md) | 83 | `result-track:45a2819665af0bcee27653d6670ced84f0c1b87254056745b196a56fb6a6ac80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

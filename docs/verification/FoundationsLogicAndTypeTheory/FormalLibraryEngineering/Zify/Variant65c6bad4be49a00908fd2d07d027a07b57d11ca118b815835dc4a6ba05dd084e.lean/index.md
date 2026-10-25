# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zify.Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "342383cdd8273d4de26881c30b16edcf92b59a16",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `342383cdd8273d4de26881c30b16edcf92b59a16`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/syntax--bfd486d09098b2d1e479980f.md) | 59 | `declaration-track:bfd486d09098b2d1e479980f0df3adec2840d605d166566fa3f55f6819defa95` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/macro-rules--fa9b34ee670c2abdcecf5ec7.md) | 61 | `declaration-track:fa9b34ee670c2abdcecf5ec78ecb3006be8fb86275016c94b31939368eefa03b` |
| 3 | `def` | [mkZifyContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/mkzifycontext--4e404a8e15eb6e7cf5ccbcea.md) | 68 | `declaration-track:4e404a8e15eb6e7cf5ccbcea54e19022d04a6ab7b6d6202a8a79b03a9ec3450f` |
| 4 | `def` | [applySimpResultToProp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/applysimpresulttoprop--a93a4fe0783361d0ee76df19.md) | 76 | `declaration-track:a93a4fe0783361d0ee76df19a5fa20cb8990bebcc3724aaaa94d6ab6b4de20ca` |
| 5 | `def` | [zifyProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/zifyproof--a8b69433ab0c6a9c9d7d2c7e.md) | 87 | `declaration-track:a8b69433ab0c6a9c9d7d2c7ef09db298e3da3027ecda3ee509fa9128ab93801b` |
| 6 | `lemma` | [nat_cast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/nat-cast-eq--600904e94609c6bd68588119.md) | 93 | `result-track:600904e94609c6bd685881194eb708fb7cb4f22ae5a6ed905ba0489efecfe3b1` |
| 7 | `lemma` | [nat_cast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/nat-cast-le--82cf1628b509d9aa1fac2930.md) | 94 | `result-track:82cf1628b509d9aa1fac293035b35be3418b4614f01c46a8ec8640bf11b826c9` |
| 8 | `lemma` | [nat_cast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/nat-cast-lt--9fb77b1e783187ee9668747f.md) | 95 | `result-track:9fb77b1e783187ee9668747f30be52a1fcf954a51bf912e9c8a01d0bdf4403e9` |
| 9 | `lemma` | [nat_cast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant65c6bad4be49a00908fd2d07d027a07b57d11ca118b815835dc4a6ba05dd084e.lean/declarations/nat-cast-ne--532ab99704016a6faf1ef4f3.md) | 96 | `result-track:532ab99704016a6faf1ef4f33e2a5ad22c896c1ed973405c2d8826ac640fac0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

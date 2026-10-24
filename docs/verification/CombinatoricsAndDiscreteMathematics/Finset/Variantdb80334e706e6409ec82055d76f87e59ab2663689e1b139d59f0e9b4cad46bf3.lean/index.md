# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ca931cba8e7cf528db8f9c7d951dcf5ec678152",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ca931cba8e7cf528db8f9c7d951dcf5ec678152`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Multiset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finset.encodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/finset-encodable--926097add508c6cf82ba5380.md) | 18 | `declaration-track:926097add508c6cf82ba5380d80740ec79332f2ffce5c419649a546cd081bc40` |
| 2 | `def` | [sortedUniv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/sorteduniv--573531efcbd8bdcf4e13cd3c.md) | 26 | `declaration-track:573531efcbd8bdcf4e13cd3cb772c9247d9c49de79caf5d73f9b38cff66684da` |
| 3 | `theorem` | [mem_sortedUniv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/mem-sorteduniv--8c611933bbed34b4d4ddbaeb.md) | 30 | `result-track:8c611933bbed34b4d4ddbaebd1c41816fca21c3eba0bc98846443b2b866901d5` |
| 4 | `theorem` | [length_sortedUniv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/length-sorteduniv--b90f03d29e72a10243ed3dca.md) | 34 | `result-track:b90f03d29e72a10243ed3dca66efad10928e3f615a11d44b8624424e49d0fab1` |
| 5 | `theorem` | [sortedUniv_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/sorteduniv-nodup--1f4d2e6feaf2200c822609c8.md) | 38 | `result-track:1f4d2e6feaf2200c822609c8512555f4a23dd944e7d4fdfeece15a30c0cda605` |
| 6 | `theorem` | [sortedUniv_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/sorteduniv-tofinset--df57a3d304fea01a2a9175c1.md) | 42 | `result-track:df57a3d304fea01a2a9175c119ab7e069fa82cb55abb8a54c7875b6d565cc5f9` |
| 7 | `def` | [fintypeEquivFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/fintypeequivfin--c730d867b6c1f85d422f2dee.md) | 47 | `declaration-track:c730d867b6c1f85d422f2deedbb233e6e18bed9e30b904793c9e5a1778f00185` |
| 8 | `def` | [lower'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/lower--ae360d046acfb5245fb62bda.md) | 60 | `declaration-track:ae360d046acfb5245fb62bda43891fb80e42792c1329874b3802795ab97e12ed` |
| 9 | `def` | [raise'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/raise--8e854f9284edc179c1c7ab28.md) | 67 | `declaration-track:8e854f9284edc179c1c7ab280ed3818222bdbd97085a27b237e9a08fc6bd9f00` |
| 10 | `theorem` | [lower_raise'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/lower-raise--f264e69ba42dd40e3fd086d3.md) | 71 | `result-track:f264e69ba42dd40e3fd086d395d0cb3a1aeca066e73439214f539b506cbc5c32` |
| 11 | `theorem` | [raise_lower'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/raise-lower--920be5baba30f2f8be308860.md) | 75 | `result-track:920be5baba30f2f8be30886089b47719f918b58c1063c1cbd9940f6321b53fca` |
| 12 | `theorem` | [raise'_chain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/raise-chain--422facf24dee98fa8d6c72ce.md) | 82 | `result-track:422facf24dee98fa8d6c72ce4d9aa5d9610c5fac5eaa822f45e13b2e62cd61b4` |
| 13 | `theorem` | [raise'_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/raise-sorted--e6be4ac262a42799ea795d19.md) | 88 | `result-track:e6be4ac262a42799ea795d19c2ab80d648294038f180313995266dee8f12a767` |
| 14 | `def` | [raise'Finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/raise-finset--c470030499311fef8ba6de34.md) | 93 | `declaration-track:c470030499311fef8ba6de34e6ddb5492e6509a81ecfacba512d139f93c2d037` |
| 15 | `instance` | [finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantdb80334e706e6409ec82055d76f87e59ab2663689e1b139d59f0e9b4cad46bf3.lean/declarations/finset--15d064570c8707349357876e.md) | 98 | `declaration-track:15d064570c8707349357876e0ae189210bc3d0feae912d621db31232d16993b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

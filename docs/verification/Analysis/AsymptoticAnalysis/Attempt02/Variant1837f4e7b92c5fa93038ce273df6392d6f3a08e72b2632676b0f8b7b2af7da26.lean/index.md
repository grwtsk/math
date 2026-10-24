# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt02.Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d56a4b88fbd630fc93073ef022ddfcaaf730e43",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d56a4b88fbd630fc93073ef022ddfcaaf730e43`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/outerweight--b38920ed030217f92a4e9eff.md) | 18 | `declaration-track:b38920ed030217f92a4e9eff09d507272bdfd9c005f24ecf3f782549b6126e9f` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/exponentweight--694c8c64b039d11cbe5b2640.md) | 20 | `declaration-track:694c8c64b039d11cbe5b2640ac78d2894b0cbcac148951fd84ef59fb18df9410` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/momentatom--78b103a19d08cbf967dee87d.md) | 22 | `declaration-track:78b103a19d08cbf967dee87def1e1354ee5b27d848b35639595b20286d8fcbef` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/primemomentatom--6ae6dbe1257b7ae201af70ad.md) | 25 | `declaration-track:6ae6dbe1257b7ae201af70ad772e6398bf8dd064c6ecac88f0f9c0f6e22ebf86` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/properpowermoment--829c521fff42d0578d62863c.md) | 27 | `declaration-track:829c521fff42d0578d62863c4f4e9586aacc9bfd146d24aad66640abde4f7d94` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/properpowerb1--77798dbc8389369a9a7b83fa.md) | 29 | `declaration-track:77798dbc8389369a9a7b83faeee41a6bf1d11fafc4cd2c0028448f3567722373` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/properpowerb2--ef55bc4382948bc15e77ca25.md) | 31 | `declaration-track:ef55bc4382948bc15e77ca25abecf8a660a53269e605c8369d53e7d1c3846ee1` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/outerweight-nonneg--6972d526605d9a1b49ec47e4.md) | 33 | `result-track:6972d526605d9a1b49ec47e43040ba1313673cb390c5cb10ba715b2564259d99` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/exponentweight-nonneg--7f140821600877731f20b270.md) | 41 | `result-track:7f140821600877731f20b2705e37c58b3a6b3ee962ba3378c22500220a3d569a` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/momentatom-nonneg--5cd3e190988b83938ae717ca.md) | 45 | `result-track:5cd3e190988b83938ae717cab08fe411c2f0ccd3a909759807d6acfc1da66b13` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/outerweight-summable--0279e30d821c5a25155c26af.md) | 53 | `result-track:0279e30d821c5a25155c26af0440964057d5e20ec478173af6f95266d4e4592d` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/exponentweight-summable--970c4bdf4313f89a35918464.md) | 80 | `result-track:970c4bdf4313f89a359184644b03097219ec421b93f8cc8148da3013d7f3bb7b` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/momentatom-le-product--d3169176ffd1510379000cbf.md) | 89 | `result-track:d3169176ffd1510379000cbf7715b5e8fe63b91c85b291be4f07c52ee780247d` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/prime-outerweight-summable--684267e6a3e7c6306b297c4d.md) | 108 | `result-track:684267e6a3e7c6306b297c4dd8c2a6793eec20453b6f764ac3a2e9400bec40ec` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/primemomentatom-summable--df18c91adbfaca487024c52a.md) | 112 | `result-track:df18c91adbfaca487024c52acad27a08af1eaec1409824b63766d348963725ee` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/primemomentatom-inner-summable--d10201829d92b1dad8addb13.md) | 119 | `result-track:d10201829d92b1dad8addb13d23a5576d7db63d3b3f332d23579581bd851300d` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/declarations/primemomentatom-outer-summable--f11717e6d310e3509167560a.md) | 124 | `result-track:f11717e6d310e3509167560ab1da6a2d53426832964c72680d73901c3a23280c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

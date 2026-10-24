# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.AbelLimit.Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7556abb9e2a6ab8875d8aeeca55fcdf8a1b817b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7556abb9e2a6ab8875d8aeeca55fcdf8a1b817b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/stolzset--a86656b6531844191830669c.md) | 48 | `declaration-track:a86656b6531844191830669c59ee624e464eb05cd754f0c914ce7c7b87c97957` |
| 2 | `def` | [stolzCone](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/stolzcone--6f452ad27e3786dd26a28de8.md) | 51 | `declaration-track:6f452ad27e3786dd26a28de8ff87202730a2047240fd072914ace58a2b81b0b2` |
| 3 | `theorem` | [stolzSet_empty](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/stolzset-empty--bf17bbbed16406318e17b6f5.md) | 53 | `result-track:bf17bbbed16406318e17b6f53861bac9a69f82339d5583ff85560af4f8a6ae99` |
| 4 | `theorem` | [nhdsWithin_lt_le_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/nhdswithin-lt-le-nhdswithin-stolzset--34b1b2d21dbdea11e3e7866b.md) | 62 | `result-track:34b1b2d21dbdea11e3e7866b805289dbf3724ade307197eba1391f7c0dd1d378` |
| 5 | `lemma` | [stolzCone_subset_stolzSet_aux'](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/stolzcone-subset-stolzset-aux--71fc8f0ed9be81ea91c8c7a6.md) | 75 | `result-track:71fc8f0ed9be81ea91c8c7a62b4cc0a29104bbeabf302acd96d17f5834596994` |
| 6 | `lemma` | [stolzCone_subset_stolzSet_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/stolzcone-subset-stolzset-aux--2a5e60b7011995e602edbbda.md) | 99 | `result-track:2a5e60b7011995e602edbbda4cde5eee748d51af9e127c2eac125966d259de02` |
| 7 | `lemma` | [nhdsWithin_stolzCone_le_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/nhdswithin-stolzcone-le-nhdswithin-stolzset--815c2ebfa6eeebf0de7f6b0f.md) | 113 | `result-track:815c2ebfa6eeebf0de7f6b0f8d2880b30b01f1f68f6e63edc65c864b22f220da` |
| 8 | `lemma` | [abel_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/abel-aux--75f509de4a52ea1d2ea4782b.md) | 128 | `result-track:75f509de4a52ea1d2ea4782bd450324a0e1b71c46303376598e5b934bb354901` |
| 9 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzset--eff58d8225413c5b5fcb908b.md) | 161 | `result-track:eff58d8225413c5b5fcb908bb58212613c42f8fdd96bbf2c03d5367b7f9277a1` |
| 10 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzCone](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzcone--8457ea8459b1e3a00bc8e07e.md) | 241 | `result-track:8457ea8459b1e3a00bc8e07e3be4f5b9d8bda008e0ca7a337b77fff0e9b3fb7f` |
| 11 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt--f902d7200ebd153642fac5da.md) | 247 | `result-track:f902d7200ebd153642fac5da3fdda46d1a92bf17fca00c8bc4b740d8a038366d` |
| 12 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt--052186832893359f968e313c.md) | 263 | `result-track:052186832893359f968e313ca5b87ba206b6e8becc600d236cb1c5c1dbdae833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

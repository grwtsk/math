# Verification target: GRWTSK.Analysis.MeasureTheory.SignedHahn.Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47790cb7466877473b9571c4bea29bf472d8d10b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47790cb7466877473b9571c4bea29bf472d8d10b`.

Source path: `GRWTSK/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.VectorMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/existsonedivlt--0ebf3ee65e4d2e7804e1465c.md) | 96 | `declaration-track:0ebf3ee65e4d2e7804e1465c3d0b9e5c35a06efae73f9090806a101a261ee215` |
| 2 | `theorem` | [existsNatOneDivLTMeasure_of_not_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/existsnatonedivltmeasure-of-not-negative--300c093bdc0c5e6efe7943a6.md) | 99 | `result-track:300c093bdc0c5e6efe7943a6f55100049aa48419d681fe48a34a72ccb9d83a96` |
| 3 | `def` | [findExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/findexistsonedivlt--bdd4029d05b4fa812ed79275.md) | 107 | `declaration-track:bdd4029d05b4fa812ed7927560c71a9ec1603585b6f533e99b1c5664081bacf0` |
| 4 | `theorem` | [findExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/findexistsonedivlt-spec--85b025058c2c488cd70a6f5c.md) | 110 | `result-track:85b025058c2c488cd70a6f5cb5e072086741295f46f2fd0c28970b109c08542a` |
| 5 | `theorem` | [findExistsOneDivLT_min](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/findexistsonedivlt-min--99cd921a0f5e55d4720da62d.md) | 115 | `result-track:99cd921a0f5e55d4720da62df6ab8e4c35b626ac54c9afa05eff6a5feac40a46` |
| 6 | `def` | [someExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/someexistsonedivlt--5ca766ef2323e7cde9f65840.md) | 123 | `declaration-track:5ca766ef2323e7cde9f6584003d36987b01fd42a83d5d64436024df0fe6650ac` |
| 7 | `theorem` | [someExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/someexistsonedivlt-spec--0af7e1e619403c8da3cdc860.md) | 126 | `result-track:0af7e1e619403c8da3cdc86068d3c376a5e291ffcfba04b29f2d1aaa452dec92` |
| 8 | `theorem` | [someExistsOneDivLT_subset](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/someexistsonedivlt-subset--a574b2f92f911ba6199cc975.md) | 133 | `result-track:a574b2f92f911ba6199cc9758f38c721d985b53a984a392f6072c1a1dd5b9214` |
| 9 | `theorem` | [someExistsOneDivLT_subset'](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/someexistsonedivlt-subset--5620a4e16216c8af27301d11.md) | 141 | `result-track:5620a4e16216c8af27301d11b5c26f0b9d94d2aa39747d523e85595004d4a028` |
| 10 | `theorem` | [someExistsOneDivLT_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/someexistsonedivlt-measurableset--c771c22788d604a0086f4675.md) | 144 | `result-track:c771c22788d604a0086f467534fb954328e5905d486c0efd10b1cb6d8e563f83` |
| 11 | `theorem` | [someExistsOneDivLT_lt](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/someexistsonedivlt-lt--abf7e137ab4066be19e33f0c.md) | 152 | `result-track:abf7e137ab4066be19e33f0c1255c02c147ef3939a6d81d56f3e115eafd75298` |
| 12 | `def` | [restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/restrictnonposseq--2b50924fb84739efa7de57d4.md) | 163 | `declaration-track:2b50924fb84739efa7de57d45750749fe6b053685c77461c667ece12e59840ba` |
| 13 | `theorem` | [restrictNonposSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/restrictnonposseq-succ--9354f5aa8260dc63863416f0.md) | 172 | `result-track:9354f5aa8260dc63863416f0780c0a2748fc2805905afcdc1cd82446d0eaaba3` |
| 14 | `theorem` | [restrictNonposSeq_subset](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/restrictnonposseq-subset--56d3ffe068b0bae39c28ef6d.md) | 176 | `result-track:56d3ffe068b0bae39c28ef6d237b2bea044b337d056e864b9978d89475c2cd60` |
| 15 | `theorem` | [restrictNonposSeq_lt](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/restrictnonposseq-lt--77f733d5bc0ce6ad375b8690.md) | 179 | `result-track:77f733d5bc0ce6ad375b86901e4b3b5e39903076a5cb04ecb7fccfdf0b1c5392` |
| 16 | `theorem` | [measure_of_restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/measure-of-restrictnonposseq--33c4df0f756cf12c8dd7cb60.md) | 185 | `result-track:33c4df0f756cf12c8dd7cb6092044b9436d3dcafab166521a30a856798c66b3e` |
| 17 | `theorem` | [restrictNonposSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/restrictnonposseq-measurableset--cdf5895b892efcf569bdd52b.md) | 201 | `result-track:cdf5895b892efcf569bdd52b8d69c38b651e8f54a359863dc985ea39f6cc7616` |
| 18 | `theorem` | [restrictNonposSeq_disjoint'](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/restrictnonposseq-disjoint--5c6bde793c0dbf621b53d928.md) | 207 | `result-track:5c6bde793c0dbf621b53d9286ee44feb66c7fc3afbf4391d6062a5b42afe7130` |
| 19 | `theorem` | [restrictNonposSeq_disjoint](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/restrictnonposseq-disjoint--7fbed5add62f636ee5737ccc.md) | 217 | `result-track:7fbed5add62f636ee5737ccc956ff5f3b315f06179bc7ecd09bb234b3f0c2f56` |
| 20 | `theorem` | [exists_subset_restrict_nonpos'](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/exists-subset-restrict-nonpos--4cbecf86a9c641087cfc8613.md) | 224 | `result-track:4cbecf86a9c641087cfc86138171a88716c7b6d0912abc8b4856b4d4ec6086d3` |
| 21 | `theorem` | [exists_subset_restrict_nonpos](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/exists-subset-restrict-nonpos--2170197924ba41d815e1e481.md) | 266 | `result-track:2170197924ba41d815e1e481499d2e5a21269fc11bd275301c1220510c5669fc` |
| 22 | `def` | [measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/measureofnegatives--c10bbc1c3b569c9cdb6ee996.md) | 335 | `declaration-track:c10bbc1c3b569c9cdb6ee996f90d6be1225682b87f40fc682454cdc923da9b95` |
| 23 | `theorem` | [zero_mem_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/zero-mem-measureofnegatives--7ee97e4bee7a8deeb6eb6827.md) | 339 | `result-track:7ee97e4bee7a8deeb6eb6827b2b4dfe092a0c1cc602d78beb606d5a071d6c04a` |
| 24 | `theorem` | [bddBelow_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/bddbelow-measureofnegatives--9a3dfee2173a2b25876a9e00.md) | 343 | `result-track:9a3dfee2173a2b25876a9e001f028653cd3b5779ee7a8a0e0ee8e64c1002069a` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/exists-compl-positive-negative--f2b65282ec92720b256cb118.md) | 370 | `result-track:f2b65282ec92720b256cb118328dda689c651927f384a2f0f4114655ad713c9c` |
| 26 | `theorem` | [exists_isCompl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/exists-iscompl-positive-negative--9cc2c693e221571611b3387b.md) | 413 | `result-track:9cc2c693e221571611b3387bced24e8034fc387ede5a6415d63aafee6c42edeb` |
| 27 | `theorem` | [of_symmDiff_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/declarations/of-symmdiff-compl-positive-negative--65b664856e83dc33f7701f9b.md) | 420 | `result-track:65b664856e83dc33f7701f9b4c4f3306b2959a02f2cb1f81b6e1d60d7b35ff26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

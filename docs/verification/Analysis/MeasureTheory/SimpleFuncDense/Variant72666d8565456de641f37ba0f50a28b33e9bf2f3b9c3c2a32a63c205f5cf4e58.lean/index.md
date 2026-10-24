# Verification target: GRWTSK.Analysis.MeasureTheory.SimpleFuncDense.Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e823c1faf09ab6d45d89ca24eb191729c0604f43",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e823c1faf09ab6d45d89ca24eb191729c0604f43`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFunc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metrizable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nearestPtInd](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/nearestptind--4867bec2566595d33ef7dde6.md) | 63 | `declaration-track:4867bec2566595d33ef7dde613a246589d02d5ca7e1f397aac7c25aafd8662a8` |
| 2 | `def` | [nearestPt](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/nearestpt--b372d01f9ef37380fd6ea41e.md) | 75 | `declaration-track:b372d01f9ef37380fd6ea41ed503625fd8bf88add0b4bb7df5f069623bb20761` |
| 3 | `theorem` | [nearestPtInd_zero](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/nearestptind-zero--8bc38867c1d9c7f8531cf2ef.md) | 79 | `result-track:8bc38867c1d9c7f8531cf2ef507f63791e82bfa05bdea355ec05b3cc61cf527d` |
| 4 | `theorem` | [nearestPt_zero](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/nearestpt-zero--9550109f49cd270955c094cc.md) | 83 | `result-track:9550109f49cd270955c094cc9b8f018be59c8bc54b37cc4264267b4d39ad1c95` |
| 5 | `theorem` | [nearestPtInd_succ](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/nearestptind-succ--f724e5a7175077881a76cd92.md) | 86 | `result-track:f724e5a7175077881a76cd926abadbdce9230739898981be1cb96c150e77e162` |
| 6 | `theorem` | [nearestPtInd_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/nearestptind-le--80323aa31a340b6b84201bc1.md) | 93 | `result-track:80323aa31a340b6b84201bc1d289a01f0f393a0f5dc86acfe1583640757ee1df` |
| 7 | `theorem` | [edist_nearestPt_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/edist-nearestpt-le--491cee3f1512030007c004fa.md) | 101 | `result-track:491cee3f1512030007c004fabef124ef59a2e71f563dd4128567256293d3d420` |
| 8 | `theorem` | [tendsto_nearestPt](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/tendsto-nearestpt--5bafd246e5aacc33c9636ba2.md) | 115 | `result-track:5bafd246e5aacc33c9636ba2ea17b83e4a19273fb9fba1621085be0cd9b40896` |
| 9 | `def` | [approxOn](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/approxon--a3bf6746e85285f220f901e4.md) | 126 | `declaration-track:a3bf6746e85285f220f901e447cfb4fb4c299acbcbc7facbd29c33efab7208ff` |
| 10 | `theorem` | [approxOn_zero](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/approxon-zero--e2ee03efe6e368907df9952f.md) | 132 | `result-track:e2ee03efe6e368907df9952fc259a651b60bc7c46ed44b24e2400741575b261f` |
| 11 | `theorem` | [approxOn_mem](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/approxon-mem--6e5f68544cdde99f631e5960.md) | 136 | `result-track:6e5f68544cdde99f631e59608da6abe4e2fc735b3b73384f0db3bb196fe39ee0` |
| 12 | `lemma` | [approxOn_range_nonneg](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/approxon-range-nonneg--736f0e24d21ec726ada911c3.md) | 143 | `result-track:736f0e24d21ec726ada911c3bae9c2f9b68ce3a867dcbdd229ba72a4406ba780` |
| 13 | `theorem` | [approxOn_comp](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/approxon-comp--0dc35f5c52a4b77dfa7339e2.md) | 154 | `result-track:0dc35f5c52a4b77dfa7339e232d56b4a90be45d92c43d9d3ce6878722e1e3412` |
| 14 | `theorem` | [tendsto_approxOn](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/tendsto-approxon--b5903167225475ec9be8f129.md) | 159 | `result-track:b5903167225475ec9be8f129cb86e6dc6963d6e6b3ae991c8e21205ebb54ff82` |
| 15 | `theorem` | [edist_approxOn_mono](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/edist-approxon-mono--4b46c6acf1926e2c7ad53de5.md) | 171 | `result-track:4b46c6acf1926e2c7ad53de5943f409b32934b9dbd3fd865289735bd35cf3905` |
| 16 | `theorem` | [edist_approxOn_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/edist-approxon-le--1336b15acf32a4502469d084.md) | 177 | `result-track:1336b15acf32a4502469d08411a93973717e7cf30942f2281707056d522b122e` |
| 17 | `theorem` | [edist_approxOn_y0_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/edist-approxon-y0-le--47151bf0fc24cc9933ecc1ad.md) | 181 | `result-track:47151bf0fc24cc9933ecc1ad546beeda6515b87c36b9566366129f7e5c4042b1` |
| 18 | `lemma` | [HasCompactSupport.exists_simpleFunc_approx_of_prod](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/hascompactsupport-exists-simplefunc-approx-of-prod--bbca568387240b8fcb014bb8.md) | 204 | `result-track:bbca568387240b8fcb014bb8fc24965526e0254602da278b2bcf8e57f2c2bf80` |
| 19 | `lemma` | [HasCompactSupport.measurable_of_prod](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant72666d8565456de641f37ba0f50a28b33e9bf2f3b9c3c2a32a63c205f5cf4e58.lean/declarations/hascompactsupport-measurable-of-prod--3d9703a752f420eef5a9cea8.md) | 248 | `result-track:3d9703a752f420eef5a9cea8be409b4a185c2fc393da2a9664d24a581a62bf18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

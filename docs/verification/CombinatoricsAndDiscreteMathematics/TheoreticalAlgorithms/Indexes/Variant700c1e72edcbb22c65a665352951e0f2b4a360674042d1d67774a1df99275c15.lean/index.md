# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Indexes.Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30ab423c91d13a58a49a9e77ee34044e5d84dd83",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30ab423c91d13a58a49a9e77ee34044e5d84dd83`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Induction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_reverse_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/list-reverse-induction--60c77e25cb9933c55deaf548.md) | 43 | `result-track:60c77e25cb9933c55deaf548cb54cd6ad8ac6183ee44c546a1bcc866f1c6eaa3` |
| 2 | `theorem` | [mapIdx_append_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidx-append-one--007f8b7a6df2a70fd6272781.md) | 47 | `result-track:007f8b7a6df2a70fd62727811798dfa6a4c5e54762b1e11f3b22e560fc3a64e0` |
| 3 | `theorem` | [map_enumFrom_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/map-enumfrom-eq-zipwith--c643cf3f879e2ac0522c0b6b.md) | 53 | `result-track:c643cf3f879e2ac0522c0b6bcc200f3f3936f6bc1dd35c243a6f4d6fbcaa2b51` |
| 4 | `theorem` | [get_mapIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/get-mapidx--4a01f807b3035f91d6efe9b0.md) | 78 | `result-track:4a01f807b3035f91d6efe9b0bfd3696b767b89d16a27d7f683dd8169e4736ca4` |
| 5 | `theorem` | [mapIdx_eq_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidx-eq-offn--9612130eda9f3a692f962239.md) | 83 | `result-track:9612130eda9f3a692f9622394cf19c89c776268d6c9286dacdb0c05ee8396b1c` |
| 6 | `def` | [foldrIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldridxspec--0783408d30a8edf901043369.md) | 97 | `declaration-track:0783408d30a8edf901043369806fee8288928495c15394a82aa38d0570985b21` |
| 7 | `theorem` | [foldrIdxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldridxspec-cons--87adfce49a0862beae36b0c1.md) | 102 | `result-track:87adfce49a0862beae36b0c119fcbb55c7b8ede2aef2154b4988ce6ecb808003` |
| 8 | `theorem` | [foldrIdx_eq_foldrIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldridx-eq-foldridxspec--4da6f802c10a4ba8aa0de1e5.md) | 108 | `result-track:4da6f802c10a4ba8aa0de1e5b60c77dacdebaa54830683469fac8e657e6e967f` |
| 9 | `theorem` | [foldrIdx_eq_foldr_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldridx-eq-foldr-enum--0d160eecee78fd232157a74f.md) | 116 | `result-track:0d160eecee78fd232157a74f092747119fceee188feac42a1dbaaafb5089a337` |
| 10 | `theorem` | [indexesValues_eq_filter_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/indexesvalues-eq-filter-enum--a7428a84857b2faf70326c7e.md) | 124 | `result-track:a7428a84857b2faf70326c7e22829632e6d2b451283830813419a7e66f8f055d` |
| 11 | `theorem` | [findIdxs_eq_map_indexesValues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/findidxs-eq-map-indexesvalues--218ad86c5c7e6d440815de7c.md) | 131 | `result-track:218ad86c5c7e6d440815de7c31cc06164dc25a97507a1410f6a5dd598672f105` |
| 12 | `def` | [foldlIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldlidxspec--f24952b8194d6c8c38122fae.md) | 143 | `declaration-track:f24952b8194d6c8c38122fae84b82ac1fd7761565780aa3fc3f2aaa14fa9c34c` |
| 13 | `theorem` | [foldlIdxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldlidxspec-cons--eb6847ba809e3d2e95f22968.md) | 148 | `result-track:eb6847ba809e3d2e95f229687f45fe445718a476828a65a6b934ef4a08c3a444` |
| 14 | `theorem` | [foldlIdx_eq_foldlIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldlidx-eq-foldlidxspec--44babc14b902763323d61dd9.md) | 154 | `result-track:44babc14b902763323d61dd9eb01a0ca659c8576613e3bd674bb2779d5f20838` |
| 15 | `theorem` | [foldlIdx_eq_foldl_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldlidx-eq-foldl-enum--90142ba2db680af448cd9f45.md) | 162 | `result-track:90142ba2db680af448cd9f45aafd7257da7ffdb5068eb53635cdf8892817a05b` |
| 16 | `theorem` | [foldrIdxM_eq_foldrM_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldridxm-eq-foldrm-enum--3017ff349730b71f8f599661.md) | 175 | `result-track:3017ff349730b71f8f599661450ece488b92aa009694440a610848e78542d4d7` |
| 17 | `theorem` | [foldlIdxM_eq_foldlM_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/foldlidxm-eq-foldlm-enum--0c4bb57e42deac25a3757e40.md) | 182 | `result-track:0c4bb57e42deac25a3757e4014b5d1a82ae58fd2b2a4ccf7d75a7c2c0b10e892` |
| 18 | `def` | [mapIdxMAuxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidxmauxspec--eba43e801dca36e72d95de41.md) | 196 | `declaration-track:eba43e801dca36e72d95de41de1eda9ab57882d57a37be54ac0af274d6d6bf98` |
| 19 | `theorem` | [mapIdxMAuxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidxmauxspec-cons--208287a99b53932591e708e2.md) | 203 | `result-track:208287a99b53932591e708e2cce6caf87e87f6937716dc7e85b7eb5388834301` |
| 20 | `theorem` | [mapIdxMGo_eq_mapIdxMAuxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidxmgo-eq-mapidxmauxspec--709ba51207b00a90282cd3bf.md) | 209 | `result-track:709ba51207b00a90282cd3bf4a1e0382242e43edc7e0712b4c023c97bf0b0022` |
| 21 | `theorem` | [mapIdxM_eq_mmap_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidxm-eq-mmap-enum--4b7a984940140469798f98fc.md) | 234 | `result-track:4b7a984940140469798f98fc8e5e3347511eba6144fe6c51fe00333f62d377c3` |
| 22 | `theorem` | [mapIdxMAux'_eq_mapIdxMGo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidxmaux-eq-mapidxmgo--84260b12a1f23d3e35c3af92.md) | 246 | `result-track:84260b12a1f23d3e35c3af92c5e931d84b6ecf2764820d42fe7170f3e555081b` |
| 23 | `theorem` | [mapIdxM'_eq_mapIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant700c1e72edcbb22c65a665352951e0f2b4a360674042d1d67774a1df99275c15.lean/declarations/mapidxm-eq-mapidxm--e56b0fde8db646f2928b922a.md) | 258 | `result-track:e56b0fde8db646f2928b922ae8681c3c19ad0630b69d585d618fed7c25106c37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.ActualFirstStieltjes.Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24ce213f9bbdbda90995cf76826da03e51ac5341",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24ce213f9bbdbda90995cf76826da03e51ac5341`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticInterceptFinite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Monotone` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient--c5d2f8c32f9a4f2d9257559b.md) | 17 | `declaration-track:c5d2f8c32f9a4f2d9257559b2da1f3a1a8edc4d470f743fb7e24a151caa9f9fa` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/stieltjessequence--24eceec88b7535b69e432047.md) | 19 | `declaration-track:24eceec88b7535b69e432047fb9fdb9bf224b296dd744374386a62c9a775f962` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lowersequence--36e4462aa0fdb30208d42d4e.md) | 22 | `declaration-track:36e4462aa0fdb30208d42d4ecb5327ad32ea160490d360fff02d2af177550f54` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/firststieltjesconstant--aaeeab10d65f99e2808b3555.md) | 24 | `declaration-track:aaeeab10d65f99e2808b35557520f08e42ef39c96e12dd136edd2f50d1d2a54b` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-nonneg--bf00b87fd9d64d74a0cde37f.md) | 26 | `result-track:bf00b87fd9d64d74a0cde37fece85202a65a6f365b8695f523f603f53df7f63a` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-antitone--8526c96aa2d08fb768c3440d.md) | 29 | `result-track:8526c96aa2d08fb768c3440d684d96b1031badbe45087556394964dd669adaf3` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-continuouson--f2b5bc4ccd27f6ea9b05b532.md) | 37 | `result-track:f2b5bc4ccd27f6ea9b05b532f3b83cc43f916c4bacd57cf80c077a5c241359bf` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-intervalintegrable--cc6d842fc49f7db2c252e36e.md) | 43 | `result-track:cc6d842fc49f7db2c252e36e8ccd3a5cb667237bd11c9bfd8121c7baa0c44fc1` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-integral--09fc7aba486bac1f3308f7a2.md) | 53 | `result-track:09fc7aba486bac1f3308f7a2e17083f3d3d7dd3166d044753dfb333ee2d17f5b` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/stieltjessequence-succ--76daedc6f56dff51d0232579.md) | 68 | `result-track:76daedc6f56dff51d0232579cd5ecb8dde39feccfdd9a2323e1c185f6ea2d2de` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-cell-lower--4da51a6d3ad5ef05b5e45b44.md) | 78 | `result-track:4da51a6d3ad5ef05b5e45b44270365ff5f4bb925a054442cc122873bc71fa8ba` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-cell-upper--833c652e5bd8b4b900f7bf5d.md) | 84 | `result-track:833c652e5bd8b4b900f7bf5d24785973ced013da81edb9f35a70e94d089f6061` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/stieltjessequence-succ-le--d66b6a178bd69bd12dc36ac7.md) | 90 | `result-track:d66b6a178bd69bd12dc36ac7d0ae5e194b08c303af5c885f14e0ea77aed0b5ff` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lowersequence-le-succ--5bdfc603478cbe51be85a0f9.md) | 96 | `result-track:5bdfc603478cbe51be85a0f9a9986f1cfd9715a161cb0a953baeb0cff1e18f87` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/stieltjes-tail-antitone--59f80eaab73c4521e9db7371.md) | 104 | `result-track:59f80eaab73c4521e9db73710508df5467ccc3dba2da61ba801aa2ce85a9d13e` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lower-tail-monotone--41e2ea7344511f0069b8cc37.md) | 110 | `result-track:41e2ea7344511f0069b8cc37a71ea13f735f548e4fc4393edad1f68b4241153b` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lowersequence-four--4b2d22b003fec303d3868748.md) | 116 | `result-track:4b2d22b003fec303d38687487d7010ccd246ebaba4395e8f695a93d2e10d8671` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lower-four-le-stieltjes-tail--d5848478b40f9a5f3a96a898.md) | 124 | `result-track:d5848478b40f9a5f3a96a898298331c48a078597b7d9df49401bdca2af4a8066` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/stieltjes-tail-bddbelow--62c6dff32125746af6d40e68.md) | 133 | `result-track:62c6dff32125746af6d40e68082f613f35591944ee6a479c15f558fc0021ab63` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/tendsto-stieltjes-tail--50dca5331496daf6ffe3fa5b.md) | 138 | `result-track:50dca5331496daf6ffe3fa5b9165e317fc1ee6353f8ab011cb11f0272f0d3a97` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/tendsto-stieltjessequence--5859364507b9c12f8cc1113d.md) | 142 | `result-track:5859364507b9c12f8cc1113d28fd6b49cdac88f249b7b24e7732a95b6623ad92` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lower-four-le-firststieltjesconstant--6bc215df8f44ab11eb84dbf9.md) | 146 | `result-track:6bc215df8f44ab11eb84dbf9e8430a1f7a9b78b22f62998c7fa592a108045feb` |
| 23 | `theorem` | [firstStieltjesConstant_le_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/firststieltjesconstant-le-stieltjessequence--ec8784c543e3b8857d006e70.md) | 149 | `result-track:ec8784c543e3b8857d006e708b4456068b39b0a33af5408aff2143c97ce7518f` |
| 24 | `theorem` | [logQuotient_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/logquotient-tendsto-zero--cd7a14597775367b1bfd59b2.md) | 154 | `result-track:cd7a14597775367b1bfd59b2b74c84a0f8dfb17278852475d97d0349ee1bf2b6` |
| 25 | `theorem` | [lowerSequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lowersequence-tendsto--175e1bf6b4bb65879de513cd.md) | 159 | `result-track:175e1bf6b4bb65879de513cd7095027e3599e566b09db846341ea2eef672a2a2` |
| 26 | `theorem` | [lowerSequence_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/lowersequence-le-firststieltjesconstant--3ddb2ca2c6ddd6e44ee44db5.md) | 163 | `result-track:3ddb2ca2c6ddd6e44ee44db55cdebca5f2db042b90dda8bd71a4fce8eaba6b43` |
| 27 | `theorem` | [firstStieltjesConstant_enclosure](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/firststieltjesconstant-enclosure--8fc02d043d1229280df91dbe.md) | 171 | `result-track:8fc02d043d1229280df91dbe1b169c4824b6700c3bfbc7e3559c6bbb71bd623b` |
| 28 | `theorem` | [firstStieltjesConstant_gt_neg_249](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/firststieltjesconstant-gt-neg-249--0133b0429fd6a2170b099682.md) | 177 | `result-track:0133b0429fd6a2170b0996823a5c1a6173b25ec2bf5d7371a0022705ad3ac62b` |
| 29 | `theorem` | [intercept_gt_one_five_hundred](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/intercept-gt-one-five-hundred--3e68909efbccd3fc8ffabc61.md) | 182 | `result-track:3e68909efbccd3fc8ffabc61629e0a4bf5dcb09952a54bada4464fb81a7e4d51` |
| 30 | `theorem` | [stieltjesSequence_limit_unique](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/declarations/stieltjessequence-limit-unique--9a84ea54c36212dbb88dfe0b.md) | 187 | `result-track:9a84ea54c36212dbb88dfe0b0a959c2c6814c2d20c59dce036ce29136edb481e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

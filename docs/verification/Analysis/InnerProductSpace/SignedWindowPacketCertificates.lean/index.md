# Verification target: GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88c1adb0a7f624bbed177fc2fa521c4ba469c626",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88c1adb0a7f624bbed177fc2fa521c4ba469c626`.

Source path: `GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Order.WellFounded.AdditiveNaturalRank`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Chart](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/chart--810bbf246d54a274364fd8c4.md) | 15 | `declaration-track:810bbf246d54a274364fd8c4ce917e87369d71b9fa3a48d0636b8c3f191d6d95` |
| 2 | `def` | [maturePacket](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/maturepacket--5cf051a3ba8ef0a576fb58c6.md) | 29 | `declaration-track:5cf051a3ba8ef0a576fb58c6b1c9560a6e5d544cbb5aef29946fe3b8291b9d32` |
| 3 | `def` | [horizonPacket](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/horizonpacket--44f21dc3532790ac97d99937.md) | 32 | `declaration-track:44f21dc3532790ac97d99937b180d722b4affd6dce661901c1ed28e0118abb0d` |
| 4 | `def` | [packetEnergy](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packetenergy--3142f3d323daa422818e3798.md) | 35 | `declaration-track:3142f3d323daa422818e3798b893a5450335eeea6f47578cf1eed5b219647ad2` |
| 5 | `def` | [maturePacketEnergy](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/maturepacketenergy--609d9183a55c57a97974038e.md) | 38 | `declaration-track:609d9183a55c57a97974038e32f809ec61ac4a4b0e4b9346aabbfde76c82866a` |
| 6 | `def` | [horizonPacketEnergy](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/horizonpacketenergy--0efffb019f71beb329b00485.md) | 41 | `declaration-track:0efffb019f71beb329b00485ee4777ff3827973a49c1130956f6b4b60d6bb4ff` |
| 7 | `def` | [packetCorrelation](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packetcorrelation--80f789f0113873975e2a4d53.md) | 44 | `declaration-track:80f789f0113873975e2a4d534b87937c04d4be55cc5eaece1f2c98b77a2a6196` |
| 8 | `def` | [sectorMass](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/sectormass--d7fcef3f32f7bfad8f04b6cc.md) | 47 | `declaration-track:d7fcef3f32f7bfad8f04b6cc6f53398edd5ebfde28d99171fa380c128724ac84` |
| 9 | `lemma` | [packet_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packet-square-integrable--f17b3aaf96688b9aadeac928.md) | 50 | `result-track:f17b3aaf96688b9aadeac928b1f3fff578d7ba20a5b4a0c28bd31b15a4a98e1c` |
| 10 | `lemma` | [mature_packet_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/mature-packet-square-integrable--b9509e28607ea58d766a01fa.md) | 63 | `result-track:b9509e28607ea58d766a01fac9e83997b4e048b9a213a926032965c5b56df27e` |
| 11 | `lemma` | [horizon_packet_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/horizon-packet-square-integrable--64e9fc5286eb518b6bf330a6.md) | 67 | `result-track:64e9fc5286eb518b6bf330a64efe597292abc5f8b8fbdd1668401b607bf2509b` |
| 12 | `lemma` | [packet_cross_integrable](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packet-cross-integrable--a53a0dcddb416947764bf097.md) | 71 | `result-track:a53a0dcddb416947764bf09737d4a7257d7ba27fa47504e2be1c0f8927ddc52a` |
| 13 | `lemma` | [packet_sum_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packet-sum-square-integrable--1e7778bcb72e890f23ef8f54.md) | 87 | `result-track:1e7778bcb72e890f23ef8f54fecaf0eabcc46a7c689217546bef358957b37a22` |
| 14 | `lemma` | [source_sum_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/source-sum-square-integrable--b5c38be5532857ba3e9ba101.md) | 93 | `result-track:b5c38be5532857ba3e9ba1015035c55c081dbf97557942d290c2fd0f520fb19c` |
| 15 | `theorem` | [packet_signed_ledger](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packet-signed-ledger--3de0edca7988552b0e2b3d8c.md) | 100 | `result-track:3de0edca7988552b0e2b3d8cba6e914bd30db4c93bedf41fbe34b14de6bad99a` |
| 16 | `lemma` | [packetEnergy_nonnegative](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packetenergy-nonnegative--47d8c9a65d5074dabf3f2790.md) | 117 | `result-track:47d8c9a65d5074dabf3f2790f676e94de393f9ff7f9ba51372b9fd96cb42ac01` |
| 17 | `def` | [matchingDeficit](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/matchingdeficit--11bbd6e1fce483cb65c2135a.md) | 121 | `declaration-track:11bbd6e1fce483cb65c2135ac86a2b3fdae479889517542ee2f83dd5a658726d` |
| 18 | `lemma` | [matchingDeficit_eq_packetEnergy](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/matchingdeficit-eq-packetenergy--82dafca6b8cfcfee5c3d6f2f.md) | 123 | `result-track:82dafca6b8cfcfee5c3d6f2f44125afa776743ac43244692035e92bcbd4b741e` |
| 19 | `def` | [BroadMatching](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/broadmatching--50bcc1087364e852a4b625ea.md) | 127 | `declaration-track:50bcc1087364e852a4b625eae1df4c6fe5b5c999a37bb7767b31152c6ad3d052` |
| 20 | `structure` | [BroadCertificate](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/broadcertificate--b71ec4dde84d4d09042ea4da.md) | 130 | `declaration-track:b71ec4dde84d4d09042ea4da935fcfe1aa0bc8b440783f64b2d8b26af78b8bca` |
| 21 | `theorem` | [broad_certificate_returns_budget](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/broad-certificate-returns-budget--a2077535731df611cc09165c.md) | 139 | `result-track:a2077535731df611cc09165cc33394bb5e49b0a19136850949866cc75b2f7f06` |
| 22 | `lemma` | [packet_square_factor](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/packet-square-factor--77763c4a83fe4039383ae432.md) | 147 | `result-track:77763c4a83fe4039383ae43246225b39c743da613b1c3ac9491b35c88900dc33` |
| 23 | `theorem` | [finite_coverage_returns_energy](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/finite-coverage-returns-energy--ba4e702bebd03c897d91cf7d.md) | 154 | `result-track:ba4e702bebd03c897d91cf7d5bd2f06e49ed8c4d3708c6a2682d6b5d923e9048` |
| 24 | `theorem` | [finite_chart_budgets_return](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/finite-chart-budgets-return--7476d3e4a5b4e71f6bca0f06.md) | 177 | `result-track:7476d3e4a5b4e71f6bca0f06cc0a83bd86c97e6bbc5ea5d1e401f72109fd5731` |
| 25 | `theorem` | [finite_overlap_cost](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/finite-overlap-cost--5e99dcc9d4956b306acda747.md) | 186 | `result-track:5e99dcc9d4956b306acda747f246dbcb1737789f8d6c7b04459d81a495b9ae1a` |
| 26 | `theorem` | [finite_signed_component_reconstruction](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/finite-signed-component-reconstruction--21755c09ee7cbbf56a064eed.md) | 208 | `result-track:21755c09ee7cbbf56a064eedd67a85db82d42d6ca155662a39dd7323cea00afb` |
| 27 | `theorem` | [uniform_chart_budgets_imply_HSS](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/uniform-chart-budgets-imply-hss--9f2a9b19afe93e36790abba8.md) | 220 | `result-track:9f2a9b19afe93e36790abba8e1a6fa6c5fa1bd5b6e12fd208a7655a709b93a71` |
| 28 | `structure` | [NarrowCertificate](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/narrowcertificate--66006cc00d90d6fbc1bec470.md) | 235 | `declaration-track:66006cc00d90d6fbc1bec4702672421527cb29c7ad90e17301add57f862fd7b1` |
| 29 | `lemma` | [normalized_child_window](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/normalized-child-window--180ba7790c3a859845c37adf.md) | 268 | `result-track:180ba7790c3a859845c37adf1dd04adc5ff97f5774e99ce1c2ff2bac1fbdce27` |
| 30 | `lemma` | [narrow_residual_integrable](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/narrow-residual-integrable--21aaf8d4165b59839c97069f.md) | 274 | `result-track:21aaf8d4165b59839c97069ffd27dd6034f62a57045eb39fb9df8756506c42fa` |
| 31 | `theorem` | [narrow_certificate_transport](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/narrow-certificate-transport--69059b0b164ba1715f0b828b.md) | 284 | `result-track:69059b0b164ba1715f0b828bb3976efa954f8b93a2055df4441375e20b384fda` |
| 32 | `theorem` | [narrow_child_budget_returns_parent](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/narrow-child-budget-returns-parent--5899aaf8e6fb4e652c3c1ca7.md) | 313 | `result-track:5899aaf8e6fb4e652c3c1ca708f2f3e90503f8f6d2886247f287f34b4275c55f` |
| 33 | `inductive` | [SignedBudgetDerivation](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation--78fbf81f58d6e22749231508.md) | 325 | `declaration-track:78fbf81f58d6e227492315085f459273152ee0ebb81613d50cf78ca8993f1582` |
| 34 | `theorem` | [SignedBudgetDerivation.sound](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation-sound--cff8331148814de91ebba2fc.md) | 336 | `result-track:cff8331148814de91ebba2fc55a355d33fcae02323daa4957291f8fee6064732` |
| 35 | `def` | [SignedBudgetDerivation.depth](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation-depth--a2bcc951b5a2a6239c839fd0.md) | 342 | `declaration-track:a2bcc951b5a2a6239c839fd0a8d994858f21fa2f113b9cd5322d1b8b3330b600` |
| 36 | `theorem` | [SignedBudgetDerivation.depth_le_rank](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/signedbudgetderivation-depth-le-rank--db9c94c61651c1a2e5defc21.md) | 350 | `result-track:db9c94c61651c1a2e5defc2181345c5f5f863caefe7d0a027bda6a630c439d3b` |
| 37 | `def` | [UniformCertifiedCharts](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/uniformcertifiedcharts--714ed0fa88eb7bcec3e4a5ee.md) | 363 | `declaration-track:714ed0fa88eb7bcec3e4a5eeba88378f1ed7989103d7b52a73ee1141a2d828da` |
| 38 | `theorem` | [uniform_certified_charts_imply_HSS](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/uniform-certified-charts-imply-hss--a60f6d4ee3b9e3be16ec5eeb.md) | 372 | `result-track:a60f6d4ee3b9e3be16ec5eeba01982ec52ec2652d6c43e66d0b9b03c027d428f` |
| 39 | `theorem` | [nondecreasing_child_rejected](../../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/declarations/nondecreasing-child-rejected--806cb129baa3ff112c13fee2.md) | 383 | `result-track:806cb129baa3ff112c13fee22892bb930c6fd6bb05b47d42f2efb47e8719853f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

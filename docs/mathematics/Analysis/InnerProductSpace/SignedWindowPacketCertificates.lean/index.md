# GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88c1adb0a7f624bbed177fc2fa521c4ba469c626`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Chart](declarations/chart--810bbf246d54a274364fd8c4.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maturePacket](declarations/maturepacket--5cf051a3ba8ef0a576fb58c6.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [horizonPacket](declarations/horizonpacket--44f21dc3532790ac97d99937.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [packetEnergy](declarations/packetenergy--3142f3d323daa422818e3798.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maturePacketEnergy](declarations/maturepacketenergy--609d9183a55c57a97974038e.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [horizonPacketEnergy](declarations/horizonpacketenergy--0efffb019f71beb329b00485.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [packetCorrelation](declarations/packetcorrelation--80f789f0113873975e2a4d53.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sectorMass](declarations/sectormass--d7fcef3f32f7bfad8f04b6cc.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [packet_square_integrable](declarations/packet-square-integrable--f17b3aaf96688b9aadeac928.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mature_packet_square_integrable](declarations/mature-packet-square-integrable--b9509e28607ea58d766a01fa.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [horizon_packet_square_integrable](declarations/horizon-packet-square-integrable--64e9fc5286eb518b6bf330a6.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [packet_cross_integrable](declarations/packet-cross-integrable--a53a0dcddb416947764bf097.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [packet_sum_square_integrable](declarations/packet-sum-square-integrable--1e7778bcb72e890f23ef8f54.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [source_sum_square_integrable](declarations/source-sum-square-integrable--b5c38be5532857ba3e9ba101.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [packet_signed_ledger](declarations/packet-signed-ledger--3de0edca7988552b0e2b3d8c.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [packetEnergy_nonnegative](declarations/packetenergy-nonnegative--47d8c9a65d5074dabf3f2790.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [matchingDeficit](declarations/matchingdeficit--11bbd6e1fce483cb65c2135a.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [matchingDeficit_eq_packetEnergy](declarations/matchingdeficit-eq-packetenergy--82dafca6b8cfcfee5c3d6f2f.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [BroadMatching](declarations/broadmatching--50bcc1087364e852a4b625ea.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [BroadCertificate](declarations/broadcertificate--b71ec4dde84d4d09042ea4da.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [broad_certificate_returns_budget](declarations/broad-certificate-returns-budget--a2077535731df611cc09165c.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [packet_square_factor](declarations/packet-square-factor--77763c4a83fe4039383ae432.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finite_coverage_returns_energy](declarations/finite-coverage-returns-energy--ba4e702bebd03c897d91cf7d.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finite_chart_budgets_return](declarations/finite-chart-budgets-return--7476d3e4a5b4e71f6bca0f06.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finite_overlap_cost](declarations/finite-overlap-cost--5e99dcc9d4956b306acda747.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finite_signed_component_reconstruction](declarations/finite-signed-component-reconstruction--21755c09ee7cbbf56a064eed.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [uniform_chart_budgets_imply_HSS](declarations/uniform-chart-budgets-imply-hss--9f2a9b19afe93e36790abba8.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [NarrowCertificate](declarations/narrowcertificate--66006cc00d90d6fbc1bec470.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [normalized_child_window](declarations/normalized-child-window--180ba7790c3a859845c37adf.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [narrow_residual_integrable](declarations/narrow-residual-integrable--21aaf8d4165b59839c97069f.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [narrow_certificate_transport](declarations/narrow-certificate-transport--69059b0b164ba1715f0b828b.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [narrow_child_budget_returns_parent](declarations/narrow-child-budget-returns-parent--5899aaf8e6fb4e652c3c1ca7.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [SignedBudgetDerivation](declarations/signedbudgetderivation--78fbf81f58d6e22749231508.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [SignedBudgetDerivation.sound](declarations/signedbudgetderivation-sound--cff8331148814de91ebba2fc.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [SignedBudgetDerivation.depth](declarations/signedbudgetderivation-depth--a2bcc951b5a2a6239c839fd0.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [SignedBudgetDerivation.depth_le_rank](declarations/signedbudgetderivation-depth-le-rank--db9c94c61651c1a2e5defc21.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [UniformCertifiedCharts](declarations/uniformcertifiedcharts--714ed0fa88eb7bcec3e4a5ee.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [uniform_certified_charts_imply_HSS](declarations/uniform-certified-charts-imply-hss--a60f6d4ee3b9e3be16ec5eeb.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [nondecreasing_child_rejected](declarations/nondecreasing-child-rejected--806cb129baa3ff112c13fee2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |

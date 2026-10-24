# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.D94b9e18a42d7bdc70f06ffccd69e49c0f9e0497343ac828cf1b037117ed4845XiContractAudit.Variantcb93418a46f7142322412622b0830e8892c5a470e2c2fa6f86b96cc4e97b58f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6dc36286450d2e989e6053c48e7219b7339c479` · SHA-256 `a25f78b86bdd0da7af151aa3ad1fe35ef455b6eea6be70a49e944b9285aade53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiFiniteOrder.Variantd94b9e18a42d7bdc70f06ffccd69e49c0f9e0497343ac828cf1b037117ed4845","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d94b9e18a42d7bdc70f06ffccd69e49c0f9e0497343ac828cf1b037117ed4845","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.XiFiniteOrder.Variantd94b9e18a42d7bdc70f06ffccd69e49c0f9e0497343ac828cf1b037117ed4845","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d94b9e18a42d7bdc70f06ffccd69e49c0f9e0497343ac828cf1b037117ed4845","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/d9/d94b9e18a42d7bdc70f06ffccd69e49c0f9e0497343ac828cf1b037117ed4845--XiContractAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiFiniteOrder

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiFiniteOrder.Variantd94b9e18a42d7bdc70f06ffccd69e49c0f9e0497343ac828cf1b037117ed4845

set_option pp.universes true
set_option pp.proofs false

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.FiniteHeightRH
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.FiniteHeightRH
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.FiniteHeightRH

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.ActualPairedProduct
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.ActualPairedProduct
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.ActualPairedProduct

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.RootFactor
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.RootFactor
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.RootFactor

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.RootFactor.toFactor
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.RootFactor.toFactor
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.RootFactor.toFactor

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.published_order_bound
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.published_order_bound
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.published_order_bound

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.PublishedHeightInput
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.PublishedHeightInput
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.PublishedHeightInput

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.xi_pfOrder_of_height
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.xi_pfOrder_of_height
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.xi_pfOrder_of_height

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.xi_published_order
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.xi_published_order
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.xi_published_order

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_block_nonnegative
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_block_nonnegative
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_block_nonnegative

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_frame_nonnegative
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_frame_nonnegative
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_frame_nonnegative

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_plane_nonnegative
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_plane_nonnegative
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_plane_nonnegative

#check @FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_coordinate_nonnegative
#print FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_coordinate_nonnegative
#print axioms FormalResearch.RiemannHypothesis.XiFiniteOrder.actual_coordinate_nonnegative

#print FormalResearch.RiemannHypothesis.NontrivialZetaZero
#print FormalResearch.RiemannHypothesis.XiToeplitz.coefficient
```

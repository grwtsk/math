# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrintAxioms.Variant2d86689c7a9d8505743284bbf7f47be4eb05fee444bc9237080f0f792b971e80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e574dbc5fb3cdfcb0f8fdd06dc3b3126178e7003` · SHA-256 `f4afba90a8adbacdec15d5893606a1c5a9a8d56ab51134ada7360e98c456c4ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Solution.Variant28be87ece0426e2e6586fff1ccf4da3d1da082587df454ddad2217e320c06612","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28be87ece0426e2e6586fff1ccf4da3d1da082587df454ddad2217e320c06612","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Solution.Variant28be87ece0426e2e6586fff1ccf4da3d1da082587df454ddad2217e320c06612","mathematical_subject":"Foundations.Unclassified","original_sha256":"28be87ece0426e2e6586fff1ccf4da3d1da082587df454ddad2217e320c06612","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/.lake/packages/Zeta23/comparator/PrintAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
comparator/PrintAxioms.lean — quick axiom audit of the fifteen headline theorems WITHOUT the comparator
tool:   lake build Solution && lake env lean comparator/PrintAxioms.lean
Every line must print exactly:  'X' depends on axioms: [propext, Classical.choice, Quot.sound]
(no sorryAx, no other axiom).  The comparator run (comparator/README.md) is the stronger check: it also
verifies that these statements coincide with the trusted ones in Challenge.lean.
-/
import Solution


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Solution.Variant28be87ece0426e2e6586fff1ccf4da3d1da082587df454ddad2217e320c06612

#print axioms two_thirds_on_critical_line
#print axioms two_thirds_on_critical_line_cumulative
#print axioms half_simple_on_critical_line
#print axioms half_simple_on_critical_line_cumulative
#print axioms three_quarters_distinct
#print axioms three_quarters_distinct_cumulative
#print axioms montgomery_taylor_on_critical_line
#print axioms montgomery_taylor_simple_on_critical_line
#print axioms montgomery_taylor_distinct
#print axioms dirichlet_two_thirds_on_critical_line
#print axioms dirichlet_half_simple_on_critical_line
#print axioms dirichlet_three_quarters_distinct
#print axioms dirichlet_montgomery_taylor_on_critical_line
#print axioms dirichlet_montgomery_taylor_simple_on_critical_line
#print axioms dirichlet_montgomery_taylor_distinct
```

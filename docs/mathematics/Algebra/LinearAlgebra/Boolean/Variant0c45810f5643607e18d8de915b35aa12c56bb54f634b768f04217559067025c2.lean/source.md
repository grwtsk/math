# Complete source: GRWTSK.Algebra.LinearAlgebra.Boolean.Variant0c45810f5643607e18d8de915b35aa12c56bb54f634b768f04217559067025c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74486bff09867a31291c450d7ced3f7a1c050186` · SHA-256 `dfb8733f0114b3729813f1cdf072b82acca94b65ba3f38433868bda44764bc15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Algebra.Variant69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Algebra.Variant69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089","mathematical_subject":"Foundations.Unclassified","original_sha256":"69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Algebra
import Boolean.Algebra.Bool
import Boolean.Algebra.Formula
import Boolean.Algebra.Laws
import Boolean.BDD
import Boolean.Formula
import Boolean.Formula.CNF
import Boolean.Formula.Enumeration
import Boolean.Formula.Eval
import Boolean.Formula.Laws
import Boolean.Formula.Semantics
import Boolean.Formula.Traversal
import Boolean.Tree
import Boolean.Tree.ANF
import Boolean.Tree.CNF
import Boolean.Tree.Compile
import Boolean.Tree.Completeness
import Boolean.Tree.Eval
import Boolean.Tree.Graph
import Boolean.Tree.List
import Boolean.Tree.MatrixEncoding
import Boolean.Tree.Normalize
import Boolean.Tree.OrderedFactor
import Boolean.Tree.Polish
import Boolean.Tree.Size
import Boolean.Tree.SOP
import Boolean.Tree.SOP.Minimize
import Boolean.Tree.Variadic
import Boolean.Matrix
import Boolean.Matrix.Count
import Boolean.Matrix.Cycle
import Boolean.Matrix.Encoding
import Boolean.Matrix.Ext
import Boolean.Matrix.Lattice
import Boolean.Matrix.Operations
import Boolean.Matrix.Relation
import Boolean.Matrix.Warshall
import Boolean.Runtime
import Boolean.Cube

/-!
# Boolean

Public import surface for the finite Boolean library.

This module exposes the stable finite infrastructure: algebra, formulas,
decision diagrams, expression trees, matrices, finite cubes, Boolean networks,
Walsh/Fourier shadows, and finite projection utilities.

Certificate-gated analytic, prismatic, torsion, and ZKP-facing boundary modules
are available through explicit imports such as `Boolean.Cube.CertificateBoundary`.
-/

namespace GRWTSK.Algebra.LinearAlgebra.Algebra.Variant69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089

```

# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Finite.Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9272db02b325cedb50507bf44f192f85617d80e4` · SHA-256 `550d28a0affe02690a0fb564d10019c65e392ea599096dc03b939a2c7a55596f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.FiniteHilbert.Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.FiniteHilbert.Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Hilbert/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.Matrix.Hermitian

/-!
# Exact finite Hilbert coordinates for DAF

This module fixes the finite semantic carrier used by the first DAF Hilbert
realization.  A finite Hilbert space is an `L²` Euclidean space over `ℂ`, and
an operator is represented by its exact complex matrix.  No assertion about an
infinite-dimensional `L²` space or an unbounded operator is made here.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.FiniteHilbert.Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f

noncomputable section

namespace DAF.Hilbert

universe u v

/-- The exact complex Hilbert space with a finite coordinate type. -/
abbrev FiniteHilbert (Index : Type u) [Fintype Index] :=
  EuclideanSpace ℂ Index

/-- A finite operator represented in the canonical Euclidean basis. -/
abbrev FiniteOperator (Row : Type u) (Column : Type v) :=
  Matrix Row Column ℂ

/-- Interpret an exact matrix as a linear map between finite Euclidean spaces. -/
def FiniteOperator.toLinearMap
    {Row : Type u} {Column : Type v}
    [Fintype Row] [Fintype Column] [DecidableEq Column]
    (A : FiniteOperator Row Column) :
    FiniteHilbert Column →ₗ[ℂ] FiniteHilbert Row :=
  Matrix.toEuclideanLin A

/-- Matrix Hermiticity is exactly symmetry of the induced finite linear map. -/
theorem FiniteOperator.isSymmetric_toLinearMap_iff
    {Index : Type u} [Fintype Index] [DecidableEq Index]
    (A : FiniteOperator Index Index) :
    A.toLinearMap.IsSymmetric ↔ A.IsHermitian :=
  Matrix.isSymmetric_toEuclideanLin_iff

/-- The adjoint of the induced map is represented by the conjugate transpose. -/
theorem FiniteOperator.conjTranspose_toLinearMap_eq_adjoint
    {Row : Type u} {Column : Type v}
    [Fintype Row] [Fintype Column]
    [DecidableEq Row] [DecidableEq Column]
    (A : FiniteOperator Row Column) :
    FiniteOperator.toLinearMap A.conjTranspose =
      (FiniteOperator.toLinearMap A).adjoint :=
  Matrix.toEuclideanLin_conjTranspose_eq_adjoint A

end DAF.Hilbert
```

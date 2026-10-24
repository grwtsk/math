# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant4ee5a86112ba8dbc74bd28880056dcbd085e1b03acbf570c92a67a3ef1b916c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5771becae9284c1462d986dd4274d56dfcc608bb` · SHA-256 `efc44d8e426d8b5a3f2735bf18212f3f346a36cd36102f622231d0fcd7aa3206`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.P0.Variant35beb7bd3361a9c9b0d0607de1752a7fcc7204189c8b83961acddb012970d882","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35beb7bd3361a9c9b0d0607de1752a7fcc7204189c8b83961acddb012970d882","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.P0.Variant35beb7bd3361a9c9b0d0607de1752a7fcc7204189c8b83961acddb012970d882","mathematical_subject":"Algebra.Polynomials","original_sha256":"35beb7bd3361a9c9b0d0607de1752a7fcc7204189c8b83961acddb012970d882","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Polynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Module.ULift


namespace GRWTSK.Algebra.CommutativeAlgebra.P0.Variant35beb7bd3361a9c9b0d0607de1752a7fcc7204189c8b83961acddb012970d882

open Polynomial

def p0 : ℕ[X] :=
  ⟨⟨{}, Pi.single 0 0, by intro; simp [Pi.single, Function.update_apply]⟩⟩
example : reprStr p0 = "0" := by native_decide
example : reprStr (Option.some p0) = "some 0" := by native_decide
example : (reprPrec p0 65).pretty = "0" := by native_decide

def pX : ℕ[X] :=
  ⟨⟨{1}, Pi.single 1 1, by intro; simp [Pi.single, Function.update_apply]⟩⟩
example : reprStr pX = "X" := by native_decide
example : reprStr (Option.some pX) = "some X" := by native_decide

def pXsq : ℕ[X] :=
  ⟨⟨{2}, Pi.single 2 1, by intro; simp [Pi.single, Function.update_apply]⟩⟩
example : reprStr pXsq = "X ^ 2" := by native_decide
example : reprStr (Option.some pXsq) = "some (X ^ 2)" := by native_decide
example : (reprPrec pXsq 65).pretty = "X ^ 2" := by native_decide
example : (reprPrec pXsq 70).pretty = "X ^ 2" := by native_decide
example : (reprPrec pXsq 80).pretty = "(X ^ 2)" := by native_decide

def p1 : ℕ[X] :=
  ⟨⟨{1}, Pi.single 1 37, by intro; simp [Pi.single, Function.update_apply]⟩⟩
example : reprStr p1 = "C 37 * X" := by native_decide
example : reprStr (Option.some p1) = "some (C 37 * X)" := by native_decide
example : (reprPrec p1 65).pretty = "C 37 * X" := by native_decide
example : (reprPrec p1 70).pretty = "(C 37 * X)" := by native_decide

def p2 : ℕ[X] :=
  ⟨⟨{0, 2}, Pi.single 0 57 + Pi.single 2 22,
    by intro; simp [Pi.single, Function.update_apply]; tauto⟩⟩
example : reprStr p2 = "C 57 + C 22 * X ^ 2" := by native_decide
example : (reprPrec p2 65).pretty = "(C 57 + C 22 * X ^ 2)" := by native_decide

-- test that parens are added inside `C`
def pu1 : (ULift.{1} ℕ)[X] :=
  ⟨⟨{1}, Pi.single 1 (ULift.up 37),
    by intro; simp [Pi.single, Function.update_apply, ←ULift.down_inj]⟩⟩
example : reprStr pu1 = "C (ULift.up 37) * X" := by native_decide
```

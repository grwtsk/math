# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompressionModelingMathematics.Variant764f8401ba816740b41730a851368b94b9b8d518aa072360efdf2ed79e54c48a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68638df2171a3b2d24acb016e3abb51804e396e3` · SHA-256 `764f8401ba816740b41730a851368b94b9b8d518aa072360efdf2ed79e54c48a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.CompressionModelingMathematics

/-
Survey target: 2603.20396, "Compression is all you need:
Modeling Mathematics".

This file records the paper's compression thesis as a finite formalization
target. It does not prove that mathematical proof flow is compression, and it
does not allow MathLib measurements, monoid models, or PageRank-style scores to
act as theorem authority. Each source claim remains a residue atom until its
definitions, data translation, and proof artifacts are locally supplied.
-/

structure Context where
  FormalDeduction : Type
  HumanMathArtifact : Type
  Macro : Type
  MathlibElement : Type
  IsPrimitiveString : FormalDeduction -> Prop
  MacroCompresses : Macro -> FormalDeduction -> Prop
  InHumanMathematics : HumanMathArtifact -> Prop
  HumanArtifactEncodedBy : HumanMathArtifact -> FormalDeduction -> Prop
  WrappedLength : MathlibElement -> Nat
  UnwrappedLength : MathlibElement -> Nat
  Depth : MathlibElement -> Nat
  MacroSetLogSparse : Prop
  MacroSetPolynomiallyDense : Prop
  AbelianExponentialExpansion : Prop
  NonabelianSuperlinearRequiresNearMaximalDensity : Prop
  MathlibProxyValid : Prop
  HumanMathPolynomialSubsetOfFormalMath : Prop
  CompressionGuidesAutomatedReasoning : Prop

inductive Atom where
  | formalMathStringModel
  | humanMathCompressibilityMetric
  | macroSetDensity
  | freeAbelianMonoidExpansion
  | freeNonabelianMonoidBound
  | mathlibProxyValidity
  | compressionMotifNotAuthority
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .formalMathStringModel => "formal_math_string_model"
  | .humanMathCompressibilityMetric => "human_math_compressibility_metric"
  | .macroSetDensity => "macro_set_density"
  | .freeAbelianMonoidExpansion => "free_abelian_monoid_expansion"
  | .freeNonabelianMonoidBound => "free_nonabelian_monoid_bound"
  | .mathlibProxyValidity => "mathlib_proxy_validity"
  | .compressionMotifNotAuthority => "compression_motif_not_authority"

def Atom.kind : Atom -> FWR.ResidueKind
  | .formalMathStringModel => FWR.ResidueKind.missingDefinition
  | .humanMathCompressibilityMetric => FWR.ResidueKind.missingDefinition
  | .macroSetDensity => FWR.ResidueKind.missingUniformBound
  | .freeAbelianMonoidExpansion => FWR.ResidueKind.externalTheoremNotImported
  | .freeNonabelianMonoidBound => FWR.ResidueKind.externalTheoremNotImported
  | .mathlibProxyValidity => FWR.ResidueKind.externalTheoremNotImported
  | .compressionMotifNotAuthority => FWR.ResidueKind.authorityOverclaim

def Atom.blocks : Atom -> String
  | .formalMathStringModel =>
      "formal deductions as primitive strings are not locally represented with source-compatible syntax"
  | .humanMathCompressibilityMetric =>
      "human mathematics as compressible wrapped and unwrapped artifacts is not locally measured"
  | .macroSetDensity =>
      "macro-set density regimes are not locally formalized with finite growth bounds"
  | .freeAbelianMonoidExpansion =>
      "free abelian monoid exponential expressivity claim from sparse macros"
  | .freeNonabelianMonoidBound =>
      "free nonabelian monoid bound separating polynomial density from superlinear expansion"
  | .mathlibProxyValidity =>
      "MathLib dependency measurements as a proxy for human mathematics"
  | .compressionMotifNotAuthority =>
      "compression or PageRank-style interest score being promoted to proof authority"

def Atom.clearsBy : Atom -> String
  | .formalMathStringModel =>
      "Lean syntax model for primitive deduction strings and named macro expansion"
  | .humanMathCompressibilityMetric =>
      "local definitions of wrapped length, unwrapped length, depth, and compression comparison"
  | .macroSetDensity =>
      "finite or asymptotic density definitions plus checked growth lemmas"
  | .freeAbelianMonoidExpansion =>
      "kernel-checked proof or certified import of the abelian monoid expansion statement"
  | .freeNonabelianMonoidBound =>
      "kernel-checked proof or certified import of the nonabelian monoid bound"
  | .mathlibProxyValidity =>
      "reproducible MathLib extraction certificate and proof that the proxy statement matches the source claim"
  | .compressionMotifNotAuthority =>
      "explicit theorem-interface proof object rather than compression, score, or prediction metadata"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2603.20396:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ artifact : ctx.HumanMathArtifact,
      ctx.InHumanMathematics artifact ->
        ∃ deduction : ctx.FormalDeduction,
          ctx.HumanArtifactEncodedBy artifact deduction ∧
          ctx.IsPrimitiveString deduction) ∧
  ctx.MacroSetLogSparse ∧
  ctx.MacroSetPolynomiallyDense ∧
  ctx.AbelianExponentialExpansion ∧
  ctx.NonabelianSuperlinearRequiresNearMaximalDensity ∧
  ctx.MathlibProxyValid ∧
  ctx.HumanMathPolynomialSubsetOfFormalMath ∧
  ctx.CompressionGuidesAutomatedReasoning

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.formalMathStringModel
  , atomResidue Atom.humanMathCompressibilityMetric
  , atomResidue Atom.macroSetDensity
  , atomResidue Atom.freeAbelianMonoidExpansion
  , atomResidue Atom.freeNonabelianMonoidBound
  , atomResidue Atom.mathlibProxyValidity
  , atomResidue Atom.compressionMotifNotAuthority
  ]

def finalWitness (ctx : Context) : Think.Checked (finalClaim ctx) :=
  FWR.Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 7 := by
  rfl

def surveyTarget : SurveyTarget :=
  { targetId := "2603.20396:main-compression-claims"
    paperId := "2603.20396"
    kind := TargetKind.claim
    leanFile := "ResearchSurvey/CompressionModelingMathematics.lean"
    suggestedLeanName :=
      "CompressionModelingMathematics.main_compression_claims" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.CompressionModelingMathematics
```

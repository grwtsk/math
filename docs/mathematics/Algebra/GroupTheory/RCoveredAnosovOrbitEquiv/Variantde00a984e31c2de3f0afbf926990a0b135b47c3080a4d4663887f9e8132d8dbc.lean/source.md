# Complete source: GRWTSK.Algebra.GroupTheory.RCoveredAnosovOrbitEquiv.Variantde00a984e31c2de3f0afbf926990a0b135b47c3080a4d4663887f9e8132d8dbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7d937386d645e04864bc78a1054f850e54d4938` · SHA-256 `da7ffbc368b701812f8a1513428ee2c16eb4206597e8acc3d68c76aeb2769089`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Context.Variant18188543ba003dca5fb9433c1dbe9a4f219737a832aaf81264484e822f5cbd4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18188543ba003dca5fb9433c1dbe9a4f219737a832aaf81264484e822f5cbd4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Context.Variant18188543ba003dca5fb9433c1dbe9a4f219737a832aaf81264484e822f5cbd4a","mathematical_subject":"Algebra.Groups","original_sha256":"18188543ba003dca5fb9433c1dbe9a4f219737a832aaf81264484e822f5cbd4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/Sources/RCoveredAnosovOrbitEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ResearchSurvey.Basic


namespace GRWTSK.Algebra.GroupTheory.Context.Variant18188543ba003dca5fb9433c1dbe9a4f219737a832aaf81264484e822f5cbd4a

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.RCoveredAnosovOrbitEquiv

/-
Survey target: 2012.11811v4, Theorem 1.1, rigidity of hyperbolic-like
actions and R-covered Anosov orbit-equivalence boundaries.

This file records the theorem target as external dynamics infrastructure. It
does not import hyperbolic-like action rigidity, R-covered Anosov
classification, spectral rigidity, self-orbit criteria, or contact-Anosov
transfer as authority for the finite residue pipeline.
-/

structure Context where
  Closed3Manifold : Type
  Flow : Type
  Group : Type
  Line : Type
  LineAction : Type
  FixedPointElementSet : Type
  PeriodicOrbitElementSet : Type
  ContactStructure : Type
  IsClosed3Manifold : Closed3Manifold -> Prop
  FundamentalGroup : Closed3Manifold -> Group
  IsNonabelianGroup : Group -> Prop
  IsRCoveredAnosovFlow : Closed3Manifold -> Flow -> Prop
  IsMinimalHyperbolicLikeAction : Group -> Line -> LineAction -> Prop
  FixedPointElements : LineAction -> FixedPointElementSet
  ConjugateActions : LineAction -> LineAction -> Prop
  PeriodicOrbitElements : Closed3Manifold -> Flow -> PeriodicOrbitElementSet
  OrbitEquivalent : Closed3Manifold -> Flow -> Flow -> Prop
  SpectrallyRigid : Closed3Manifold -> Flow -> Prop
  SelfOrbitEquivalenceCriterion : Closed3Manifold -> Flow -> Prop
  HasContactStructure : Closed3Manifold -> Flow -> ContactStructure -> Prop
  ContactAnosovTransfer : Prop

inductive Atom where
  | rCoveredAnosovFlow
  | hyperbolicLikeActionOnLine
  | fundamentalGroupPeriodicOrbitElements
  | orbitEquivalence
  | spectralRigidity
  | selfOrbitEquivalenceCriterion
  | contactAnosovTransferNotImported
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .rCoveredAnosovFlow => "r_covered_anosov_flow"
  | .hyperbolicLikeActionOnLine => "hyperbolic_like_action_on_line"
  | .fundamentalGroupPeriodicOrbitElements =>
      "fundamental_group_periodic_orbit_elements"
  | .orbitEquivalence => "orbit_equivalence"
  | .spectralRigidity => "spectral_rigidity"
  | .selfOrbitEquivalenceCriterion => "self_orbit_equivalence_criterion"
  | .contactAnosovTransferNotImported => "contact_anosov_transfer_not_imported"

def Atom.kind : Atom -> FWR.ResidueKind
  | .rCoveredAnosovFlow => FWR.ResidueKind.missingDefinition
  | .hyperbolicLikeActionOnLine => FWR.ResidueKind.missingDefinition
  | .fundamentalGroupPeriodicOrbitElements => FWR.ResidueKind.missingDefinition
  | .orbitEquivalence => FWR.ResidueKind.externalTheoremNotImported
  | .spectralRigidity => FWR.ResidueKind.externalTheoremNotImported
  | .selfOrbitEquivalenceCriterion => FWR.ResidueKind.externalTheoremNotImported
  | .contactAnosovTransferNotImported => FWR.ResidueKind.externalTheoremNotImported

def Atom.blocks : Atom -> String
  | .rCoveredAnosovFlow =>
      "R-covered Anosov flow object and orbit-space hypotheses"
  | .hyperbolicLikeActionOnLine =>
      "minimal hyperbolic-like action of a nonabelian group on the real line"
  | .fundamentalGroupPeriodicOrbitElements =>
      "fundamental-group elements represented by periodic orbits"
  | .orbitEquivalence =>
      "orbit equivalence classification for R-covered Anosov flows"
  | .spectralRigidity =>
      "rigidity from fixed-point or periodic-orbit spectral data"
  | .selfOrbitEquivalenceCriterion =>
      "criterion for self orbit equivalences via mapping-class data"
  | .contactAnosovTransferNotImported =>
      "transfer between contact Anosov flows and contact-structure statements"

def Atom.clearsBy : Atom -> String
  | .rCoveredAnosovFlow =>
      "source-compatible Lean structure for R-covered Anosov flows"
  | .hyperbolicLikeActionOnLine =>
      "formal minimal hyperbolic-like action on a line"
  | .fundamentalGroupPeriodicOrbitElements =>
      "periodic-orbit element set for the fundamental group"
  | .orbitEquivalence =>
      "kernel-checked orbit-equivalence theorem with all hypotheses exposed"
  | .spectralRigidity =>
      "formal rigidity theorem for fixed-point or periodic-orbit data"
  | .selfOrbitEquivalenceCriterion =>
      "checked self-orbit-equivalence criterion and mapping-class interface"
  | .contactAnosovTransferNotImported =>
      "scoped certified import or local proof artifact for contact-Anosov transfer"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := "2012.11811v4:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  (∀ G : ctx.Group,
      ∀ line : ctx.Line,
        ∀ action1 action2 : ctx.LineAction,
          ctx.IsNonabelianGroup G ->
            ctx.IsMinimalHyperbolicLikeAction G line action1 ->
              ctx.IsMinimalHyperbolicLikeAction G line action2 ->
                ctx.FixedPointElements action1 = ctx.FixedPointElements action2 ->
                  ctx.ConjugateActions action1 action2) ∧
  (∀ M : ctx.Closed3Manifold,
      ∀ phi psi : ctx.Flow,
        ctx.IsClosed3Manifold M ->
          ctx.IsRCoveredAnosovFlow M phi ->
            ctx.IsRCoveredAnosovFlow M psi ->
              ctx.PeriodicOrbitElements M phi = ctx.PeriodicOrbitElements M psi ->
                ctx.OrbitEquivalent M phi psi) ∧
  (∀ M : ctx.Closed3Manifold,
      ∀ phi : ctx.Flow,
        ctx.IsRCoveredAnosovFlow M phi ->
          ctx.SpectrallyRigid M phi ∧
          ctx.SelfOrbitEquivalenceCriterion M phi) ∧
  ctx.ContactAnosovTransfer

def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.rCoveredAnosovFlow
  , atomResidue Atom.hyperbolicLikeActionOnLine
  , atomResidue Atom.fundamentalGroupPeriodicOrbitElements
  , atomResidue Atom.orbitEquivalence
  , atomResidue Atom.spectralRigidity
  , atomResidue Atom.selfOrbitEquivalenceCriterion
  , atomResidue Atom.contactAnosovTransferNotImported
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
  { targetId := "2012.11811v4:Theorem:1.1"
    paperId := "2012.11811v4"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/RCoveredAnosovOrbitEquiv.lean"
    suggestedLeanName := "RCoveredAnosovOrbitEquiv.theorem_1_1" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.RCoveredAnosovOrbitEquiv
```

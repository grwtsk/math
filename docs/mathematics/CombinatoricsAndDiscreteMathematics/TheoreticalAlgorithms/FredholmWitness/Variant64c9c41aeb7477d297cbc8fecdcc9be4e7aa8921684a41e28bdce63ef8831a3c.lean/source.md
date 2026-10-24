# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FredholmWitness.Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15ed073b8f8459a0f93aba4bd1cbdb7fcc1518b9` · SHA-256 `62bd61b07158dd978161934cba17f0e76b976a36fdd05797e23417c02301c155`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixWitness.Variantc86fb12400f302a33294975de62cfa720be4f9b5f65fb974027992def2029f0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c86fb12400f302a33294975de62cfa720be4f9b5f65fb974027992def2029f0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MatrixWitness.Variantc86fb12400f302a33294975de62cfa720be4f9b5f65fb974027992def2029f0b","mathematical_subject":"Computation.DataStructures","original_sha256":"c86fb12400f302a33294975de62cfa720be4f9b5f65fb974027992def2029f0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Manuscript/FredholmWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kernel.Checked


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixWitness.Variantc86fb12400f302a33294975de62cfa720be4f9b5f65fb974027992def2029f0b

set_option autoImplicit false

namespace FWR.Manuscript.FredholmWitness

/-
This module records the manuscript's finite-rank Fredholm-style witness. It is
a determinant-style redundancy check on a finite bridge matrix, not an
infinite-dimensional analytic theorem.
-/

structure MatrixWitness where
  Matrix : Type
  M : Matrix
  K : Matrix
  fredholmPolynomialAtOneNonzero : Prop

def finiteDeterminantRedundancyClaim (W : MatrixWitness) : Prop :=
  W.fredholmPolynomialAtOneNonzero

def finiteDeterminantRedundancyWitness (W : MatrixWitness)
    (h : W.fredholmPolynomialAtOneNonzero) :
    Checked (finiteDeterminantRedundancyClaim W) :=
  Checked.proved h

theorem finiteDeterminantRedundancyWitness_isProved (W : MatrixWitness)
    (h : W.fredholmPolynomialAtOneNonzero) :
    (finiteDeterminantRedundancyWitness W h).isProved = true := by
  rfl

structure AnalyticOverclaimContext where
  InfiniteFredholmConclusion : Prop
  ReplacesExplicitBridgeMaps : Prop

def analyticOverclaim (ctx : AnalyticOverclaimContext) : Prop :=
  ctx.InfiniteFredholmConclusion ∧ ctx.ReplacesExplicitBridgeMaps

inductive OverclaimAtom where
  | infiniteAnalyticAuthority
  | replacesExplicitMaps
deriving DecidableEq, Repr

def overclaimAtomResidue : OverclaimAtom -> Residue
  | .infiniteAnalyticAuthority =>
      { target := Target.FredholmWitness
        atomId := "fredholm.infiniteAnalyticAuthority"
        kind := ResidueKind.authorityOverclaim
        blocks := "promotion of a finite determinant check to infinite analytic authority"
        clearsBy := "a separate analytic theorem artifact, not a finite matrix check" }
  | .replacesExplicitMaps =>
      { target := Target.FredholmWitness
        atomId := "fredholm.replacesExplicitMaps"
        kind := ResidueKind.replacementOverclaim
        blocks := "replacement of explicit quotient bridge maps by determinant data alone"
        clearsBy := "a proof that the matrix witness is equivalent to the explicit bridge data" }

def overclaimAtoms : List OverclaimAtom := [
  OverclaimAtom.infiniteAnalyticAuthority,
  OverclaimAtom.replacesExplicitMaps
]

def analyticOverclaimResidues : List Residue :=
  overclaimAtoms.map overclaimAtomResidue

def analyticOverclaimWitness (ctx : AnalyticOverclaimContext) :
    Checked (analyticOverclaim ctx) :=
  Checked.residue analyticOverclaimResidues

theorem analyticOverclaimWitness_hasResidue
    (ctx : AnalyticOverclaimContext) :
    (analyticOverclaimWitness ctx).hasResidue = true := by
  rfl

theorem analyticOverclaimResidue_count :
    analyticOverclaimResidues.length = 2 := by
  rfl

theorem analyticOverclaimResidues_targets_correct :
    ∀ r ∈ analyticOverclaimResidues,
      r.target = Target.FredholmWitness := by
  intro r hr
  rw [analyticOverclaimResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  cases a <;> rfl

theorem overclaimAtoms_nodup :
    overclaimAtoms.Nodup := by
  decide

namespace LevelOne

inductive Channel where
  | north
  | east
  | south
  | west
deriving DecidableEq, Repr

def channels : List Channel := [
  Channel.north,
  Channel.east,
  Channel.south,
  Channel.west
]

def pointCount : Nat :=
  16

def rotate : Channel -> Channel
  | .north => .east
  | .east => .south
  | .south => .west
  | .west => .north

def actionPower : Nat -> Channel -> Channel
  | 0, c => c
  | n + 1, c => actionPower n (rotate c)

def spectralCoverCondition (c : Channel) : Prop :=
  c ∈ channels

theorem x1_has_sixteen_points :
    pointCount = 16 := by
  rfl

theorem channels_count :
    channels.length = 4 := by
  rfl

theorem rotate_four_identity (c : Channel) :
    actionPower 4 c = c := by
  cases c <;> rfl

theorem every_channel_has_level_one_spectral_cover :
    ∀ c ∈ channels, spectralCoverCondition c := by
  intro c h
  exact h

def finiteSpectralWitnessResidue : Residue :=
  { target := Target.FredholmWitness
    atomId := "src-lib.spectral.level-one.finite-witness-only"
    kind := ResidueKind.authorityOverclaim
    blocks := "promotion of a finite level-one spectral cover to analytic spectral authority"
    clearsBy := "a separate analytic theorem connecting the finite cover to the claimed operator statement" }

def finiteSpectralWitnessClaim : Prop :=
  pointCount = 16 ∧ channels.length = 4

def finiteSpectralWitness :
    Checked finiteSpectralWitnessClaim :=
  Checked.proved ⟨x1_has_sixteen_points, channels_count⟩

theorem finiteSpectralWitness_isProved :
    finiteSpectralWitness.isProved = true := by
  rfl

def spectralAuthorityOverclaimWitness (claim : Prop) :
    Checked claim :=
  Checked.residue [finiteSpectralWitnessResidue]

theorem spectralAuthorityOverclaimWitness_hasResidue (claim : Prop) :
    (spectralAuthorityOverclaimWitness claim).hasResidue = true := by
  rfl

end LevelOne

end FWR.Manuscript.FredholmWitness
```

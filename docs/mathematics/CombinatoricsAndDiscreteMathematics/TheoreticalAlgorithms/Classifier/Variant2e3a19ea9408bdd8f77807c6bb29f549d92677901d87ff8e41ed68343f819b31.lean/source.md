# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Classifier.Variant2e3a19ea9408bdd8f77807c6bb29f549d92677901d87ff8e41ed68343f819b31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc0bb058d83e7bb8c9b2e1449f176a892d87d6b2` · SHA-256 `7b33015081a24c6be987ab3357947f7557e1e698a92006eca2c31aedad20d7a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WindowClass.Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WindowClass.Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047","mathematical_subject":"Computation.DataStructures","original_sha256":"fd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Manuscript/Classifier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kernel.Checked


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WindowClass.Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047

set_option autoImplicit false

namespace FWR.Manuscript.Classifier

/-
This module formalizes the Zhang, Polymath8, Maynard, and parity-barrier motifs
as finite classifier fields. It does not prove or improve any prime-gap theorem.
-/

universe u

inductive WindowClass where
  | admissibleDenseLowResidue
  | admissibleSparse
  | obstructed
  | distributionBad
  | highOverload
  | parityBarrier
  | insufficientData
  | refusedOverclaim
deriving DecidableEq, Repr

structure Context where
  Window : Type u
  Score : Type u
  admissibility : Window -> Score
  distribution : Window -> Score
  maynardWeight : Window -> Score
  denseCluster : Window -> Score
  paritySeverity : Window -> Score
  unresolvedResidue : Window -> Score
  classScore : Window -> Score
  classify : Window -> WindowClass
  HasZhangClassifier : Prop
  HasPolymath8aDistribution : Prop
  HasMaynardWeightScore : Prop
  HasPolymath8bParityModule : Prop
  HasFiniteWindowInventory : Prop
  DoesNotClaimPrimeGapTheorem : Prop

def deterministicClassifierClaim (ctx : Context) : Prop :=
  ∀ I : ctx.Window, ctx.classify I = ctx.classify I

def deterministicClassifierWitness (ctx : Context) :
    Checked (deterministicClassifierClaim ctx) :=
  Checked.proved (by intro I; rfl)

theorem deterministicClassifierWitness_isProved (ctx : Context) :
    (deterministicClassifierWitness ctx).isProved = true := by
  rfl

inductive Atom where
  | finiteWindowInventory
  | zhangAdmissibilityClassifier
  | polymath8aDistributionCertificate
  | maynardWeightScore
  | denseClusterEvidence
  | parityBarrierFlag
  | unresolvedResidueMass
  | finiteClassScore
  | refusedPrimeGapOverclaim
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .finiteWindowInventory => "finiteWindowInventory"
  | .zhangAdmissibilityClassifier => "zhangAdmissibilityClassifier"
  | .polymath8aDistributionCertificate => "polymath8aDistributionCertificate"
  | .maynardWeightScore => "maynardWeightScore"
  | .denseClusterEvidence => "denseClusterEvidence"
  | .parityBarrierFlag => "parityBarrierFlag"
  | .unresolvedResidueMass => "unresolvedResidueMass"
  | .finiteClassScore => "finiteClassScore"
  | .refusedPrimeGapOverclaim => "refusedPrimeGapOverclaim"

def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteWindowInventory => ctx.HasFiniteWindowInventory
  | .zhangAdmissibilityClassifier => ctx.HasZhangClassifier
  | .polymath8aDistributionCertificate => ctx.HasPolymath8aDistribution
  | .maynardWeightScore => ctx.HasMaynardWeightScore
  | .denseClusterEvidence => ctx.HasPolymath8bParityModule
  | .parityBarrierFlag => ctx.HasPolymath8bParityModule
  | .unresolvedResidueMass => ctx.DoesNotClaimPrimeGapTheorem
  | .finiteClassScore => deterministicClassifierClaim ctx
  | .refusedPrimeGapOverclaim => ctx.DoesNotClaimPrimeGapTheorem

def atomResidue (a : Atom) : Residue :=
  { target := Target.SieveClassifier
    atomId := Atom.id a
    kind :=
      match a with
      | .finiteWindowInventory => ResidueKind.missingFiniteWitness
      | .zhangAdmissibilityClassifier => ResidueKind.missingSieveEstimate
      | .polymath8aDistributionCertificate => ResidueKind.missingDistributionEstimate
      | .maynardWeightScore => ResidueKind.missingSieveEstimate
      | .denseClusterEvidence => ResidueKind.missingSieveEstimate
      | .parityBarrierFlag => ResidueKind.missingParityBarrierResolution
      | .unresolvedResidueMass => ResidueKind.conjecturalAtom
      | .finiteClassScore => ResidueKind.missingFiniteWitness
      | .refusedPrimeGapOverclaim => ResidueKind.authorityOverclaim
    blocks := "use of finite classifier data as a prime-gap theorem"
    clearsBy := "a separate prime-gap theorem proof, not the finite classifier" }

def allAtoms : List Atom := [
  Atom.finiteWindowInventory,
  Atom.zhangAdmissibilityClassifier,
  Atom.polymath8aDistributionCertificate,
  Atom.maynardWeightScore,
  Atom.denseClusterEvidence,
  Atom.parityBarrierFlag,
  Atom.unresolvedResidueMass,
  Atom.finiteClassScore,
  Atom.refusedPrimeGapOverclaim
]

def classifierResidues : List Residue :=
  allAtoms.map atomResidue

def primeGapOverclaim (ctx : Context) : Prop :=
  ctx.DoesNotClaimPrimeGapTheorem

def primeGapOverclaimWitness (ctx : Context) :
    Checked (primeGapOverclaim ctx) :=
  Checked.residue classifierResidues

theorem primeGapOverclaimWitness_hasResidue (ctx : Context) :
    (primeGapOverclaimWitness ctx).hasResidue = true := by
  rfl

theorem classifierResidue_count :
    classifierResidues.length = 9 := by
  rfl

theorem classifierResidues_targets_correct :
    ∀ r ∈ classifierResidues, r.target = Target.SieveClassifier := by
  intro r hr
  rw [classifierResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  rfl

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

end FWR.Manuscript.Classifier
```

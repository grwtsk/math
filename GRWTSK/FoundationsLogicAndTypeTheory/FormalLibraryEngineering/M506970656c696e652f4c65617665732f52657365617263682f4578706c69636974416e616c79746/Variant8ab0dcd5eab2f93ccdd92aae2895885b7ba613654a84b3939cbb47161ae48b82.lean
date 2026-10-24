
/- source-tree-label: STL1|L|addr=0101001100|role=proof_code_atom|slug=pipeline-leaves-research-explicitanalyticnumbertheory|owner=canonical_owner|core=Pipeline/Leaves/Research/ExplicitAnalyticNumberTheory.lean|leaf=M506970656c696e652f4c65617665732f52657365617263682f4578706c69636974416e616c797469634e756d6265725468656f72792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.Research

def acceptedBoundaryStatus : String := "PipelineToposBoundary"

def forbiddenToposClaim : String := "PipelineTopos := Sh(PipelineSite, J_pipeline)"

def standingResidue : String := "pipeline_topos_not_constructed"

structure ResearchIngressPacket where
  sourceTitle : String
  sourceUrl : String
  sourceDigestPresent : Bool
  acceptedStatus : String
  forbiddenUnlessConstructed : String
  standingResidueId : String
  deriving Repr, DecidableEq

def explicitAnalyticNumberTheoryIngress : ResearchIngressPacket := {
  sourceTitle := "Integrated Explicit Analytic Number Theory network"
  sourceUrl := "https://www.ipam.ucla.edu/news-research/special-projects/integrated-explicit-analytic-number-theory-network/"
  sourceDigestPresent := true
  acceptedStatus := acceptedBoundaryStatus
  forbiddenUnlessConstructed := forbiddenToposClaim
  standingResidueId := standingResidue
}

theorem explicit_ant_ingress_is_boundary :
    explicitAnalyticNumberTheoryIngress.acceptedStatus = "PipelineToposBoundary" := by
  rfl

theorem explicit_ant_topos_claim_remains_residue :
    explicitAnalyticNumberTheoryIngress.standingResidueId = "pipeline_topos_not_constructed" := by
  rfl

end Think.Pipeline.Leaves.Research

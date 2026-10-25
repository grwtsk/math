# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c65617665732f52657365617263682f436f6e6e656374696e675468656f7.Variantdc02a08a200ff39280a37705fbc5d0e31f6aade27abd7123108d2f2308b09d78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08a61b671b8ef63a31e553c2130d242c4773e415` · SHA-256 `dc02a08a200ff39280a37705fbc5d0e31f6aade27abd7123108d2f2308b09d78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f4c65617665732f52657365617263682f4578706c69636974416e616c797469634e756d6265725468656f72792e6c65616e


/- source-tree-label: STL1|L|addr=010111111|role=proof_code_atom|slug=pipeline-leaves-research-connectingtheoremcandidate|owner=canonical_owner|core=Pipeline/Leaves/Research/ConnectingTheoremCandidate.lean|leaf=M506970656c696e652f4c65617665732f52657365617263682f436f6e6e656374696e675468656f72656d43616e6469646174652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.Research

structure QueryObstructionPacket where
  obstructionId : String
  queryTermsPresent : Bool
  residueFallback : String
  deriving Repr, DecidableEq

structure ConnectingTheoremCandidate where
  candidateId : String
  obstructionId : String
  statementSketchPresent : Bool
  residueFallback : String
  proofAuthority : String
  deriving Repr, DecidableEq

def explicitAntQueryObstruction : QueryObstructionPacket := {
  obstructionId := "query_obstruction_explicit_ant_bridge_v1"
  queryTermsPresent := true
  residueFallback := "research_context_without_checked_connecting_theorem"
}

def explicitAntConnectingCandidate : ConnectingTheoremCandidate := {
  candidateId := "connecting_candidate_explicit_ant_bridge_v1"
  obstructionId := explicitAntQueryObstruction.obstructionId
  statementSketchPresent := true
  residueFallback := "connecting_theorem_candidate_requires_checked_formalization_or_documented_boundary"
  proofAuthority := "sketch_only_not_proof"
}

theorem explicit_ant_candidate_has_statement_sketch :
    explicitAntConnectingCandidate.statementSketchPresent = true := by
  rfl

theorem explicit_ant_candidate_has_residue_fallback :
    explicitAntConnectingCandidate.residueFallback =
      "connecting_theorem_candidate_requires_checked_formalization_or_documented_boundary" := by
  rfl

theorem explicit_ant_candidate_not_proof_authority :
    explicitAntConnectingCandidate.proofAuthority = "sketch_only_not_proof" := by
  rfl

end Think.Pipeline.Leaves.Research
```

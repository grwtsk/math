# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Proposal.Variantf63f1bf5cf800f59c29e6251ce13c72f0801edd3fc83b57cabf95333ff684de8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c859f25a5214b433afab3f5f90b1c45ffcf1d92c` · SHA-256 `a1e88b0639186621da68474bfef77d3ce1a6a7b7956594ed99975f2f6b87c3f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AtomNameIR.Variante9f3315af9d47743cfb1b875437005ecf4bcabcbf2c719089683168fee6b3e72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9f3315af9d47743cfb1b875437005ecf4bcabcbf2c719089683168fee6b3e72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AtomNameIR.Variante9f3315af9d47743cfb1b875437005ecf4bcabcbf2c719089683168fee6b3e72","mathematical_subject":"Computation.DataStructures","original_sha256":"e9f3315af9d47743cfb1b875437005ecf4bcabcbf2c719089683168fee6b3e72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-04463a67b33c2e29/MathDiscovery/Oracle/Naming/Proposal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Oracle.Naming.Cohomology

/-! # Typed Oracle and model naming proposals -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AtomNameIR.Variante9f3315af9d47743cfb1b875437005ecf4bcabcbf2c719089683168fee6b3e72

namespace MathDiscovery.Oracle.Naming

open MathDiscovery

structure AtomNameIR where
  schema : String
  atomId : SourceAtomId
  name : AtomName
  action : String
  domain : Array String
  supportIds : Array String
  nonclaims : Array String
  irDigest : Digest
  deriving DecidableEq, Repr

structure OracleCandidate where
  candidateId : String
  value : AtomNameIR
  supportStrengths : Array (String × Rat)
  negativeEvidence : Array String
  collisionFree : Bool
  scoreTuple : Array String
  authority : NamingAuthority := .deterministicOracle
  deriving Repr

structure ModelProposal where
  selectedCandidateId : String
  value : AtomNameIR
  modelDigest : Digest
  tokenizerDigest : Digest
  templateDigest : Digest
  authority : NamingAuthority := .modelProposed
  deriving Repr

def ProposalAgreement (oracle : OracleCandidate) (model : ModelProposal) : Prop :=
  model.selectedCandidateId = oracle.candidateId ∧ model.value = oracle.value

end MathDiscovery.Oracle.Naming
```

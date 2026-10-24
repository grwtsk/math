# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Resolver.Variantf7714f6b4ffd3e2a4cc05473ce5c5f318a2ce3a4457f9882899d6b55f7604812

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b461f8a8c792ab647243d538e627a3a6d6d2b365` · SHA-256 `5714b380bf2d41e029cb23ba571e290d5a033e840425e38099ea8e14af98b96f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GraphAccessResolution.Variant51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GraphAccessResolution.Variant51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1","mathematical_subject":"Computation.DataStructures","original_sha256":"51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Resolver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Core.Request
import Mathematics.GraphAccess.Core.Receipt

/-!
# Total conservative access resolution over typed finite evidence

Totality means a typed outcome for every typed resolver evidence value.  It
does not decide graph finiteness, reachability, completion semantics, or any
other open project fact.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GraphAccessResolution.Variant51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1

namespace Mathematics.GraphAccess

inductive GraphAccessResolution
    (Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u)
  | path (value : Path)
  | frontier (value : Frontier)
  | coverage (value : Coverage)
  | sample (value : Sample)
  | proposal (value : Proposal)
  | obstruction (value : Obstruction)
  | unknown (kinds : List GraphAccessUnknownKind)
  | rejected (reason : Rejection)

inductive GraphAccessEvidence
    (Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u)
  | path (value : Path)
  | frontier (value : Frontier)
  | coverage (value : Coverage)
  | sample (value : Sample)
  | proposal (value : Proposal)
  | obstruction (value : Obstruction)
  | unknown (kinds : List GraphAccessUnknownKind)
  | rejected (reason : Rejection)

def resolveAccess
    {Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u} :
    GraphAccessEvidence
      Path Frontier Coverage Sample Proposal Obstruction Rejection →
    GraphAccessResolution
      Path Frontier Coverage Sample Proposal Obstruction Rejection
  | .path value => .path value
  | .frontier value => .frontier value
  | .coverage value => .coverage value
  | .sample value => .sample value
  | .proposal value => .proposal value
  | .obstruction value => .obstruction value
  | .unknown kinds => .unknown kinds
  | .rejected reason => .rejected reason

theorem access_resolver_total
    {Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u}
    (evidence :
      GraphAccessEvidence
        Path Frontier Coverage Sample Proposal Obstruction Rejection) :
    ∃ result, resolveAccess evidence = result :=
  ⟨resolveAccess evidence, rfl⟩

end Mathematics.GraphAccess
```

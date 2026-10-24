# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Budget.Variant0934001ec95f1cca2c43a16cb61360679801487455f1ac7eaca28e4a0b34719f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6864a14eaaf973264eb09c4ea0412a94f73cb000` · SHA-256 `c1a4f647717362ce71c56aa3e2718344398c1aa41a51ae3b172c14b3df9c9984`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GraphAccessBudget.Variant5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GraphAccessBudget.Variant5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f","mathematical_subject":"Computation.DataStructures","original_sha256":"5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Core/Budget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Bounded graph-access execution

Exhaustion returns an explicit residual frontier.  It is not identified with
target unreachability.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GraphAccessBudget.Variant5c1f75f5e32b640378a842d2413d97c981762591b589fadc56ad72676437576f

namespace Mathematics.GraphAccess

structure GraphAccessBudget where
  maximumVisitedNodes : Nat
  maximumFrontierSize : Nat
  maximumPathLength : Nat
  maximumWorkSteps : Nat
  maximumPersistedState : Nat
  maximumVerifierSubmissions : Nat
  maximumProposalCount : Nat
deriving DecidableEq, Repr

structure ResidualFrontier (Node : Type u) where
  nodes : List Node
  consumedWorkSteps : Nat
  remainingWorkSteps : Nat
deriving Repr

inductive BudgetedResult (Node Result : Type u)
  | completed (result : Result)
  | residual (frontier : ResidualFrontier Node)

theorem resource_exhaustion_preserves_residual
    {Node Result : Type u}
    (frontier : ResidualFrontier Node) :
    BudgetedResult.residual (Result := Result) frontier =
      .residual frontier :=
  rfl

end Mathematics.GraphAccess
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterDetails.Variant0f7915f6e611ae279820190f6b7d8465cd511706082845d33c629c9cf642c995

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8e5881be4f4dd135324cd932152176f59a03cd8` · SHA-256 `fc7eddbcf8d04b4a92db08854ee553faef14f861191757fb434fe956af5a07f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterDetailsProps.Variant5fc78b97580ac732d68416bcb7c11709d0eb30ca26bf6493b5fb1d43c9e7474f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fc78b97580ac732d68416bcb7c11709d0eb30ca26bf6493b5fb1d43c9e7474f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FilterDetailsProps.Variant5fc78b97580ac732d68416bcb7c11709d0eb30ca26bf6493b5fb1d43c9e7474f","mathematical_subject":"Foundations.Unclassified","original_sha256":"5fc78b97580ac732d68416bcb7c11709d0eb30ca26bf6493b5fb1d43c9e7474f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/FilterDetails.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Data.Html


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterDetailsProps.Variant5fc78b97580ac732d68416bcb7c11709d0eb30ca26bf6493b5fb1d43c9e7474f

public meta section

namespace ProofWidgets
open Lean

/-- Props for the `FilterDetails` component. -/
structure FilterDetailsProps where
  /-- Contents of the `<summary>`. -/
  summary : Html
  /-- What is shown in the filtered state. -/
  filtered : Html
  /-- What is shown in the non-filtered state. -/
  all : Html
  /-- Whether to start in the filtered state. -/
  initiallyFiltered : Bool := true
  deriving Server.RpcEncodable

/-- The `FilterDetails` component is like a `<details>` HTML element,
but also has a filter button
that allows you to switch between filtered and unfiltered states. -/
@[widget_module]
def FilterDetails : Component FilterDetailsProps where
  javascript := include_str ".." /  ".." / "widget" / "js" / "filterDetails.js"

end ProofWidgets
```

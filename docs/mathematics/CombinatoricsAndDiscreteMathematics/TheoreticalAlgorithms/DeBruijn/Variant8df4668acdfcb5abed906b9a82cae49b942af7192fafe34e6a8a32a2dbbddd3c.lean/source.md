# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeBruijn.Variant8df4668acdfcb5abed906b9a82cae49b942af7192fafe34e6a8a32a2dbbddd3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7de78b722f9ded0bb6028ab748ee32bf404af170` · SHA-256 `01e492056d3df55e9a0c66cd32dadaf9dd423c590a7da46acb158f10db17d71a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeBruijnCoverageCertificate.Variant37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeBruijnCoverageCertificate.Variant37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c","mathematical_subject":"Computation.DataStructures","original_sha256":"37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exploration/DeBruijn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite action-window coverage
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeBruijnCoverageCertificate.Variant37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c

namespace Mathematics.GraphAccess

structure DeBruijnCoverageCertificate (Window : Type u) where
  alphabetRef : String
  order : Nat
  declaredWindows : List Window
  coveredWindows : List Window
  alphabetComplete : Prop
  alphabetCompleteEvidence : alphabetComplete
  covers :
    ∀ window, window ∈ declaredWindows → window ∈ coveredWindows

theorem debruijn_covers_every_action_window
    {Window : Type u}
    (certificate : DeBruijnCoverageCertificate Window)
    (window : Window)
    (declared : window ∈ certificate.declaredWindows) :
    window ∈ certificate.coveredWindows :=
  certificate.covers window declared

end Mathematics.GraphAccess
```

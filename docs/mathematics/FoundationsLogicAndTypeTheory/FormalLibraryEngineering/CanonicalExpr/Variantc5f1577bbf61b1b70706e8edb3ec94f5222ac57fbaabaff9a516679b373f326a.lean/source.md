# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalExpr.Variantc5f1577bbf61b1b70706e8edb3ec94f5222ac57fbaabaff9a516679b373f326a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50a73c517ff56379754641d3a252cb90534a9e4a` · SHA-256 `642b91704ea5fd7f3d203cf7c368d49f5a7e02e6e68c542dc1362129ff99db5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalExpr.Variantfe987dd16a1310a6abac643d3c5d903cfe9dc551ed16f5fc8beb38d17c757658","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe987dd16a1310a6abac643d3c5d903cfe9dc551ed16f5fc8beb38d17c757658","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CanonicalExpr.Variantfe987dd16a1310a6abac643d3c5d903cfe9dc551ed16f5fc8beb38d17c757658","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fe987dd16a1310a6abac643d3c5d903cfe9dc551ed16f5fc8beb38d17c757658","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Export/CanonicalExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalExpr.Variantfe987dd16a1310a6abac643d3c5d903cfe9dc551ed16f5fc8beb38d17c757658

namespace Noeoueue.Export

partial def canonicalExpr : Lean.Expr -> String
  | .bvar i => "b:" ++ toString i
  | .fvar id => "f:" ++ toString id.name
  | .mvar id => "m:" ++ toString id.name
  | .sort u => "sort:" ++ toString u
  | .const n us => "const:" ++ n.toString ++ ":" ++ String.intercalate "," (us.map toString)
  | .app f a => "app(" ++ canonicalExpr f ++ "," ++ canonicalExpr a ++ ")"
  | .lam _ t b _ => "lam(" ++ canonicalExpr t ++ "," ++ canonicalExpr b ++ ")"
  | .forallE _ t b _ => "forall(" ++ canonicalExpr t ++ "," ++ canonicalExpr b ++ ")"
  | .letE _ t v b _ => "let(" ++ canonicalExpr t ++ "," ++ canonicalExpr v ++ "," ++ canonicalExpr b ++ ")"
  | .lit (.natVal n) => "nat:" ++ toString n
  | .lit (.strVal s) => "str:" ++ s
  | .mdata _ e => canonicalExpr e
  | .proj n i e => "proj:" ++ n.toString ++ ":" ++ toString i ++ "(" ++ canonicalExpr e ++ ")"

end Noeoueue.Export
```

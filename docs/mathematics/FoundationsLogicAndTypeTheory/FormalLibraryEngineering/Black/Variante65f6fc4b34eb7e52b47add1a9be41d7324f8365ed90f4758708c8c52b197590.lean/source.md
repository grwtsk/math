# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Black.Variante65f6fc4b34eb7e52b47add1a9be41d7324f8365ed90f4758708c8c52b197590

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db7710a0fd6a411eb1a6c906b14d2436da8cdb39` · SHA-256 `b5079d160b63aca2f0d524892afdeca1b77e6e0d94e813c01d4461f28c33adf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Band.Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","mathematical_subject":"Foundations.Unclassified","original_sha256":"acc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Black.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Admissibility


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b

namespace Color

namespace Black

def band : Band :=
  { name := "black",
    namespaceName := "Color.Black",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 0,
    centroid := blackCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.black

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Black" := rfl

end Black

end Color
```

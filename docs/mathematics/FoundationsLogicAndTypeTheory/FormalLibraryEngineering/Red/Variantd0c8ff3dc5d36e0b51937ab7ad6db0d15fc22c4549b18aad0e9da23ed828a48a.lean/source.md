# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Red.Variantd0c8ff3dc5d36e0b51937ab7ad6db0d15fc22c4549b18aad0e9da23ed828a48a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d843103978315c18db5fcc838dfc015bfe93e57a` · SHA-256 `bc85bd1aa42a6d1cd30f68e5d92e06ae9937df3c0b8a882a50e7cf6755e89c72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantdf20cadc22a5af668ee02577f9495960d06c27a2f876839c09f331c91ff2888d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df20cadc22a5af668ee02577f9495960d06c27a2f876839c09f331c91ff2888d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Band.Variantdf20cadc22a5af668ee02577f9495960d06c27a2f876839c09f331c91ff2888d","mathematical_subject":"Foundations.Unclassified","original_sha256":"df20cadc22a5af668ee02577f9495960d06c27a2f876839c09f331c91ff2888d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Red.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Admissibility


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantdf20cadc22a5af668ee02577f9495960d06c27a2f876839c09f331c91ff2888d

namespace Color

namespace Red

def band : Band :=
  { name := "red",
    namespaceName := "Color.Red",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := redCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.red

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Red" := rfl

end Red

end Color
```

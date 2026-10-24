# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mix.Variant673e3f27ceb998dfc8dca3b189e76d485ecc26a61faf5767d492a7d0dd8fb91d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `028178e271f9f36e341c1cb6cbe42fd15f0c9c39` · SHA-256 `635097ad3342934b6cc427ca56bad57549313defda99859f96f100088f2834d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalPair.Variant50bda835b9aa366574c4fcb99249b66f806e8e7d48ef2621fd11537427b49ff9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50bda835b9aa366574c4fcb99249b66f806e8e7d48ef2621fd11537427b49ff9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanonicalPair.Variant50bda835b9aa366574c4fcb99249b66f806e8e7d48ef2621fd11537427b49ff9","mathematical_subject":"Computation.DataStructures","original_sha256":"50bda835b9aa366574c4fcb99249b66f806e8e7d48ef2621fd11537427b49ff9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Mix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Admissibility


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalPair.Variant50bda835b9aa366574c4fcb99249b66f806e8e7d48ef2621fd11537427b49ff9

namespace Color

namespace Mix

def canonicalPair (a b : String) : List String := symmetricMixColorSet a b

namespace RedGreen

def colorSet : List String := canonicalPair "red" "green"

def symmetric : Bool := true

def band : Band :=
  { name := "red-green",
    namespaceName := "Color.Mix.RedGreen",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := { bitDepth := 8,
                  aperture := 255,
                  rgb := { red := 255, green := 255, blue := 0 },
                  hex := "#FFFF00" } }

def accepts : ColorAtom → Prop
  | ColorAtom.mix colors => colors = colorSet
  | _ => False

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric }

theorem red_green_collapses : canonicalPair "red" "green" = colorSet := rfl

theorem green_red_collapses : canonicalPair "green" "red" = colorSet := rfl

theorem namespace_eq : band.namespaceName = "Color.Mix.RedGreen" := rfl

end RedGreen

namespace RedBlue

def colorSet : List String := canonicalPair "red" "blue"

def symmetric : Bool := true

def band : Band :=
  { name := "red-blue",
    namespaceName := "Color.Mix.RedBlue",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := { bitDepth := 8,
                  aperture := 255,
                  rgb := { red := 255, green := 0, blue := 255 },
                  hex := "#FF00FF" } }

def accepts : ColorAtom → Prop
  | ColorAtom.mix colors => colors = colorSet
  | _ => False

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric }

theorem red_blue_collapses : canonicalPair "red" "blue" = colorSet := rfl

theorem blue_red_collapses : canonicalPair "blue" "red" = colorSet := rfl

theorem namespace_eq : band.namespaceName = "Color.Mix.RedBlue" := rfl

end RedBlue

namespace GreenBlue

def colorSet : List String := canonicalPair "green" "blue"

def symmetric : Bool := true

def band : Band :=
  { name := "green-blue",
    namespaceName := "Color.Mix.GreenBlue",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := { bitDepth := 8,
                  aperture := 255,
                  rgb := { red := 0, green := 255, blue := 255 },
                  hex := "#00FFFF" } }

def accepts : ColorAtom → Prop
  | ColorAtom.mix colors => colors = colorSet
  | _ => False

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric }

theorem green_blue_collapses : canonicalPair "green" "blue" = colorSet := rfl

theorem blue_green_collapses : canonicalPair "blue" "green" = colorSet := rfl

theorem namespace_eq : band.namespaceName = "Color.Mix.GreenBlue" := rfl

end GreenBlue

end Mix

end Color
```

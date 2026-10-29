-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Band.Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Band.Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47","mathematical_subject":"Computation.DataStructures","original_sha256":"c2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Admissibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Centroid


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Band.Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47

namespace Color

structure Band where
  name : String
  namespaceName : String
  bitDepth : Nat
  rangeMin : Byte
  rangeMax : Byte
  centroid : Centroid
deriving Repr, DecidableEq

inductive ColorAtom where
  | black
  | white
  | red
  | green
  | blue
  | neutral
  | mix : List String → ColorAtom
  | unresolved
deriving Repr, DecidableEq

structure Admissibility where
  band : Band
  accepts : ColorAtom → Prop
  rejects : ColorAtom → Prop
  symmetric : Bool

def acceptsOnly (target : ColorAtom) : ColorAtom → Prop
  | atom => atom = target

def rejectsUnresolved : ColorAtom → Prop
  | ColorAtom.unresolved => True
  | _ => False

def symmetricMixColorSet (a b : String) : List String :=
  if a <= b then [a, b] else [b, a]

theorem symmetricMixColorSet_red_green :
    symmetricMixColorSet "red" "green" = ["green", "red"] := rfl

theorem symmetricMixColorSet_green_red :
    symmetricMixColorSet "green" "red" = ["green", "red"] := rfl

end Color

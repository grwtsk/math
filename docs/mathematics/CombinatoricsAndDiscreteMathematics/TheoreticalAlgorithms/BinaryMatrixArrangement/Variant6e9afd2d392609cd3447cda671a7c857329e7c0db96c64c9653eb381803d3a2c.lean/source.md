# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixArrangement.Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c363862738f009cb38cfaa4571de3b7cf8e5d5e` · SHA-256 `200b0e73d9d392f4d6a40191236bed27cb3c7903331ec64ddc72285fdc01bcf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixInstance.Variantc30e2ac1eb51acbfc1662ba32603b28035fb74f56142ad836caa64fe6b730215","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c30e2ac1eb51acbfc1662ba32603b28035fb74f56142ad836caa64fe6b730215","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.BinaryMatrixInstance.Variantc30e2ac1eb51acbfc1662ba32603b28035fb74f56142ad836caa64fe6b730215","mathematical_subject":"Computation.Algorithms","original_sha256":"c30e2ac1eb51acbfc1662ba32603b28035fb74f56142ad836caa64fe6b730215","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/Complexity/BinaryMatrixArrangement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.BinaryMatrix
import Folder.GrandChallenge.Complexity.GlitchObstruction

/-!
# Folder.GrandChallenge.Complexity.BinaryMatrixArrangement

Radiation role: research-boundary
BinaryMatrix spine: This module makes the P-vs-NP branch finite BinaryMatrix data.
Ontology: complexity_binary_matrix_arrangement
Pivot role: complexity
Zero typology: reconstruction-obstruction
Contract boundary: speculative-scaffold
Composite stack role: grand-challenge
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixInstance.Variantc30e2ac1eb51acbfc1662ba32603b28035fb74f56142ad836caa64fe6b730215

namespace Folder
namespace GrandChallenge
namespace Complexity

/-- A finite binary-matrix problem instance. -/
structure BinaryMatrixInstance where
  matrix : Carrier.BinaryMatrix
  label : String

/-- A candidate compression/decompression ruleset for a binary-matrix instance. -/
structure CompressionRuleset where
  instance_ : BinaryMatrixInstance
  rulesetLabel : String
  compressionOptimal : Prop
  compressionOptimal_certified : compressionOptimal
  decompressionDeterministic : Prop
  decompressionDeterministic_certified : decompressionDeterministic
  polynomialGrowthBound : Prop
  polynomialGrowthBound_certified : polynomialGrowthBound

/--
Smooth rulesets contain all reconstruction witnesses internally and have no
missing frame.
-/
structure SmoothRuleset
    (_R : CompressionRuleset) : Prop where
  yieldsInternalWitnesses : True
  noMissingFrame : True
  polynomialGrowth : True

/--
Glitched rulesets encounter a missing reconstruction frame and require
branching, backtracking, or nondeterministic choice.
-/
structure GlitchedRuleset
    (_R : CompressionRuleset) : Prop where
  missingFrame : True
  requiresBacktracking : True

/-- Arithmetic label used only as an internal obstruction witness. -/
structure EllipticTorsionWitness where
  label : String

/--
Torsion compatibility for a ruleset.

In the smooth case, the needed witness is yielded by the instance. In the
glitched case, it may be marked as out of bounds for deterministic
reconstruction. This is a witness interface, not a characterization of NP.
-/
structure TorsionCompatibility
    (R : CompressionRuleset)
    (_T : EllipticTorsionWitness) where
  yieldedByInstance : Prop
  yieldedByInstance_certified : yieldedByInstance
  outOfBounds : Prop
  outOfBounds_certified : outOfBounds
  sourceLabel : String

/--
Arrangement theorem target: every binary matrix instance has an optimal
ruleset classified as smooth or glitched.
-/
structure ArrangementTheoremTarget where
  instance_ : BinaryMatrixInstance
  optimalRuleset : CompressionRuleset
  classifiedSmoothOrGlitched :
    SmoothRuleset optimalRuleset ∨ GlitchedRuleset optimalRuleset
  sourceLabel : String

/--
`P = NP` target: every apparent glitch can be smoothed in polynomial time.
-/
structure PEqualsNPTarget where
  everyGlitchSmoothable :
    ∀ R : CompressionRuleset,
      GlitchedRuleset R →
      ∃ R' : CompressionRuleset, SmoothRuleset R'
  sourceLabel : String

/--
`P != NP` target: an NP-complete-style family has an irreducible glitch.

This is only a theorem target. It does not assert that such a family has been
constructed.
-/
structure PNotEqualsNPTarget where
  irreducibleGlitchExists :
    ∃ R : CompressionRuleset,
      GlitchedRuleset R ∧
      ¬ ∃ R' : CompressionRuleset, SmoothRuleset R'
  sourceLabel : String

theorem ruleset_compression_optimal_if_supplied
    (R : CompressionRuleset) :
    R.compressionOptimal :=
  R.compressionOptimal_certified

theorem ruleset_deterministic_if_supplied
    (R : CompressionRuleset) :
    R.decompressionDeterministic :=
  R.decompressionDeterministic_certified

theorem torsion_yielded_by_instance_if_supplied
    {R : CompressionRuleset}
    {T : EllipticTorsionWitness}
    (C : TorsionCompatibility R T) :
    C.yieldedByInstance :=
  C.yieldedByInstance_certified

theorem torsion_out_of_bounds_if_supplied
    {R : CompressionRuleset}
    {T : EllipticTorsionWitness}
    (C : TorsionCompatibility R T) :
    C.outOfBounds :=
  C.outOfBounds_certified

theorem arrangement_classified_if_supplied
    (A : ArrangementTheoremTarget) :
    SmoothRuleset A.optimalRuleset ∨ GlitchedRuleset A.optimalRuleset :=
  A.classifiedSmoothOrGlitched

theorem p_equals_np_target_if_supplied
    (T : PEqualsNPTarget)
    (R : CompressionRuleset)
    (h : GlitchedRuleset R) :
    ∃ R' : CompressionRuleset, SmoothRuleset R' :=
  T.everyGlitchSmoothable R h

theorem p_not_equals_np_target_if_supplied
    (T : PNotEqualsNPTarget) :
    ∃ R : CompressionRuleset,
      GlitchedRuleset R ∧
      ¬ ∃ R' : CompressionRuleset, SmoothRuleset R' :=
  T.irreducibleGlitchExists

end Complexity
end GrandChallenge
end Folder

```

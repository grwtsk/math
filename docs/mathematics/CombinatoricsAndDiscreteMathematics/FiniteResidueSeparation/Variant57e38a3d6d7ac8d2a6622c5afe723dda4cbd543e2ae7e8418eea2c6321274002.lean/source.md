# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteResidueSeparation.Variant57e38a3d6d7ac8d2a6622c5afe723dda4cbd543e2ae7e8418eea2c6321274002

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `815355b2ee3a8fa1bce913fe594d590fd53cbe42` · SHA-256 `a5708beb539864824842d6f54be83b8cf9c8cb96cdd4bc466062bdaf29dd27f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteResidueSeparationStatement.Variant2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteResidueSeparationStatement.Variant2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/NeuralDiffusion/FiniteResidueSeparation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.OpenElement
import Mathematics.NeuralDiffusion.RoutingResidue

/-!
# Open element: finite routing residue admits an exact separator

The residual fiber is a finite set even when the ambient element type is not
finite.  The closed proposition asks for a conservative Boolean probe
extension that separates every distinct pair in that complete fiber.  It
formalizes the low-dependency mathematical step behind splitting residue; it
does not grant a name, route, source location, or certificate address.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteResidueSeparationStatement.Variant2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79

namespace Mathematics.NeuralDiffusion

open Mathematics.Discovery
open Mathematics.Projection

/-- Exact existence target for a finite residual-fiber separator. -/
def FiniteResidueSeparationStatement : Prop :=
  ∀ (Element Probe : Type)
    [DecidableEq Element]
    (oldEncode : Element → IncidenceCode Probe)
    (residue : RoutingResidue Element Probe),
      ∃ (NewProbe : Type)
        (newEncode : Element → IncidenceCode NewProbe)
        (extension : ProbeExtension Probe NewProbe)
        (obligation : SeparatorObligation Element Probe),
          obligation.residue = residue ∧
            Nonempty
              (CertifiedSeparator
                oldEncode newEncode extension obligation)

/-- Immutable proposal-only element for exact finite residue separation. -/
def finiteResidueSeparationOpenElement :
    OpenConjectureElement FiniteResidueSeparationStatement where
  elementId :=
    { id := { value := "open:neural-diffusion:finite-residue-separation" } }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Finite routing residue admits an exact separator"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.NeuralDiffusion.FiniteResidueSeparationStatement"
  leanDeclarationName_nonempty := by
    decide

/--
The low-dependency seed is constructive: one new Boolean probe per element
extends every old incidence coordinate and distinguishes every unequal pair.
This proves the existence statement only; route and name authority still
belong to a separately replayed rigidifier generation.
-/
theorem finiteResidueSeparation :
    FiniteResidueSeparationStatement := by
  intro Element Probe _ oldEncode residue
  let NewProbe := Probe ⊕ Element
  let newEncode : Element → IncidenceCode NewProbe :=
    fun element probe ↦
      match probe with
      | .inl oldProbe => oldEncode element oldProbe
      | .inr candidate => decide (element = candidate)
  let extension : ProbeExtension Probe NewProbe := {
    embed := Sum.inl
    embed_injective := Sum.inl_injective
  }
  let obligation : SeparatorObligation Element Probe := {
    residue := residue
    separatorKind := .intrinsicProbe
  }
  refine ⟨NewProbe, newEncode, extension, obligation, rfl, ?_⟩
  exact ⟨{
    conservative := by
      constructor
      intro element
      funext oldProbe
      rfl
    separates := by
      intro left _ right _ distinct equalCodes
      have coordinate :=
        congrFun equalCodes (Sum.inr left)
      simp [newEncode] at coordinate
      exact distinct coordinate.symm
  }⟩

/-- Distinct theorem element linked to the immutable proposal seed. -/
def finiteResidueSeparationTheoremElement :
    LeanTheoremElement finiteResidueSeparationOpenElement where
  theoremElementId := {
    id := {
      value :=
        "theorem:neural-diffusion:finite-residue-separation"
    }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := finiteResidueSeparationOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := finiteResidueSeparation

end Mathematics.NeuralDiffusion
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sieve.Variant48fe8ad73809baa5a2da335eac1bad03872c73e01811f9925b97e6189f4968d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `747203adad52fdda83b4246f3ee73b2bde9aab9e` · SHA-256 `1d9a5fad3e3cacac8be29f352ce3058aa186a31704948b5eac1be40e2d41316a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactoringSieve.Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FactoringSieve.Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8","mathematical_subject":"Foundations.Unclassified","original_sha256":"8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Sieve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactoringSieve.Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8

universe uMorph uFactor uEdge vMorph vFactor vEdge

namespace FCRS.ControlledPlane

/--
A factoring sieve records acceptance and declared further factorization.
It contains no traversal weights.
-/
structure FactoringSieve
    (Morph : Type uMorph) (Factorization : Type uFactor) where
  accepts : Morph → Prop
  factorMorph : Factorization → Morph
  furtherFactor : Factorization → Factorization → Prop
  closedUnderFactor :
    ∀ {f g},
      accepts (factorMorph f) →
      furtherFactor f g →
      accepts (factorMorph g)

/-- A concrete edge occurrence inside a factorization. -/
structure TraversalOccurrence
    (Edge : Type uEdge) (Factorization : Type uFactor) where
  edge : Edge
  factorization : Factorization

/-- Explicit edge/factorization transport, independent of category morphisms. -/
structure TraversalTransport
    (Edge : Type uEdge) (FixedEdge : Type vEdge)
    (Factorization : Type uFactor) (FixedFactorization : Type vFactor) where
  mapEdge : Edge → FixedEdge
  mapFactorization : Factorization → FixedFactorization

/--
A typed transport between factoring sieves and their occurrence relations.

Acceptance and occurrence correspond along the displayed maps.  The witness
does not claim that either map is surjective, so it does not rule out target
factorizations or occurrences outside the image.
-/
structure SieveTransport
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    {FixedMorph : Type vMorph} {FixedFactorization : Type vFactor}
    {FixedEdge : Type vEdge}
    (sourceSieve : FactoringSieve Morph Factorization)
    (fixedSieve : FactoringSieve FixedMorph FixedFactorization)
    (sourceOccurs : Edge → Factorization → Prop)
    (fixedOccurs : FixedEdge → FixedFactorization → Prop) where
  mapMorphism : Morph → FixedMorph
  mapFactorization : Factorization → FixedFactorization
  mapEdge : Edge → FixedEdge
  factorMorph_commutes :
    ∀ f,
      mapMorphism (sourceSieve.factorMorph f) =
        fixedSieve.factorMorph (mapFactorization f)
  acceptance_iff :
    ∀ m, fixedSieve.accepts (mapMorphism m) ↔ sourceSieve.accepts m
  furtherFactor_preserved :
    ∀ {f g}, sourceSieve.furtherFactor f g →
      fixedSieve.furtherFactor (mapFactorization f) (mapFactorization g)
  occurrence_iff :
    ∀ e f,
      fixedOccurs (mapEdge e) (mapFactorization f) ↔
        sourceOccurs e f

namespace SieveTransport

/-- Forget acceptance data while retaining the occurrence transport maps. -/
def toTraversalTransport
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    {FixedMorph : Type vMorph} {FixedFactorization : Type vFactor}
    {FixedEdge : Type vEdge}
    {sourceSieve : FactoringSieve Morph Factorization}
    {fixedSieve : FactoringSieve FixedMorph FixedFactorization}
    {sourceOccurs : Edge → Factorization → Prop}
    {fixedOccurs : FixedEdge → FixedFactorization → Prop}
    (T : SieveTransport
      sourceSieve fixedSieve sourceOccurs fixedOccurs) :
    TraversalTransport
      Edge FixedEdge Factorization FixedFactorization where
  mapEdge := T.mapEdge
  mapFactorization := T.mapFactorization

end SieveTransport

/--
An edge is admissible exactly when an accepted factorization witnesses an
occurrence.  This proposition is not a numerical count.
-/
def AdmissibleEdge
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (e : Edge) : Prop :=
  ∃ f,
    sieve.accepts (sieve.factorMorph f) ∧
    occurs e f

/--
Admissibility is preserved along a typed sieve transport.  The converse is
not asserted because the target witness need not lie in the transport image.
-/
theorem admissibleEdge_preserved_of_sieveTransport
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    {FixedMorph : Type vMorph} {FixedFactorization : Type vFactor}
    {FixedEdge : Type vEdge}
    {sourceSieve : FactoringSieve Morph Factorization}
    {fixedSieve : FactoringSieve FixedMorph FixedFactorization}
    {sourceOccurs : Edge → Factorization → Prop}
    {fixedOccurs : FixedEdge → FixedFactorization → Prop}
    (T : SieveTransport
      sourceSieve fixedSieve sourceOccurs fixedOccurs)
    {e : Edge}
    (hAdmissible : AdmissibleEdge sourceSieve sourceOccurs e) :
    AdmissibleEdge fixedSieve fixedOccurs (T.mapEdge e) := by
  rcases hAdmissible with ⟨f, hAccepted, hOccurs⟩
  refine ⟨T.mapFactorization f, ?_, (T.occurrence_iff e f).2 hOccurs⟩
  rw [← T.factorMorph_commutes f]
  exact (T.acceptance_iff (sourceSieve.factorMorph f)).2 hAccepted

/-- Traversal frequency is abstract data, not a computed cardinality. -/
structure TraversalWeight (Edge : Type uEdge) where
  weight : Edge → Nat

/-- One-way correctness sufficient to infer admissibility from positive weight. -/
def AdmissibilityWeightSound
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (W : TraversalWeight Edge) : Prop :=
  ∀ e, W.weight e > 0 →
    ∃ f,
      sieve.accepts (sieve.factorMorph f) ∧
      occurs e f

/-- Occurrence-only weight correctness, used at transported stages. -/
def TraversalWeightCorrect
    {Edge : Type uEdge} {Factorization : Type uFactor}
    (occurs : Edge → Factorization → Prop)
    (W : TraversalWeight Edge) : Prop :=
  ∀ e, W.weight e > 0 → ∃ f, occurs e f

/-- Every source occurrence remains an occurrence after transport. -/
def OccurrencePreserved
    {Edge : Type uEdge} {FixedEdge : Type vEdge}
    {Factorization : Type uFactor} {FixedFactorization : Type vFactor}
    (sourceOccurs : Edge → Factorization → Prop)
    (fixedOccurs : FixedEdge → FixedFactorization → Prop)
    (T : TraversalTransport Edge FixedEdge Factorization FixedFactorization) :
    Prop :=
  ∀ e f, sourceOccurs e f →
    fixedOccurs (T.mapEdge e) (T.mapFactorization f)

/-- A typed sieve transport entails one-way occurrence preservation. -/
theorem occurrencePreserved_of_sieveTransport
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    {FixedMorph : Type vMorph} {FixedFactorization : Type vFactor}
    {FixedEdge : Type vEdge}
    {sourceSieve : FactoringSieve Morph Factorization}
    {fixedSieve : FactoringSieve FixedMorph FixedFactorization}
    {sourceOccurs : Edge → Factorization → Prop}
    {fixedOccurs : FixedEdge → FixedFactorization → Prop}
    (T : SieveTransport
      sourceSieve fixedSieve sourceOccurs fixedOccurs) :
    OccurrencePreserved
      sourceOccurs fixedOccurs T.toTraversalTransport := by
  intro e f hOccurs
  exact (T.occurrence_iff e f).2 hOccurs

/-- Declared weights agree edgewise along the explicit edge map. -/
def TraversalWeightPreserved
    {Edge : Type uEdge} {FixedEdge : Type vEdge}
    {Factorization : Type uFactor} {FixedFactorization : Type vFactor}
    (sourceWeight : TraversalWeight Edge)
    (fixedWeight : TraversalWeight FixedEdge)
    (T : TraversalTransport Edge FixedEdge Factorization FixedFactorization) :
    Prop :=
  ∀ e, fixedWeight.weight (T.mapEdge e) = sourceWeight.weight e

/--
Joint one-way occurrence preservation and edgewise weight preservation.

This predicate does not reflect arbitrary target occurrences and therefore is
not an exact occurrence-conservation or occurrence-bijection claim.
-/
def TraversalPreserved
    {Edge : Type uEdge} {FixedEdge : Type vEdge}
    {Factorization : Type uFactor} {FixedFactorization : Type vFactor}
    (sourceOccurs : Edge → Factorization → Prop)
    (fixedOccurs : FixedEdge → FixedFactorization → Prop)
    (sourceWeight : TraversalWeight Edge)
    (fixedWeight : TraversalWeight FixedEdge)
    (T : TraversalTransport Edge FixedEdge Factorization FixedFactorization) :
    Prop :=
  OccurrencePreserved sourceOccurs fixedOccurs T ∧
    TraversalWeightPreserved sourceWeight fixedWeight T

/-- Positive weight implies admissibility only under the stated soundness rule. -/
theorem admissibleEdge_of_positiveWeight
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {Edge : Type uEdge}
    {sieve : FactoringSieve Morph Factorization}
    {occurs : Edge → Factorization → Prop}
    {W : TraversalWeight Edge}
    (hSound : AdmissibilityWeightSound sieve occurs W)
    {e : Edge}
    (hPositive : W.weight e > 0) :
    AdmissibleEdge sieve occurs e :=
  hSound e hPositive

end FCRS.ControlledPlane
```

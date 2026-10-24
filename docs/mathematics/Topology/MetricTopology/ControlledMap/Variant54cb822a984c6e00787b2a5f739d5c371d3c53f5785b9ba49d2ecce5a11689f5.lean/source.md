# Complete source: GRWTSK.Topology.MetricTopology.ControlledMap.Variant54cb822a984c6e00787b2a5f739d5c371d3c53f5785b9ba49d2ecce5a11689f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0fa727e5a861f2e98ff061b0e76d288bf6c0792` · SHA-256 `714d7b4f55f9c6e90f69ee3839f4709e27c36275fad71bda84f16f8e7dfc36d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.ControlledMap.Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.ControlledMap.Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd","mathematical_subject":"Topology.MetricSpaces","original_sha256":"6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/ControlledMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.ErrorTransform

/-!
# Controlled heterogeneous maps

This module gives the Möbius-ontology neighborhood a local name for the
theorem-bearing heterogeneous approximation already proved by the attention
kernel.  No carrier equality is erased and only the reference map is required
to be Lipschitz.
-/


namespace GRWTSK.Topology.MetricTopology.ControlledMap.Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd

namespace Mathematics.MobiusOntology

open scoped NNReal

universe u v w x

abbrev ControlledMap
    (X : Type u) (Y : Type v)
    [PseudoMetricSpace X] [PseudoMetricSpace Y] :=
  Mathematics.Attention.ControlledApproximation X Y

namespace ControlledMap

def identity
    (X : Type u) [PseudoMetricSpace X] :
    ControlledMap X X :=
  Mathematics.Attention.ControlledApproximation.id X

def comp
    {X : Type u} {Y : Type v} {Z : Type w}
    [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]
    (later : ControlledMap Y Z)
    (earlier : ControlledMap X Y) :
    ControlledMap X Z :=
  Mathematics.Attention.ControlledApproximation.comp later earlier

theorem comp_sound
    {X : Type u} {Y : Type v} {Z : Type w}
    [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]
    (later : ControlledMap Y Z)
    (earlier : ControlledMap X Y)
    (input : X) :
    nndist
        ((comp later earlier).implementation input)
        ((comp later earlier).reference input) ≤
      later.lipschitz * earlier.localError + later.localError :=
  (comp later earlier).localSound input

/--
Parenthesization preserves all proof-relevant behavior.  Proof terms need not
be propositionally equal.
-/
theorem comp_assoc_behavior
    {X : Type u} {Y : Type v} {Z : Type w} {W : Type x}
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    [PseudoMetricSpace Z] [PseudoMetricSpace W]
    (third : ControlledMap Z W)
    (second : ControlledMap Y Z)
    (first : ControlledMap X Y) :
    (comp (comp third second) first).reference =
        (comp third (comp second first)).reference ∧
      (comp (comp third second) first).implementation =
        (comp third (comp second first)).implementation ∧
      (comp (comp third second) first).localError =
        (comp third (comp second first)).localError ∧
      (comp (comp third second) first).lipschitz =
        (comp third (comp second first)).lipschitz := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact
      Mathematics.Attention.ControlledApproximation.comp_reference_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_implementation_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_error_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_lipschitz_assoc
        third second first

end ControlledMap

end Mathematics.MobiusOntology
```

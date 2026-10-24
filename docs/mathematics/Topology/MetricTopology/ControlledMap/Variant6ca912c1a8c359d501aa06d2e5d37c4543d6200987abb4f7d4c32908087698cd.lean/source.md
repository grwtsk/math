# Complete source: GRWTSK.Topology.MetricTopology.ControlledMap.Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9320cb5c844d3d7834639ed6d586e4e43a3bf2c2` · SHA-256 `6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Attention.ErrorTransform

/-!
# Controlled heterogeneous maps

This module gives the Möbius-ontology neighborhood a local name for the
theorem-bearing heterogeneous approximation already proved by the attention
kernel.  No carrier equality is erased and only the reference map is required
to be Lipschitz.
-/

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

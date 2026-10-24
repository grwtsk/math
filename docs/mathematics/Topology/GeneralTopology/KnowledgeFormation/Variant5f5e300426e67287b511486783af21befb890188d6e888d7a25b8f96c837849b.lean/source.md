# Complete source: GRWTSK.Topology.GeneralTopology.KnowledgeFormation.Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43c14c6ae4d82addf5a3b42edd92c473e26c1f80` · SHA-256 `5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.NeuralDiffusion.NamingResidue
import Mathematics.Projection.AbsoluteCompactification

/-!
# Certified knowledge formation

This module states the architecture as mathematics.

* a certified incidence singleton is a resolved routing anchor;
* a non-singleton routing fiber or persistent naming disagreement activates;
* external heat remains proposal-only;
* exact midpoint codes become elements only through certified realization;
* incidence anchors form a certified Hamming network;
* realized incidence codes sit in their absolute compactification.

No similarity threshold, retry count, embedding distance, or model vote
creates identity, a folder, or a theorem.
-/

namespace Mathematics.System

open Mathematics.Projection
open Mathematics.NeuralDiffusion

universe u v

/-- The three exact states visible to the knowledge-formation router. -/
inductive KnowledgeDisposition
    (Object : Type u) [DecidableEq Object]
    (width : Nat)
    (encode : Object → FiniteIncidenceCode width)
  | anchor (point : CertifiedIncidenceSingleton encode)
  | routingResidue (work : ResidueWorkItem Object (Fin width))
  | namingResidue (work : PersistentNamingResidue Object)

namespace KnowledgeDisposition

variable
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    {encode : Object → FiniteIncidenceCode width}

/--
The activator is determined by the exact disposition, never by a scalar
similarity threshold or a finite disagreement count.
-/
def activationRequired :
    KnowledgeDisposition Object width encode → Bool
  | .anchor _ => false
  | .routingResidue _ => true
  | .namingResidue _ => true

@[simp] theorem incidence_anchor_activation_not_required
    (point : CertifiedIncidenceSingleton encode) :
    activationRequired (KnowledgeDisposition.anchor point) = false :=
  rfl

@[simp] theorem routing_residue_activates
    (work : ResidueWorkItem Object (Fin width)) :
    activationRequired
      (KnowledgeDisposition.routingResidue
        (encode := encode) work) = true :=
  rfl

@[simp] theorem naming_residue_activates
    (work : PersistentNamingResidue Object) :
    activationRequired
      (KnowledgeDisposition.namingResidue
        (width := width) (encode := encode) work) = true :=
  rfl

end KnowledgeDisposition

/--
The certified completion package.  It requires both exact graph connectivity
and certified realization of every recursively generated midpoint.  Compactness
of the associated Boolean closure is then supplied by
`absoluteKnowledgeCompactification_isCompact`.
-/
structure CertifiedKnowledgeFormation
    (Object : Type u) [DecidableEq Object]
    (width : Nat)
    (encode : Object → FiniteIncidenceCode width) where
  seed : Set (FiniteIncidenceCode width)
  network : IncidenceAnchorNetwork.{u, v} encode
  midpointTower : CertifiedMidpointRealizationTower encode seed
  asIncidence :
    FiniteIncidenceCode width → IncidenceCode (Fin width)

namespace CertifiedKnowledgeFormation

variable
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    {encode : Object → FiniteIncidenceCode width}

/-- The realized knowledge carrier has an actual compact closure. -/
theorem compact
    (formation : CertifiedKnowledgeFormation Object width encode) :
    IsCompact
      (AbsoluteKnowledgeCompactification
        (formation.asIncidence ∘ encode)) :=
  absoluteKnowledgeCompactification_isCompact
    (formation.asIncidence ∘ encode)

end CertifiedKnowledgeFormation

end Mathematics.System
```

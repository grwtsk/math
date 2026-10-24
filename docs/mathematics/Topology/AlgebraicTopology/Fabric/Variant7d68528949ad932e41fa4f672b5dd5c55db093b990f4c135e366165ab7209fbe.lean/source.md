# Complete source: GRWTSK.Topology.AlgebraicTopology.Fabric.Variant7d68528949ad932e41fa4f672b5dd5c55db093b990f4c135e366165ab7209fbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9a964184cc0a2cbecac597f472e82e023f8df7b` · SHA-256 `7d68528949ad932e41fa4f672b5dd5c55db093b990f4c135e366165ab7209fbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Presentation
import DAF.Fabric.PresentationCategory
import DAF.Fabric.Shape
import DAF.Fabric.Core
import DAF.Fabric.Reaction
import DAF.Fabric.Boundary
import DAF.Fabric.Patch
import DAF.Fabric.SurgeryAdapter
import DAF.Fabric.Realization
import DAF.Fabric.KanExtension
import DAF.Fabric.System
import DAF.Fabric.Refinement
import DAF.Fabric.Comparison
import DAF.Fabric.Runtime
import DAF.Fabric.Manifest

/-!
# Simplicial assembly fabrics

This declaration-free umbrella collects the generic fabric interfaces.  A
fabric is a simplicial coherence network of declarative presentations; it is
not automatically a geometric space, and a simplicial diagram is not
automatically a homotopy-correct resolution.  `DAF.Assembly` remains the
separate algebraic K-theory assembly namespace.

A presentation is metadata plus a local system contract, not a proof
certificate, and theorem names stored in manifests never produce proofs.  A
reaction is a natural transformation, not an arbitrary cell mutation.  Local
boundary compatibility is necessary for extension and becomes sufficient only
when a complete filler capability is supplied.  Likewise, local refinements do
not automatically assemble globally, and a realization need not preserve
surjections or factors without a dedicated preservation capability.

Fabric equivalence alone supplies no avalanche, cryptographic, or security
guarantee.  DOM, Rust, worker, and Kubernetes hosts remain external refinement
targets rather than objects implemented by this pure generic layer.
-/
```

# Complete source: GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.PointedUnaryBinaryData.Variant32a667ad.MarkedElements

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `142f1abf00087adf73903946987ef6acf2c6874f` · SHA-256 `0e5ddf07b72bb4ba8c8736bd966fd4c788252b038797ce697be734f998c6d85f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Marked elements, actual zero predicates and an explicit value witness
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 32a667ad2a70392fe6bfbc3197aadfdfde967521c48e37f49ddd7289789840fa
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The supplied carrier and distinguished zero come from the exact companion operation-data record. IsZero means x.value=K.zero; Nonzero is its negation. No group or K-theory claim is supplied.
The same-source signature import is explicit; namespaces change and elaboration remains unreplayed.
-/
import Folder.Basic

import GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.PointedUnaryBinaryData.Variant32a667ad.OperationSignature

/-!
# Folder.DerivedSheaf.KTheoryClass

Radiation role: research-boundary
BinaryMatrix spine: This module records K-theory class data, not BinaryMatrix carriers.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.PointedUnaryBinaryData.Variant32a667ad

structure KTheoryClass
    (K : KTheorySpace) where
  value : K.Class
  label : String

def KTheoryClass.IsZero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  x.value = K.zero

def KTheoryClass.Nonzero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  ¬ x.IsZero

theorem ktheory_class_has_value
    {K : KTheorySpace}
    (x : KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  ⟨x.value, rfl⟩

end GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.PointedUnaryBinaryData.Variant32a667ad
```

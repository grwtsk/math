# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralKTheoryBridge.Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f51c0fc2071fdaf4284f40f9149fd64563deb1e` · SHA-256 `1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.CategoricalSpectrum
import Folder.DerivedSheaf.KTheoryIndex
import Folder.DerivedSheaf.ModuliStackKTheory

/-!
# Folder.DerivedSheaf.SpectralKTheoryBridge

Radiation role: research-boundary
BinaryMatrix spine: This module maps spectral contracts to K-theory contracts, not BinaryMatrix data.
Ontology: derived.spectral_k_theory_bridge
Pivot role: spectral
Zero typology: k_zero
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
A contract-level map from a Dirac spectrum object to a K-theory class.

This is the formal bridge from spectral categorical data to the derived
K-theory index layer.
-/
structure DiracSpectrumToKTheoryClass
    (M : MellKTheory) where
  source : Spectral.DiracSpectrumObject
  target : KTheoryClass M.K
  mapsSpectrumToKClass : Prop
  mapsSpectrumToKClass_certified : mapsSpectrumToKClass
  compatibleWithIndex : Prop
  compatibleWithIndex_certified : compatibleWithIndex
  sourceLabel : String

theorem dirac_spectrum_maps_to_k_class
    {M : MellKTheory}
    (B : DiracSpectrumToKTheoryClass M) :
    B.mapsSpectrumToKClass :=
  B.mapsSpectrumToKClass_certified

theorem dirac_spectrum_k_class_compatible_with_index
    {M : MellKTheory}
    (B : DiracSpectrumToKTheoryClass M) :
    B.compatibleWithIndex :=
  B.compatibleWithIndex_certified

/--
A functor-like bridge from a category of Dirac spectrum objects to K-theory.

This is contract-level; it does not construct an actual functor in Mathlib.
-/
structure DiracSpectrumKTheoryFunctor
    (M : MellKTheory) where
  objectMap :
    Spectral.DiracSpectrumObject → KTheoryClass M.K
  morphismCompatible :
    Prop
  morphismCompatible_certified :
    morphismCompatible
  preservesIdentity? :
    Prop
  preservesIdentity_certified :
    preservesIdentity?
  preservesComposition? :
    Prop
  preservesComposition_certified :
    preservesComposition?
  sourceLabel : String

theorem dirac_spectrum_k_functor_morphism_compatible
    {M : MellKTheory}
    (F : DiracSpectrumKTheoryFunctor M) :
    F.morphismCompatible :=
  F.morphismCompatible_certified

/--
A Dirac spectrum object realizes the K-theory index when it maps to the same
K-class as the index.
-/
structure DiracSpectrumRealizesKTheoryIndex
    (M : MellKTheory)
    (I : KTheoryIndex M) where
  bridge : DiracSpectrumToKTheoryClass M
  sameClass : bridge.target.value = I.indexClass.value
  spectralObjectRepresentsIndex : Prop
  spectralObjectRepresentsIndex_certified :
    spectralObjectRepresentsIndex

theorem dirac_spectrum_realizes_k_index
    {M : MellKTheory}
    {I : KTheoryIndex M}
    (R : DiracSpectrumRealizesKTheoryIndex M I) :
    R.spectralObjectRepresentsIndex :=
  R.spectralObjectRepresentsIndex_certified

theorem dirac_spectrum_k_index_same_class
    {M : MellKTheory}
    {I : KTheoryIndex M}
    (R : DiracSpectrumRealizesKTheoryIndex M I) :
    R.bridge.target.value = I.indexClass.value :=
  R.sameClass

end DerivedSheaf
end Folder
```

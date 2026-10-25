# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variant69cc93c4193c4c7b247865ecdf9313fd0107bea90c6300a175057464ace4b8b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c7e65e23c09539958fd95cc4e5ae48c63ebea5b` · SHA-256 `69cc93c4193c4c7b247865ecdf9313fd0107bea90c6300a175057464ace4b8b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Authority bands for the Formal program.

This module is intentionally dependency-free. It gives the organization layer a
typed vocabulary for saying what kind of authority a conceptual boundary has.
-/

namespace Formal

inductive AuthorityBand where
  | checked
  | surface
  | blueprint
  | patch
  | external
  | archive
  deriving DecidableEq, Repr

def AuthorityBand.mayCloseTheoremAuthority : AuthorityBand -> Bool
  | .checked => true
  | .surface => false
  | .blueprint => false
  | .patch => false
  | .external => false
  | .archive => false

theorem AuthorityBand.blueprint_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .blueprint = false := by
  rfl

theorem AuthorityBand.patch_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .patch = false := by
  rfl

theorem AuthorityBand.external_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .external = false := by
  rfl

theorem AuthorityBand.archive_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .archive = false := by
  rfl

structure ConceptualBoundary where
  band : AuthorityBand
  moduleName : String
  importsCorpus : Bool
  deriving Repr

def ConceptualBoundary.mayCloseTheoremAuthority
    (boundary : ConceptualBoundary) : Bool :=
  boundary.band.mayCloseTheoremAuthority && !boundary.importsCorpus

def ConceptualBoundary.marker
    (band : AuthorityBand)
    (moduleName : String) : ConceptualBoundary :=
  { band, moduleName, importsCorpus := false }

def ConceptualBoundary.corpus
    (band : AuthorityBand)
    (moduleName : String) : ConceptualBoundary :=
  { band, moduleName, importsCorpus := true }

theorem marker_blueprint_cannot_close (moduleName : String) :
    (ConceptualBoundary.marker .blueprint moduleName).mayCloseTheoremAuthority
      = false := by
  rfl

theorem marker_patch_cannot_close (moduleName : String) :
    (ConceptualBoundary.marker .patch moduleName).mayCloseTheoremAuthority
      = false := by
  rfl

theorem corpus_checked_cannot_close (moduleName : String) :
    (ConceptualBoundary.corpus .checked moduleName).mayCloseTheoremAuthority
      = false := by
  simp [ConceptualBoundary.mayCloseTheoremAuthority, ConceptualBoundary.corpus,
    AuthorityBand.mayCloseTheoremAuthority]

end Formal
```

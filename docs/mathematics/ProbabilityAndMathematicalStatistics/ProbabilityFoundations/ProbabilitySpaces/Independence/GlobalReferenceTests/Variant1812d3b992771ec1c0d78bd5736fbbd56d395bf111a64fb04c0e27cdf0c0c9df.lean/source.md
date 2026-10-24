# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.GlobalReferenceTests.Variant1812d3b992771ec1c0d78bd5736fbbd56d395bf111a64fb04c0e27cdf0c0c9df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5bf1a7d96e694ad573b778c836505d50fdb785e` · SHA-256 `6b70c94825d5a13cb3fd439b80c8de2286b5c0198a92ae0c0ef773f19c0599d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SampleGlobal.Variant362c8f81028080a07eadc7f668ef366fb140ae76f9e754a2f78f55985cdf4ed2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"362c8f81028080a07eadc7f668ef366fb140ae76f9e754a2f78f55985cdf4ed2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.SampleGlobal.Variant362c8f81028080a07eadc7f668ef366fb140ae76f9e754a2f78f55985cdf4ed2","mathematical_subject":"Probability.Independence","original_sha256":"362c8f81028080a07eadc7f668ef366fb140ae76f9e754a2f78f55985cdf4ed2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/GlobalReferenceTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.Generator

/-!
# Concrete global-reference and cache-independence checks

These small finite examples exercise the denotational boundary directly.  The
generator agrees with a fixed three-coordinate reference, while two unrelated
runtime cache observations produce the same region query.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SampleGlobal.Variant362c8f81028080a07eadc7f668ef366fb140ae76f9e754a2f78f55985cdf4ed2

namespace DAF.Integration.GlobalReferenceTests

open DAF.Terrain

/-- A three-coordinate maximal state with its exact absolute enumeration. -/
def sampleGlobal : KnownMaximalState Nat where
  Coord := Fin 3
  coordFintype := inferInstance
  coordDecEq := inferInstance
  cardinality := 3
  absoluteIndex := Equiv.refl (Fin 3)
  reference c := 10 * c.val

/-- A fixed generator which computes the already declared reference. -/
def sampleGenerator : GlobalGenerationCertificate sampleGlobal where
  Seed := Unit
  Parameters := Unit
  seed := ()
  parameters := ()
  evaluate _ _ c := 10 * c.val
  agrees _ := rfl

def c0 : sampleGlobal.Coord := by
  change Fin 3
  exact 0

def c1 : sampleGlobal.Coord := by
  change Fin 3
  exact 1

def c2 : sampleGlobal.Coord := by
  change Fin 3
  exact 2

/-- The two endpoints form one exact absolute query region. -/
def endpointRegion : AbsoluteRegion sampleGlobal :=
  by
    letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
    exact ⟨{c0, c2}⟩

def cacheA : QueryCache sampleGlobal String where
  observedCoordinates := by
    letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
    exact {c0}
  payload := ["left"]
  cacheVersion := "cache-a"

def cacheB : QueryCache sampleGlobal String where
  observedCoordinates := by
    letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
    exact {c1, c2}
  payload := ["middle", "right"]
  cacheVersion := "cache-b"

example :
    sampleGenerator.generatedValue = sampleGlobal.reference :=
  sampleGenerator.generatedValue_eq_reference

example : sampleGenerator.query endpointRegion =
    restrictSignal endpointRegion sampleGlobal.reference :=
  sampleGenerator.query_eq_reference endpointRegion

example :
    denotationalQuery cacheA endpointRegion =
      denotationalQuery cacheB endpointRegion :=
  denotationalQuery_cache_independent cacheA cacheB endpointRegion

example :
    denotationalQuery
        (cacheA.evict c0) endpointRegion =
      denotationalQuery cacheA endpointRegion :=
  denotationalQuery_evict cacheA endpointRegion c0

example :
    denotationalQuery cacheA endpointRegion
      ⟨c0, by
        letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
        simp [endpointRegion]⟩ = 0 :=
  rfl

example :
    denotationalQuery cacheA endpointRegion
      ⟨c2, by
        letI : DecidableEq sampleGlobal.Coord := sampleGlobal.coordDecEq
        simp [endpointRegion]⟩ = 20 :=
  rfl

example (u : endpointRegion.LocalCoord → Int) :
    restrictSignal endpointRegion (extendSignal endpointRegion u) = u :=
  AbsoluteRegion.restrictSignal_extendSignal endpointRegion u

end DAF.Integration.GlobalReferenceTests
```

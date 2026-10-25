# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParabolaImport.Variant7224884242c89b4fa227b04c278bca502880d5832e1c40a87354125faa10eb42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb63be338a09e15e54f5867383b0b424bdeff482` · SHA-256 `c0b58bc6f9f4668a51b439f037e67f3df47bc946538d32aba4719277cdb98986`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParabolaDecouplingDependency.Variant64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ParabolaDecouplingDependency.Variant64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","mathematical_subject":"Foundations.Unclassified","original_sha256":"64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/Decoupling/ParabolaImport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.Decoupling.VanishingCurvature


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParabolaDecouplingDependency.Variant64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace ParabolaImport

/--
Dependency surface for Bourgain-Demeter parabola decoupling.

No theorem dependency is imported here. A later trusted-import policy would
need to fill this surface before any theorem depending on it can be promoted.
-/
structure ParabolaDecouplingDependency where
  dependencyName : String
  authority : DecouplingAuthority
  trustedImportWitnessPresent : Bool
deriving DecidableEq, Repr

def bourgainDemeterParabolaDependency : ParabolaDecouplingDependency :=
  { dependencyName := "Bourgain-Demeter parabola decoupling"
    authority := .openResidue
    trustedImportWitnessPresent := false }

theorem bourgain_demeter_dependency_is_open_residue :
    bourgainDemeterParabolaDependency.authority = .openResidue := rfl

theorem bourgain_demeter_dependency_has_no_trusted_import_witness :
    bourgainDemeterParabolaDependency.trustedImportWitnessPresent = false := rfl

end ParabolaImport
end Think.Analysis.Decoupling
```

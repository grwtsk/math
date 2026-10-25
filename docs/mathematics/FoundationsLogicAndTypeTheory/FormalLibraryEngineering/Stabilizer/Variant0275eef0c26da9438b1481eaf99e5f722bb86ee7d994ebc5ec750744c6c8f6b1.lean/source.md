# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stabilizer.Variant0275eef0c26da9438b1481eaf99e5f722bb86ee7d994ebc5ec750744c6c8f6b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71a92d8d8e1ea76d664a1a2ee5bddd8ddcc10b9b` · SHA-256 `90a13432da178005039c8764e63896a98a0acf6ad3c62dec928b81fe2646efd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stabilizes.Variant06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Stabilizes.Variant06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","mathematical_subject":"Foundations.Unclassified","original_sha256":"06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/Stabilizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.FiniteCyclic

/-! # Stabilizers remain separate from orbit size -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stabilizes.Variant06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427

namespace Mathematics.Orbit

universe u v

def Stabilizes
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (groupElement : G)
    (point : Point) : Prop :=
  action groupElement point = point

def Stabilizer
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (point : Point) : Set G :=
  {groupElement | Stabilizes action groupElement point}

end Mathematics.Orbit
```

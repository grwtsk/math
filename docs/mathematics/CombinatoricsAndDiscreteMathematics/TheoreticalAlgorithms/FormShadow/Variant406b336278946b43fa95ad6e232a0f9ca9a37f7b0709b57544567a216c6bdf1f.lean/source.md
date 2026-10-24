# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormShadow.Variant406b336278946b43fa95ad6e232a0f9ca9a37f7b0709b57544567a216c6bdf1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77166fedc3d095d3415d2633be610229e1d97760` · SHA-256 `bd4911e4447c2cd42d3540cb3c694625674d33149ed5dd2445b60165517ee8b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormalQShadow.Variant96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FormalQShadow.Variant96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02","mathematical_subject":"Computation.DataStructures","original_sha256":"96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/FormShadow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormalQShadow.Variant96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure FormalQShadow where
  path : String
  truncation : Nat
  weight : Nat
  coefficientTags : List String
  modularShadowOnly : Prop

def phaseShadow (n : Nat) : FormalQShadow :=
  { path := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    truncation := 60
    weight := phaseWeight n
    coefficientTags := [ "phase", "pole", "residue", "witness" ]
    modularShadowOnly := True }

theorem phaseShadow37_weight :
    (phaseShadow 37).weight = 12 := by
  rfl

end Think.RadoProjectedModularHeatflow
```

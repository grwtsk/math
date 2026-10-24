# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Orbit.Variant5dcd8f8be7bf605e5bb33abebd74450768621d59c64eaa1284fead40c958b18e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `199d231bb9a878c4e8e3f6225ee011a26c8e6c44` · SHA-256 `c3d88f3c5f8ad82e697fe654629a935cec1a4fdb61da75619e72bc110d452d5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrbitGenerator.Variantfff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OrbitGenerator.Variantfff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","mathematical_subject":"Computation.DataStructures","original_sha256":"fff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Orbit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrbitGenerator.Variantfff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

inductive OrbitGenerator where
  | typedWreath
  | phaseReflection
  | orbitQuotient
deriving DecidableEq, Repr

structure OrbitPolicy where
  generators : List OrbitGenerator
  exactWeightSymmetry : Prop
  modularLabelsMayBeNonfaithful : Prop
deriving Repr

def sourceTreeOrbitPolicy : OrbitPolicy :=
  { generators := [ .typedWreath, .phaseReflection, .orbitQuotient ]
    exactWeightSymmetry := True
    modularLabelsMayBeNonfaithful := True }

theorem sourceTreeOrbitPolicy_hasReflection :
    OrbitGenerator.phaseReflection ∈ sourceTreeOrbitPolicy.generators := by
  decide

end Think.RadoProjectedModularHeatflow
```

-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PenroseDiagramProps.Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PenroseDiagramProps.Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f","mathematical_subject":"Computation.DataStructures","original_sha256":"9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Component/PenroseDiagram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.Basic
import ProofWidgets.Data.Html


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PenroseDiagramProps.Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f

namespace ProofWidgets
open Lean Server

structure PenroseDiagramProps where
  embeds : Array (String × Html)
  dsl    : String
  sty    : String
  sub    : String
  deriving Inhabited

#mkrpcenc PenroseDiagramProps

/-- Displays the given diagram using [Penrose](https://penrose.cs.cmu.edu/). The website contains
explanations of how to write domain (`dsl`), style (`sty`), and substance (`sub`) programs.

The diagram may also contain embedded HTML trees which are specified in `embeds`. Each embed is HTML
together with the name of an object `x` in the substance program which *must* be assigned
an `x.textBox : Rectangle` field in the style program. This rectangle will be replaced with the HTML
tree.

The following additional constants are prepended to the style program:
```penrose
theme {
  color foreground
  color tooltipBackground
  color tooltipForeground
  color tooltipBorder
}
```
and can be accessed as, for example, `theme.foreground` in the provided `sty` in order to match
the editor theme. -/
@[widget_module]
def PenroseDiagram : Component PenroseDiagramProps where
  javascript := include_str ".." / ".." / "build" / "js" / "penroseDisplay.js"

end ProofWidgets

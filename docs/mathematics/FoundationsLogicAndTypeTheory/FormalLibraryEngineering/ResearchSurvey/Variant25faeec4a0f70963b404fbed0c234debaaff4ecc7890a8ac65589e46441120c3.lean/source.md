# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResearchSurvey.Variant25faeec4a0f70963b404fbed0c234debaaff4ecc7890a8ac65589e46441120c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b288b8fca1a6cba02c44199ce2775ded275a4927` · SHA-256 `25faeec4a0f70963b404fbed0c234debaaff4ecc7890a8ac65589e46441120c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ResearchSurvey.All

set_option autoImplicit false

namespace Think.Validation

theorem researchSurvey_paperSources_count :
    Think.ResearchSurvey.paperSources.length = 12 := by
  exact Think.ResearchSurvey.paperSources_count

theorem researchSurvey_targets_count :
    Think.ResearchSurvey.allTargets.length = 604 := by
  exact Think.ResearchSurvey.allTargets_count

theorem researchSurvey_primitives_count :
    Think.ResearchSurvey.allPrimitives.length = 304 := by
  exact Think.ResearchSurvey.allPrimitives_count

theorem researchSurvey_openMentions_count :
    Think.ResearchSurvey.allOpenMentions.length = 47 := by
  exact Think.ResearchSurvey.allOpenMentions_count

theorem researchSurvey_targetResidues_count :
    Think.ResearchSurvey.allTargetResidues.length = 604 := by
  exact Think.ResearchSurvey.allTargetResidues_count

theorem researchSurvey_targetStatements_count :
    Think.ResearchSurvey.allTargetStatements.length = 604 := by
  exact Think.ResearchSurvey.allTargetStatements_count

theorem researchSurvey_primitiveResidues_count :
    Think.ResearchSurvey.allPrimitiveResidues.length = 304 := by
  exact Think.ResearchSurvey.allPrimitiveResidues_count

theorem researchSurvey_openMentionResidues_count :
    Think.ResearchSurvey.allOpenMentionResidues.length = 47 := by
  exact Think.ResearchSurvey.allOpenMentionResidues_count

theorem researchSurvey_noProofHolePolicy :
    Think.ResearchSurvey.noProofHolePolicy = true := by
  rfl

theorem researchSurvey_targetChecked_hasResidue
    (t : Think.ResearchSurvey.SurveyTarget) :
    (Think.ResearchSurvey.targetChecked t).hasResidue = true := by
  exact Think.ResearchSurvey.targetChecked_hasResidue t

theorem researchSurvey_targetStatementChecked_hasResidue
    (t : Think.ResearchSurvey.SurveyTarget) :
    (Think.ResearchSurvey.targetStatementChecked t).hasResidue = true := by
  exact Think.ResearchSurvey.targetStatementChecked_hasResidue t

theorem researchSurvey_inventory_not_translation_proof :
    Think.ResearchSurvey.StatementTranslationStatus.inventoryOnly ≠
      Think.ResearchSurvey.StatementTranslationStatus.proofComplete := by
  decide

end Think.Validation
```

import Folder.GrandChallenge.Hodge.KnownCaseAttachment

/-!
# Folder.GrandChallenge.Hodge.GeneralizationAtlas

Radiation role: research-boundary
BinaryMatrix spine: This module records a Hodge attachment atlas contract.
Ontology: hodge_attachment_atlas
Pivot role: attachment
Zero typology: cycle-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Hodge

structure HodgeGeneralizationAtlas where
  knownCases : List HodgeKnownCase
  attachmentMaps : List HodgeAttachmentMap
  coversGeneralizationPath : Prop
  coversGeneralizationPath_certified : coversGeneralizationPath
  sourceLabel : String

theorem hodge_atlas_covers_if_supplied
    (A : HodgeGeneralizationAtlas) :
    A.coversGeneralizationPath :=
  A.coversGeneralizationPath_certified

end Hodge
end GrandChallenge
end Folder

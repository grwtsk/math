import Think.SourceTree.Legacy.ResearchSurvey.Basic
import Think.SourceTree.Legacy.ResearchSurvey.Corpus
import Think.SourceTree.Legacy.ResearchSurvey.Targets
import Think.SourceTree.Legacy.ResearchSurvey.Primitives
import Think.SourceTree.Legacy.ResearchSurvey.OpenMentions
import Think.SourceTree.Legacy.ResearchSurvey.ExternalReferee
import Think.SourceTree.Legacy.ResearchSurvey.OuterFrontier
import Think.SourceTree.Legacy.ResearchSurvey.CompactBoundary
import Think.SourceTree.Legacy.ResearchSurvey.Sources.EverythingIsIlluminated
import Think.SourceTree.Legacy.ResearchSurvey.Sources.CompressionModelingMathematics
import Think.SourceTree.Legacy.ResearchSurvey.Sources.IJEPAObjective
import Think.SourceTree.Legacy.ResearchSurvey.Sources.LorentzianSyntheticOT
import Think.SourceTree.Legacy.ResearchSurvey.Sources.NonlinearDAlembertMMS
import Think.SourceTree.Legacy.ResearchSurvey.Sources.EllipticLorentzianSplitting
import Think.SourceTree.Legacy.ResearchSurvey.Sources.SyntheticNullHypersurfaces
import Think.SourceTree.Legacy.ResearchSurvey.Sources.PseudoAnosovOrbitEquiv
import Think.SourceTree.Legacy.ResearchSurvey.Sources.RCoveredAnosovOrbitEquiv
import Think.SourceTree.Legacy.ResearchSurvey.Sources.BoundaryActionsAnosov
import Think.SourceTree.Legacy.ResearchSurvey.Sources.LiouvilleConformalBootstrap
import Think.SourceTree.Legacy.ResearchSurvey.Sources.BuildingAnosovFlows
import Think.SourceTree.Legacy.ResearchSurvey.Sources.RadoUniversalGraph
import Think.SourceTree.Legacy.ResearchSurvey.Sources.All

set_option autoImplicit false

namespace Think.ResearchSurvey

def allTargetStatements : List SurveyTargetStatement :=
  allTargets.map targetStatement

theorem allTargetStatements_count :
    allTargetStatements.length = 604 := by
  simp [allTargetStatements, allTargets_count]

end Think.ResearchSurvey

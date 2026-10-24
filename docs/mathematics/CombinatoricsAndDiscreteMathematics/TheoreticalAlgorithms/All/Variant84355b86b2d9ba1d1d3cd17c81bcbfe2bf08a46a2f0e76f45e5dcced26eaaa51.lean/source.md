# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant84355b86b2d9ba1d1d3cd17c81bcbfe2bf08a46a2f0e76f45e5dcced26eaaa51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0944027b65fa1a9396184f1446297db569c96f0f` · SHA-256 `84355b86b2d9ba1d1d3cd17c81bcbfe2bf08a46a2f0e76f45e5dcced26eaaa51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

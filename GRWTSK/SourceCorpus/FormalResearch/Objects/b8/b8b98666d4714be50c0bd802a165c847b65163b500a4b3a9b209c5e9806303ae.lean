import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey

def paperSources : List PaperSource := [
  { paperId := "1407.2975v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1407.2975v1.pdf"
    theoremLikeTargets := 16
    frameworkPrimitives := 0
    openMentions := 2 },
  { paperId := "1408.3951v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1408.3951v1.pdf"
    theoremLikeTargets := 92
    frameworkPrimitives := 50
    openMentions := 3 },
  { paperId := "1808.01536v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1808.01536v3.pdf"
    theoremLikeTargets := 43
    frameworkPrimitives := 12
    openMentions := 0 },
  { paperId := "1810.13309v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1810.13309v3.pdf"
    theoremLikeTargets := 28
    frameworkPrimitives := 16
    openMentions := 3 },
  { paperId := "1909.02324v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1909.02324v3.pdf"
    theoremLikeTargets := 38
    frameworkPrimitives := 7
    openMentions := 9 },
  { paperId := "2004.08934v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2004.08934v3.pdf"
    theoremLikeTargets := 66
    frameworkPrimitives := 44
    openMentions := 5 },
  { paperId := "2005.11530v2"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2005.11530v2.pdf"
    theoremLikeTargets := 59
    frameworkPrimitives := 13
    openMentions := 11 },
  { paperId := "2012.11811v4"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2012.11811v4.pdf"
    theoremLikeTargets := 31
    frameworkPrimitives := 16
    openMentions := 8 },
  { paperId := "2211.10505v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2211.10505v1.pdf"
    theoremLikeTargets := 80
    frameworkPrimitives := 38
    openMentions := 3 },
  { paperId := "2408.15968v2"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2408.15968v2.pdf"
    theoremLikeTargets := 94
    frameworkPrimitives := 58
    openMentions := 1 },
  { paperId := "2410.12632v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2410.12632v1.pdf"
    theoremLikeTargets := 16
    frameworkPrimitives := 4
    openMentions := 2 },
  { paperId := "2506.04934v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2506.04934v3.pdf"
    theoremLikeTargets := 41
    frameworkPrimitives := 46
    openMentions := 0 }
]

theorem paperSources_count : paperSources.length = 12 := by
  rfl

def theoremLikeTargetTotal : Nat := 604
def frameworkPrimitiveTotal : Nat := 304
def openMentionTotal : Nat := 47

theorem theoremLikeTargetTotal_correct : theoremLikeTargetTotal = 604 := by
  rfl

theorem frameworkPrimitiveTotal_correct : frameworkPrimitiveTotal = 304 := by
  rfl

theorem openMentionTotal_correct : openMentionTotal = 47 := by
  rfl

end Think.ResearchSurvey

# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OpenMentions.Variantb3e7dbd1f4128d4610f792bd72361a89f749e3c6a597d483b388ec12c6274825

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50b1f03d7a552c3d958a8af62613e529e7638113` · SHA-256 `b3e7dbd1f4128d4610f792bd72361a89f749e3c6a597d483b388ec12c6274825`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ResearchSurvey.Basic

set_option autoImplicit false

namespace Think.ResearchSurvey

def allOpenMentions : List OpenMention := [
  { paperId := "1407.2975v1"
    page := "1"
    matchedText := "conjecture" },
  { paperId := "1407.2975v1"
    page := "2"
    matchedText := "Conjecture" },
  { paperId := "1408.3951v1"
    page := "3"
    matchedText := "Question 1.4" },
  { paperId := "1408.3951v1"
    page := "4"
    matchedText := "Question 1.7" },
  { paperId := "1408.3951v1"
    page := "58"
    matchedText := "conjecture" },
  { paperId := "1810.13309v3"
    page := "57"
    matchedText := "conjectured" },
  { paperId := "1810.13309v3"
    page := "57"
    matchedText := "conjecture" },
  { paperId := "1810.13309v3"
    page := "59"
    matchedText := "conjecture" },
  { paperId := "1909.02324v3"
    page := "3"
    matchedText := "Problem\n3.53" },
  { paperId := "1909.02324v3"
    page := "37"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "37"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.2" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.1" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Problem 7.2" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Question 7.3" },
  { paperId := "1909.02324v3"
    page := "38"
    matchedText := "Question 7.4" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2004.08934v3"
    page := "72"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "1"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "6"
    matchedText := "conjectured" },
  { paperId := "2005.11530v2"
    page := "7"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "7"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "8"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "89"
    matchedText := "conjecture" },
  { paperId := "2005.11530v2"
    page := "90"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "1"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "2"
    matchedText := "conjecture" },
  { paperId := "2012.11811v4"
    page := "3"
    matchedText := "Question 1" },
  { paperId := "2012.11811v4"
    page := "3"
    matchedText := "Question 2" },
  { paperId := "2012.11811v4"
    page := "23"
    matchedText := "Question\n7.4" },
  { paperId := "2012.11811v4"
    page := "25"
    matchedText := "conjecture" },
  { paperId := "2211.10505v1"
    page := "50"
    matchedText := "Question 1" },
  { paperId := "2211.10505v1"
    page := "51"
    matchedText := "Question 2" },
  { paperId := "2211.10505v1"
    page := "52"
    matchedText := "conjecture" },
  { paperId := "2408.15968v2"
    page := "110"
    matchedText := "conjecture" },
  { paperId := "2410.12632v1"
    page := "2"
    matchedText := "conjectured" },
  { paperId := "2410.12632v1"
    page := "33"
    matchedText := "conjecture" }
]

def allOpenMentionResidues : List Think.Residue :=
  allOpenMentions.map mentionResidue

theorem allOpenMentions_count : allOpenMentions.length = 47 := by
  rfl

theorem allOpenMentionResidues_count : allOpenMentionResidues.length = 47 := by
  rfl

end Think.ResearchSurvey
```

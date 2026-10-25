# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.7f7060cbc31687f4db74393ee05deaabe00949759e70979b11d3fba075b8678dDonorAudit.Variant7f7060cbc31687f4db74393ee05deaabe00949759e70979b11d3fba075b8678d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5abf10082525b51a20f96dc4b73790327c698365` · SHA-256 `7f7060cbc31687f4db74393ee05deaabe00949759e70979b11d3fba075b8678d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.HadwigerNelson

set_option pp.explicit true
set_option pp.universes true

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserA"
#check @FormalResearch.HadwigerNelson.moserA
#print axioms FormalResearch.HadwigerNelson.moserA

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserB"
#check @FormalResearch.HadwigerNelson.moserB
#print axioms FormalResearch.HadwigerNelson.moserB

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserT"
#check @FormalResearch.HadwigerNelson.moserT
#print axioms FormalResearch.HadwigerNelson.moserT

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserU"
#check @FormalResearch.HadwigerNelson.moserU
#print axioms FormalResearch.HadwigerNelson.moserU

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint"
#check @FormalResearch.HadwigerNelson.moserPoint
#print axioms FormalResearch.HadwigerNelson.moserPoint

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_0"
#check @FormalResearch.HadwigerNelson.moserPoint_0
#print axioms FormalResearch.HadwigerNelson.moserPoint_0

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_1"
#check @FormalResearch.HadwigerNelson.moserPoint_1
#print axioms FormalResearch.HadwigerNelson.moserPoint_1

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_2"
#check @FormalResearch.HadwigerNelson.moserPoint_2
#print axioms FormalResearch.HadwigerNelson.moserPoint_2

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_3"
#check @FormalResearch.HadwigerNelson.moserPoint_3
#print axioms FormalResearch.HadwigerNelson.moserPoint_3

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_4"
#check @FormalResearch.HadwigerNelson.moserPoint_4
#print axioms FormalResearch.HadwigerNelson.moserPoint_4

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_5"
#check @FormalResearch.HadwigerNelson.moserPoint_5
#print axioms FormalResearch.HadwigerNelson.moserPoint_5

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_6"
#check @FormalResearch.HadwigerNelson.moserPoint_6
#print axioms FormalResearch.HadwigerNelson.moserPoint_6

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserEdges"
#check @FormalResearch.HadwigerNelson.moserEdges
#print axioms FormalResearch.HadwigerNelson.moserEdges

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.complex_norm_one_of_sq"
#check @FormalResearch.HadwigerNelson.complex_norm_one_of_sq
#print axioms FormalResearch.HadwigerNelson.complex_norm_one_of_sq

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moser_edge_unit"
#check @FormalResearch.HadwigerNelson.moser_edge_unit
#print axioms FormalResearch.HadwigerNelson.moser_edge_unit

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.three_color_diamond"
#check @FormalResearch.HadwigerNelson.three_color_diamond
#print axioms FormalResearch.HadwigerNelson.three_color_diamond

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moser_not_three_colorable"
#check @FormalResearch.HadwigerNelson.moser_not_three_colorable
#print axioms FormalResearch.HadwigerNelson.moser_not_three_colorable

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserFourColor"
#check @FormalResearch.HadwigerNelson.moserFourColor
#print axioms FormalResearch.HadwigerNelson.moserFourColor

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserFourColor_proper"
#check @FormalResearch.HadwigerNelson.moserFourColor_proper
#print axioms FormalResearch.HadwigerNelson.moserFourColor_proper

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moser_listed_graph_exact_four"
#check @FormalResearch.HadwigerNelson.moser_listed_graph_exact_four
#print axioms FormalResearch.HadwigerNelson.moser_listed_graph_exact_four

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.radicalProduct_bounds"
#check @FormalResearch.HadwigerNelson.radicalProduct_bounds
#print axioms FormalResearch.HadwigerNelson.radicalProduct_bounds

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moser_normSq_unit_iff"
#check @FormalResearch.HadwigerNelson.moser_normSq_unit_iff
#print axioms FormalResearch.HadwigerNelson.moser_normSq_unit_iff

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_injective"
#check @FormalResearch.HadwigerNelson.moserPoint_injective
#print axioms FormalResearch.HadwigerNelson.moserPoint_injective

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moser_unit_iff_edge"
#check @FormalResearch.HadwigerNelson.moser_unit_iff_edge
#print axioms FormalResearch.HadwigerNelson.moser_unit_iff_edge

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.FinitePointColorable"
#check @FormalResearch.HadwigerNelson.FinitePointColorable
#print axioms FormalResearch.HadwigerNelson.FinitePointColorable

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.finitePointColorable_mono"
#check @FormalResearch.HadwigerNelson.finitePointColorable_mono
#print axioms FormalResearch.HadwigerNelson.finitePointColorable_mono

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserFourColor_unit_proper"
#check @FormalResearch.HadwigerNelson.moserFourColor_unit_proper
#print axioms FormalResearch.HadwigerNelson.moserFourColor_unit_proper

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moser_unit_graph_exact_four"
#check @FormalResearch.HadwigerNelson.moser_unit_graph_exact_four
#print axioms FormalResearch.HadwigerNelson.moser_unit_graph_exact_four

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.PlaneColorable"
#check @FormalResearch.HadwigerNelson.PlaneColorable
#print axioms FormalResearch.HadwigerNelson.PlaneColorable

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.ExactPlaneChromaticNumber"
#check @FormalResearch.HadwigerNelson.ExactPlaneChromaticNumber
#print axioms FormalResearch.HadwigerNelson.ExactPlaneChromaticNumber

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.plane_not_three_colorable"
#check @FormalResearch.HadwigerNelson.plane_not_three_colorable
#print axioms FormalResearch.HadwigerNelson.plane_not_three_colorable

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.sqrt_three_mul_sqrt_eleven"
#check @FormalResearch.HadwigerNelson.sqrt_three_mul_sqrt_eleven
#print axioms FormalResearch.HadwigerNelson.sqrt_three_mul_sqrt_eleven

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.packetCoordinates"
#check @FormalResearch.HadwigerNelson.packetCoordinates
#print axioms FormalResearch.HadwigerNelson.packetCoordinates

#eval IO.println "HNDECL FormalResearch.HadwigerNelson.moserPoint_coordinates"
#check @FormalResearch.HadwigerNelson.moserPoint_coordinates
#print axioms FormalResearch.HadwigerNelson.moserPoint_coordinates

#print FormalResearch.HadwigerNelson.FinitePointColorable

#print FormalResearch.HadwigerNelson.PlaneColorable

#print FormalResearch.HadwigerNelson.ExactPlaneChromaticNumber
```

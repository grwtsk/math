import Color.Admissibility

namespace Color

namespace White

def band : Band :=
  { name := "white",
    namespaceName := "Color.White",
    bitDepth := 8,
    rangeMin := 255,
    rangeMax := 255,
    centroid := whiteCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.white

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.White" := rfl

end White

end Color

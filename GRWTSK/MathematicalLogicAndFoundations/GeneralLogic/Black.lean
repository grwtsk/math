import Color.Admissibility

namespace Color

namespace Black

def band : Band :=
  { name := "black",
    namespaceName := "Color.Black",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 0,
    centroid := blackCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.black

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Black" := rfl

end Black

end Color

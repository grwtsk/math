import Color.Admissibility

namespace Color

namespace Red

def band : Band :=
  { name := "red",
    namespaceName := "Color.Red",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := redCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.red

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Red" := rfl

end Red

end Color

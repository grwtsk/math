import Color.Admissibility

namespace Color

namespace Green

def band : Band :=
  { name := "green",
    namespaceName := "Color.Green",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := greenCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.green

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Green" := rfl

end Green

end Color

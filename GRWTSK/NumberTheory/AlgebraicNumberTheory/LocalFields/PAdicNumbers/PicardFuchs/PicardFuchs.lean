import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.PAdic

def configuredPicardFuchsEquation : String :=
  "d²y/dj² + (1/j)dy/dj + ((31j−4)/(144j²(1−j)²))y = 0"

def picardFuchsGuardrail : String :=
  "Configured equation applies only to the configured elliptic family / j-parameter model."

def gaussManinReferenceTransportLabel : String :=
  "Picard–Fuchs / Gauss–Manin supplies reference transport, not binary output."

end Think.Kakeya.PAdic

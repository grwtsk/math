import SpectralProof.DAGIndex
import SpectralProof.Determinants.ZetaDet
import SpectralProof.Determinants.SpectralMap
import SpectralProof.Equivalences.FinalClosure

open SpectralProof

/-- 
Formal CLI entry point for the canonical spectral determinant project.
Run with `lake exe spectralProof`.
-/
def main : IO Unit := do
  IO.println "=== Spectral Proof Diagnostic ===\n"

  IO.println s!"dagIndex size: {dagIndex.length}"
  IO.println "Known DAG nodes:"
  for (label, thm) in dagIndex do
    IO.println s!"  {label} ↦ {thm}"

  IO.println "\nChecking key definitions..."
  IO.println "spectralMap(ρ) := (ρ - 1/2)/i"
  IO.println "zetaDet T λ := exp(-∑ₙ λⁿ / n · Tr(Tⁿ))"

  IO.println "\n✅ SpectralProof.Main loaded successfully."

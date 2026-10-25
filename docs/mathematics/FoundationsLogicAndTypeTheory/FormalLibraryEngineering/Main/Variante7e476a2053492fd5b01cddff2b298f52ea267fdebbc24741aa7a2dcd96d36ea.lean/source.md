# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variante7e476a2053492fd5b01cddff2b298f52ea267fdebbc24741aa7a2dcd96d36ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c3abfb7f8437e4ddcd7eca0fc1c80a5f753791c` · SHA-256 `e7e476a2053492fd5b01cddff2b298f52ea267fdebbc24741aa7a2dcd96d36ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory

open Cord

/-- A small interpreted receipt that the formalization import surface elaborated. -/
def main : IO Unit := do
  IO.println s!"{theoryIdentifier} {theoryVersion}"
  IO.println s!"{cpccTheoryIdentifier} {cpccTheoryVersion}"
  IO.println s!"{nsrdTheoryIdentifier} {nsrdTheoryVersion}"
  IO.println s!"{interpreterExactnessTheoryIdentifier} {interpreterExactnessTheoryVersion}"
  IO.println s!"{globalReflectionTheoryIdentifier} {globalReflectionTheoryVersion}"
  IO.println s!"{repositoryProbeCoverageProfile} {repositoryProbeCoverageTheoryVersion}"
  IO.println "CORD-THEORY-1 Lean formalization loaded."
  IO.println "CPCC-CST-2 bounded coordination formalization loaded."
  IO.println "CORD-NSRD-1 neural-symbolic reflective construction loaded."
  IO.println "CORD-INTERPRETER-EXACTNESS-1@0.2.0 causal reification exactness formalization loaded."
  IO.println "CORD-GLOBAL-REFLECTION-1@0.3.0-rc.3 finite formalization loaded."
  IO.println "CORD-ONTOLOGY-REPOSITORY-PROBE-COVERAGE-1@1.0.0 finite coverage formalization loaded."
  IO.println "Unbounded or self-authorizing reflection claimed: false"
  IO.println "OI-4 claimed: false"
  IO.println "OI-5 claimed: false"
```

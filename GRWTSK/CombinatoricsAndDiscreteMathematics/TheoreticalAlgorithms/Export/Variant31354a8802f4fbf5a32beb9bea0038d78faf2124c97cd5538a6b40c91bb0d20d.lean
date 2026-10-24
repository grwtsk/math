import CompositeElements.Invariants

/-! # Deterministic formal manifest. -/

namespace URSM.Composite

private def quote (value : String) : String :=
  "\"" ++ value ++ "\""

private def stringArray (values : List String) : String :=
  "[" ++ String.intercalate "," (values.map quote) ++ "]"

private def edgeJson (edge : Nat × Nat) : String :=
  "[" ++ toString edge.1 ++ "," ++ toString edge.2 ++ "]"

private def edgeArray (edges : List (Nat × Nat)) : String :=
  "[" ++ String.intercalate "," (edges.map edgeJson) ++ "]"

private def projectJson (project : ProjectDescriptor) : String :=
  "{" ++
    "\"compiledRoot\":" ++ quote project.compiledRoot ++ "," ++
    "\"packageName\":" ++ quote project.packageName ++ "," ++
    "\"projectId\":" ++ quote project.projectId ++ "," ++
    "\"publicRoot\":" ++ quote project.publicRoot ++ "," ++
    "\"root\":" ++ quote project.root ++ "," ++
    "\"sourcePaths\":" ++ stringArray project.sourcePaths ++
  "}"

def formalManifestJson : String :=
  "{" ++
    "\"conflicts\":" ++ edgeArray conflictEdges ++ "," ++
    "\"conflictValidity\":" ++ edgeArray conflictValidityEdges ++ "," ++
    "\"exactBridges\":" ++ edgeArray exactBridgeEdges ++ "," ++
    "\"formalCertificateRoot\":" ++
      quote phaseOneStaticComposite.formalCertificateRoot ++ "," ++
    "\"imports\":" ++ edgeArray importEdges ++ "," ++
    "\"logicalSide\":" ++ toString projectCount ++ "," ++
    "\"projects\":[" ++
      String.intercalate "," (projectDescriptors.map projectJson) ++ "]," ++
    "\"propertyNaturality\":" ++
      edgeArray propertyNaturalityEdges ++ "," ++
    "\"schema\":\"mathematics.lean-composite-formal/1\"," ++
    "\"transports\":" ++ edgeArray transportEdges ++
  "}"

theorem emitted_project_count_is_kernel_checked :
    projectDescriptors.length = projectCount :=
  projectDescriptors_length

theorem emitted_static_invariants_are_kernel_checked :
    PackageImportAcyclic :=
  phaseOneStaticComposite_valid.1

end URSM.Composite

import CompositeElements.Export

def main (arguments : List String) : IO Unit := do
  match arguments with
  | [output] =>
      IO.FS.writeFile output
        (URSM.Composite.formalManifestJson ++ "\n")
  | _ =>
      throw <| IO.userError
        "usage: emit_composite_manifest OUTPUT.json"

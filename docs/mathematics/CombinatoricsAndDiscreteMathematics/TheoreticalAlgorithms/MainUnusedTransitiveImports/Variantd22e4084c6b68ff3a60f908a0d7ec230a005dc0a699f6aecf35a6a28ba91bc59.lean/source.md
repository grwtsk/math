# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MainUnusedTransitiveImports.Variantd22e4084c6b68ff3a60f908a0d7ec230a005dc0a699f6aecf35a6a28ba91bc59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdd9fd6c42e04fc6dfacf770f2bb96fb5e9884cd` · SHA-256 `d22e4084c6b68ff3a60f908a0d7ec230a005dc0a699f6aecf35a6a28ba91bc59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import ImportGraph.Lean.WithImportModules
public meta import ImportGraph.Imports.Unused

open Lean

/--
`lake exe unused_transitive_imports m1 m2 ...`

For each specified module `m`, prints those `n` from the argument list which are imported, but transitively unused by `m`.
-/
public meta def main (args : List String) : IO UInt32 := do
  let (flags, args) := args.partition (fun s => s.startsWith "-")
  let mut modules := args.map (fun s => s.toName)
  Core.withImportModules modules.toArray do
    let r ← unusedTransitiveImports modules (verbose := flags.contains "-v" || flags.contains "--verbose")
    for (n, u) in r do
      IO.println s!"{n}: {u}"
    return 0
```

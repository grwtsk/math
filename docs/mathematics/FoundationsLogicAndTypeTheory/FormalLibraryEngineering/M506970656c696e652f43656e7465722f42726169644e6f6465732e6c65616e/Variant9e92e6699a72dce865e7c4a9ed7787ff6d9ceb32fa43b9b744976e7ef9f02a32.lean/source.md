# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f42726169644e6f6465732e6c65616e.Variant9e92e6699a72dce865e7c4a9ed7787ff6d9ceb32fa43b9b744976e7ef9f02a32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeae9793b795d4cbf45da6e006fd76a7e827f16b` · SHA-256 `9e92e6699a72dce865e7c4a9ed7787ff6d9ceb32fa43b9b744976e7ef9f02a32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=0010110|role=proof_code_atom|slug=pipeline-center-braidnodes|owner=canonical_owner|core=Pipeline/Center/BraidNodes.lean|leaf=M506970656c696e652f43656e7465722f42726169644e6f6465732e6c65616e.lean -/

set_option autoImplicit false
namespace Think.Braid.Taxonomy

inductive AbstractNode where
  | A0 | A1 | A2 | A3 | A4 | A5 | A6 | A7 | A8
deriving DecidableEq, Repr

inductive ConcreteNode where
  | C0 | C1 | C2 | C3 | C4 | C5 | C6 | C7 | C8
deriving DecidableEq, Repr

end Think.Braid.Taxonomy
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M496d706f7274732f417574686f726974794c6576656c2e6c65616e.Variant748ccb7987e6c0b49c75a462b9e53bb192493630b2615db3f1bf1a251e894bcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cc1cecf287739eb73aed63d5ed513a0d7ba8b4f` · SHA-256 `748ccb7987e6c0b49c75a462b9e53bb192493630b2615db3f1bf1a251e894bcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=10110101|role=proof_code_atom|slug=imports-authoritylevel|owner=canonical_owner|core=Imports/AuthorityLevel.lean|leaf=M496d706f7274732f417574686f726974794c6576656c2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Imports

inductive AuthorityLevel where
  | metadata
  | statementSurface
  | sourceReference
  | importedTheorem
  | adaptedTheorem
  | transferTheorem
  | internalProof
deriving DecidableEq, Repr

end Think.Imports
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Maximizable.Variant522f5b2f8469bca04d9c96b8887b35479a34dd351581ad9bd35d6907a8bc8b9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `977b49d0c2c2a1fba23b2b3e175e7cee6ae48470` · SHA-256 `522f5b2f8469bca04d9c96b8887b35479a34dd351581ad9bd35d6907a8bc8b9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/

module

public import ProofWidgets.Component.Maximizable
public import ProofWidgets.Component.HtmlDisplay

open ProofWidgets Jsx

#html
  <Maximizable>
    <div style={json%{background: "yellow", width: "100%", height: "100px"}}>Maximize me!</div>
  </Maximizable>
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variant528d2ca224df9e2bdef0a1b90e8b15f1dc466330e6759ad80f0d805e95030fbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab4c96535974a27940bf8421122d8a32caf5fac` · SHA-256 `528d2ca224df9e2bdef0a1b90e8b15f1dc466330e6759ad80f0d805e95030fbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import ProofWidgets.Component.HtmlDisplay

public meta section

-- See the `Jsx.lean` demo for more about JSX.
open scoped ProofWidgets.Jsx

/-! # Widgets in macros

Macros may expand to commands or terms that end up saving widget info,
but the syntax to which the widget info is associated must be marked as `canonical`
for the widget to be displayed.
-/

def Lean.SourceInfo.mkCanonical : SourceInfo → SourceInfo
  | .synthetic s e _ => .synthetic s e true
  | si => si

def Lean.Syntax.mkInfoCanonical : Syntax → Syntax
  | .missing => .missing
  | .node i k a => .node i.mkCanonical k a
  | .atom i v => .atom i.mkCanonical v
  | .ident i r v p => .ident i.mkCanonical r v p

def Lean.TSyntax.mkInfoCanonical : TSyntax k → TSyntax k :=
  (.mk ·.raw.mkInfoCanonical)

macro "#browse " src:term : command =>
  Lean.TSyntax.mkInfoCanonical <$>
    `(#html <iframe src={$src} width="100%" height="600px" />)

#browse "https://leanprover-community.github.io/"
-- Do you like recursion?
#browse "https://lean.math.hhu.de"
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delab.Variant428f1dd3350de2308ae53b9f83ca477e830d7c006fd89cd670ea747918d99020

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57be16e5fc8474f0cd102289fb5276ffc4869635` · SHA-256 `428f1dd3350de2308ae53b9f83ca477e830d7c006fd89cd670ea747918d99020`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ProofWidgets.Data.Html

open scoped ProofWidgets.Jsx
open ProofWidgets.Html Lean


/-- info: <span id="greeting">Hello world</span> : ProofWidgets.Html -/
#guard_msgs in
#check <span id="greeting">Hello world</span>

/-- info: <span>Hello interpolated world</span> : ProofWidgets.Html -/
#guard_msgs in
#check <span>Hello {.text "interpolated"} world</span>

/-- info: <span>Hello {text "<>"} world</span> : ProofWidgets.Html -/
#guard_msgs in
#check <span>Hello {.text "<>"} world</span>

/-- info: <hr/> : ProofWidgets.Html -/
#guard_msgs in
#check <hr />

variable (attrs children)
/-- info: <div {...attrs}>{...children}</div> : ProofWidgets.Html -/
#guard_msgs in
#check element "div" attrs children

structure CustomProps where
  val : Nat
  str : String
  deriving Server.RpcEncodable

def CustomComponent : ProofWidgets.Component CustomProps where
  javascript := ""

-- TODO: spacing between attributes
/-- info: <div><CustomComponent val={2}str={"3"}>Content</CustomComponent></div> : ProofWidgets.Html -/
#guard_msgs in
#check <div><CustomComponent val={2} str="3">Content</CustomComponent></div>

def ProdComponent : ProofWidgets.Component (Nat × Nat) where
  javascript := ""

/-- info: <div><ProdComponent {...(1, 2)}/></div> : ProofWidgets.Html -/
#guard_msgs in
#check <div><ProdComponent fst={1} snd={2} /></div>
/-- info: <div><ProdComponent {...(1, 2)}/></div> : ProofWidgets.Html -/
#guard_msgs in
#check <div><ProdComponent {...Prod.mk 1 2}/></div>
/--
info: <div><ProdComponent {...let __src := (1, 2);
          (__src.fst, 3)}/></div> : ProofWidgets.Html
-/
#guard_msgs in
#check <div><ProdComponent {...Prod.mk 1 2} snd={3}/></div>

-- interactive test: check that the hovers in the infoview on subexpressions are correct
#check <span id="test">Hello {.text "<>"} world<CustomComponent val={1} str="3" /></span>
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterDetails.Variant5fc78b97580ac732d68416bcb7c11709d0eb30ca26bf6493b5fb1d43c9e7474f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6c5863a60bd543492d23416d37040569107d421` · SHA-256 `5fc78b97580ac732d68416bcb7c11709d0eb30ca26bf6493b5fb1d43c9e7474f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ProofWidgets.Data.Html

public meta section

namespace ProofWidgets
open Lean

/-- Props for the `FilterDetails` component. -/
structure FilterDetailsProps where
  /-- Contents of the `<summary>`. -/
  summary : Html
  /-- What is shown in the filtered state. -/
  filtered : Html
  /-- What is shown in the non-filtered state. -/
  all : Html
  /-- Whether to start in the filtered state. -/
  initiallyFiltered : Bool := true
  deriving Server.RpcEncodable

/-- The `FilterDetails` component is like a `<details>` HTML element,
but also has a filter button
that allows you to switch between filtered and unfiltered states. -/
@[widget_module]
def FilterDetails : Component FilterDetailsProps where
  javascript := include_str ".." /  ".." / "widget" / "js" / "filterDetails.js"

end ProofWidgets
```

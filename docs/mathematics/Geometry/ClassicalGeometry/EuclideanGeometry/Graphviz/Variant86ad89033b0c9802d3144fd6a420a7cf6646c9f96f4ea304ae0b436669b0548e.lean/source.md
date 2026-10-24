# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Graphviz.Variant86ad89033b0c9802d3144fd6a420a7cf6646c9f96f4ea304ae0b436669b0548e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08ee71bf4afd779f74f558403dba038b2357964e` · SHA-256 `86ad89033b0c9802d3144fd6a420a7cf6646c9f96f4ea304ae0b436669b0548e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/

module

public import ProofWidgets.Component.GraphvizDisplay
public import ProofWidgets.Component.HtmlDisplay

public meta section

open Lean ProofWidgets Jsx

/-! ## Basic usage -/

#html
  <GraphvizDisplay
    dot=r##"
      digraph {
        node [style="filled"]
        a [fillcolor="#d62728", shape="triangle"]
        subgraph cluster_0 { b [fillcolor="#1f77b4", shape="diamond"] }
        subgraph cluster_1 { c [fillcolor="#2ca02c", shape="trapezium"] }
        a -> b, c -> d
      }"## />

/-! ## Interaction

When invoked from JS, `GraphvizDisplay` can be passed event handlers for interactivity. -/

structure ClickNodeDemo.Props where
  colors : Json
  deriving Lean.FromJson, Lean.ToJson

@[widget_module]
def ClickNodeDemo : Component ClickNodeDemo.Props where
  javascript := r#"
    import * as React from 'react'
    import GraphvizDisplay from 'widget_module:hash,GRAPHVIZ_DISPLAY_HASH'

    export default function({ colors }) {
      const [selected, setSelected] = React.useState(null)

      const color = key => {
        if (key === selected) return colors['selected']
        return colors[key]
      }
      const dot = `
        digraph {
          node [style="filled"]
          a [fillcolor="${color('a')}", shape="triangle"]
          b [fillcolor="${color('b')}", shape="diamond"]
          c [fillcolor="${color('c')}", shape="trapezium"]
          a -> b, c
          b -> c
        }`

      const attributer = React.useCallback(function(d) {
        if (d.tag !== 'g' || d.attributes.class !== 'node') return
        d.attributes.cursor = 'pointer'
      }, [])

      const onClickNode = React.useCallback((_ev, d) => {
        if (!('key' in d)) return
        setSelected(old => old === d.key ? null : d.key)
      }, [])

      return React.createElement(GraphvizDisplay, {
        dot,
        options: {},
        attributer,
        onClickNode,
      })
    }
  "#.replace "GRAPHVIZ_DISPLAY_HASH" (toString GraphvizDisplay.javascriptHash)

#html <ClickNodeDemo colors={json%{
    a: "#d62728",
    b: "#1f77b4",
    c: "#2ca02c",
    selected: "#ffffbf"
  }} />

end
```

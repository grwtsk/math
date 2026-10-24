# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Graphviz.Variantf877d27517f23cc91d9566e39f41ea63dc1f695b9dc647a8c80aaf0bb1657f9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de0df998952f11f7a7ba4455e7f7dddae9ccd90b` · SHA-256 `95174365ce9e034d6c6c2fe5c0633a8f6d75ba55b0a3c1272c548247f0395b5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ClickNodeDemoProps.Variant86ad89033b0c9802d3144fd6a420a7cf6646c9f96f4ea304ae0b436669b0548e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86ad89033b0c9802d3144fd6a420a7cf6646c9f96f4ea304ae0b436669b0548e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.ClickNodeDemoProps.Variant86ad89033b0c9802d3144fd6a420a7cf6646c9f96f4ea304ae0b436669b0548e","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"86ad89033b0c9802d3144fd6a420a7cf6646c9f96f4ea304ae0b436669b0548e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/Graph/Graphviz.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/

module

public import ProofWidgets.Component.GraphvizDisplay
public import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ClickNodeDemoProps.Variant86ad89033b0c9802d3144fd6a420a7cf6646c9f96f4ea304ae0b436669b0548e

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

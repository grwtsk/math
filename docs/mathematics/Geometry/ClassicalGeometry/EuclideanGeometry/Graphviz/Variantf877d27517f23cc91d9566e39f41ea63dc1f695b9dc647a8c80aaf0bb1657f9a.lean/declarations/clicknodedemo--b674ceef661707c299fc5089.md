# ClickNodeDemo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72fb5cd2fd682b5f5fef653ce36a4888c07ebef125f44fdb6aa26284a34112d5",
  "kind": "def",
  "lexical_name": "ClickNodeDemo",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "clicknodedemo--b674ceef661707c299fc5089",
  "source": {
    "blob": "de0df998952f11f7a7ba4455e7f7dddae9ccd90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 46,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Graphviz/Variantf877d27517f23cc91d9566e39f41ea63dc1f695b9dc647a8c80aaf0bb1657f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b674ceef661707c299fc508921736754eaf39bae667cc4d0c9f446bb04155f47",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Graphviz/Variantf877d27517f23cc91d9566e39f41ea63dc1f695b9dc647a8c80aaf0bb1657f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72fb5cd2fd682b5f5fef653ce36a4888c07ebef125f44fdb6aa26284a34112d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Graphviz/Variantf877d27517f23cc91d9566e39f41ea63dc1f695b9dc647a8c80aaf0bb1657f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Graphviz/Variantf877d27517f23cc91d9566e39f41ea63dc1f695b9dc647a8c80aaf0bb1657f9a.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de0df998952f11f7a7ba4455e7f7dddae9ccd90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

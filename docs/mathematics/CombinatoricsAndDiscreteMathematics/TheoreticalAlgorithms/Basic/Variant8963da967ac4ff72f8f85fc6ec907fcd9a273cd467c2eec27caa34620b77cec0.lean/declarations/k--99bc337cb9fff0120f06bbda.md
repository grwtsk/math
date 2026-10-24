# K₁₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:910f7f1fb44bdb1b6380e3e5e01c29c8efc83c74123d4e7ef3dda5fcc7cb2c2c",
  "kind": "def",
  "lexical_name": "K₁₀",
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
  "slug": "k--99bc337cb9fff0120f06bbda",
  "source": {
    "blob": "e202754d5185787ac52aa46f2564e2f7c212e4af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8963da967ac4ff72f8f85fc6ec907fcd9a273cd467c2eec27caa34620b77cec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99bc337cb9fff0120f06bbda84367bebf46d850f5590e9ba584494b47f4d621a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8963da967ac4ff72f8f85fc6ec907fcd9a273cd467c2eec27caa34620b77cec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:910f7f1fb44bdb1b6380e3e5e01c29c8efc83c74123d4e7ef3dda5fcc7cb2c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def K₁₀ := complete 10

#html <ForceGraphDisplay
    vertices={K₁₀.1}
    edges={K₁₀.2}
    -- Specify forces here.
    forces={#[
      .link { distance? := some 150 }
    ]}
  />

/-! ### Vertex labels

Arbitrary SVG elements can be used as vertex labels. -/

#html <ForceGraphDisplay
    vertices={#[
      { id := "a"
        -- Specify a label here.
        label := <circle r={5} fill="#ff0000" />
      },
      { id := "b"
        -- Use `<foreignObject>` to draw non-SVG elements.
        label := <foreignObject height={50} width={50}>
          -- TODO: the extra `<p>` node messes up positioning
          <MarkdownDisplay contents="$xyz$" />
        </foreignObject>
      }
    ]}
    edges={#[{ source := "a", target := "b" }]}
  />

/-! ### Edge labels

Arbitrary SVG elements can be used as edge labels. -/

#html <ForceGraphDisplay
    vertices={#["a", "b", "c"].map ({ id := ·})}
    edges={#[
      { source := "a", target := "b"
        -- Specify a label here.
        label? := <g>
          {ForceGraphDisplay.mkCircle #[("r", "10")]}
          <text textAnchor="middle" dominantBaseline="middle">1</text>
        </g>
      },
      { source := "b", target := "c"
        -- Use `<foreignObject>` to draw non-SVG elements.
        label? := <foreignObject height={50} width={50}>
          -- TODO: the extra `<p>` node messes up positioning
          <MarkdownDisplay contents="$e_2$" />
        </foreignObject>
      }
    ]}
    forces={#[
      .link { distance? := some 100 }
    ]}
  />

/-! ### Extra details

A details box with extra information can be displayed below the graph.
Click on vertices and edges to view their details. -/

#html <ForceGraphDisplay
    vertices={#[
      { id := "a"
        -- Specify details here.
        details? := Html.text "Vertex a."
        -- Add class to indicate clickability.
        label := ForceGraphDisplay.mkCircle #[("className", "dim")]
      },
      { id := "b" }
    ]}
    edges={#[
      { source := "a", target := "b"
        details? := Html.text "Edge a → b."
        attrs := #[("className", "dim"), ("strokeWidth", 3)]
      }
    ]}
    -- Set this to display details.
    showDetails={true}
  />

/-! ### Center on vertes

You can center the display on a chosen vertex. -/

#html <ForceGraphDisplay
    vertices={#["a", "b", "c", "d", "e", "f"].map ({id := ·})}
    edges={#[("b","c"), ("d","e"), ("e","f"), ("f","d")].map mkEdge}
    centerOnVertex?={"a"} -- Change me.
  />
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8963da967ac4ff72f8f85fc6ec907fcd9a273cd467c2eec27caa34620b77cec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8963da967ac4ff72f8f85fc6ec907fcd9a273cd467c2eec27caa34620b77cec0.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e202754d5185787ac52aa46f2564e2f7c212e4af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

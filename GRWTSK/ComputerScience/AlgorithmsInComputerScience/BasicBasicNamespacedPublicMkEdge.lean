-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MkEdge.Variant94cc68af73494b94ddb052b6cd2185786a022be8c03f0327e589b4d5afdc4150","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94cc68af73494b94ddb052b6cd2185786a022be8c03f0327e589b4d5afdc4150","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MkEdge.Variant94cc68af73494b94ddb052b6cd2185786a022be8c03f0327e589b4d5afdc4150","mathematical_subject":"Computation.DataStructures","original_sha256":"94cc68af73494b94ddb052b6cd2185786a022be8c03f0327e589b4d5afdc4150","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/Graph/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ProofWidgets.Component.ForceGraphDisplay
public meta import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MkEdge.Variant94cc68af73494b94ddb052b6cd2185786a022be8c03f0327e589b4d5afdc4150

public meta section

/-! ## Directed graphs with `GraphDisplay` -/

open ProofWidgets Jsx

/-! ### Basic usage -/

def mkEdge (st : String × String) : ForceGraphDisplay.Edge := {source := st.1, target := st.2}

-- Place your cursor here.
#html <ForceGraphDisplay
    vertices={#["a", "b", "c", "d", "e", "f"].map ({id := ·})}
    edges={#[("b","c"), ("d","e"), ("e","f"), ("f","d")].map mkEdge}
  />

/-! ### Custom layout

Forces acting on the vertices can be customized
in order to control graph layout. -/

def complete (n : Nat) : Array ForceGraphDisplay.Vertex × Array ForceGraphDisplay.Edge := Id.run do
  let mut verts := #[]
  let mut edges := #[]
  for i in [:n] do
    verts := verts.push {id := toString i}
    for j in [:i] do
      edges := edges.push {source := toString i, target := toString j}
      edges := edges.push {source := toString j, target := toString i}
  return (verts, edges)

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

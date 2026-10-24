# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Svg.Variant6ea5467c0954ccb57add2939d2e1ba048fc72106fbd162eda574fdc8e56db8e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc23f2d1534e2aa35782fad76ddd4e61ff8b79f9` · SHA-256 `13546c0333e5cd6752e4f4b59761a56a4b97687c46390388e26eefcfe04a801c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variantdeb6f33208dd23fb51c730c1f5e3cfe1d26b36f6d935183ef097d32f4f02dc1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"deb6f33208dd23fb51c730c1f5e3cfe1d26b36f6d935183ef097d32f4f02dc1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Frame.Variantdeb6f33208dd23fb51c730c1f5e3cfe1d26b36f6d935183ef097d32f4f02dc1b","mathematical_subject":"Computation.DataStructures","original_sha256":"deb6f33208dd23fb51c730c1f5e3cfe1d26b36f6d935183ef097d32f4f02dc1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/proofwidgets/ProofWidgets/Data/Svg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Data.Html


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variantdeb6f33208dd23fb51c730c1f5e3cfe1d26b36f6d935183ef097d32f4f02dc1b

public meta section

namespace ProofWidgets
open Lean Std

private def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variantdeb6f33208dd23fb51c730c1f5e3cfe1d26b36f6d935183ef097d32f4f02dc1b.Float.toInt (x : Float) : Int :=
  if x >= 0 then
    x.toUInt64.toNat
  else
    -((-x).toUInt64.toNat)

namespace Svg

structure Frame where
  (xmin ymin : Float)
  (xSize : Float)
  (width height : Nat)
  deriving ToJson, FromJson

def Frame.ySize (frame : Frame) : Float := frame.height.toFloat * (frame.xSize / frame.width.toFloat)

def Frame.xmax (frame : Frame) : Float := frame.xmin + frame.xSize
def Frame.ymax (frame : Frame) : Float := frame.ymin + frame.ySize
def Frame.pixelSize (frame : Frame) : Float := frame.xSize / frame.width.toFloat

structure Color where
  (r := 0.0)
  (g := 0.0)
  (b := 0.0)
  deriving ToJson, FromJson

instance : Coe (Float×Float×Float) Color := ⟨λ (r,g,b) => ⟨r,g,b⟩⟩

/-- Returns string "rgb(r, g, b)" with `r,g,b ∈ [0,...,256)` -/
def Color.toStringRGB (c : Color) : String := s!"rgb({255*c.r}, {255*c.g}, {255*c.b})"

inductive Point (f : Frame) where
  | px   (i j : Int)
  | abs  (x y : Float)
  deriving Inhabited, ToJson, FromJson

instance (f) : Coe (Float×Float) (Point f) := ⟨λ (x,y) => .abs x y⟩
instance (f) : Coe (Int×Int) (Point f) := ⟨λ (i,j) => .px i j⟩

def Point.toPixels {f : Frame} (p : Point f) : Int × Int :=
  match p with
  | .px x y => (x,y)
  | .abs x y =>
    let Δx := f.pixelSize
    let i := ((x - f.xmin) / Δx).floor.toInt
    let j := ((f.ymax - y) / Δx).floor.toInt
    (i, j)

def Point.toAbsolute {f : Frame} (p : Point f) : Float × Float :=
  match p with
  | .abs x y => (x,y)
  | .px  i j =>
    let Δx := f.pixelSize
    let x := f.xmin + (i.toFloat + 0.5) * Δx
    let y := f.ymax - (j.toFloat + 0.5) * Δx
    (x,y)

inductive Size (f : Frame) where
  | px   (size : Nat)   : Size f
  | abs  (size : Float) : Size f
  deriving ToJson, FromJson

def Size.toPixels {f : Frame} (s : Size f) : Nat :=
  match s with
  | .px  x => x
  | .abs x => (x / f.pixelSize).ceil.toUInt64.toNat

-- inductive PolylineType

inductive Shape (f : Frame) where
  | line     (src trg : Point f)
  | circle   (center : Point f) (radius : Size f)
  | polyline (points : Array (Point f)) -- (type : PolylineType)
  | polygon  (points : Array (Point f))
  | path     (d : String)
  | ellipse  (center : Point f) (rx ry : Size f)
  | rect     (corner : Point f) (width height : Size f)
  | text     (pos : Point f) (content : String) (size : Size f)


  deriving ToJson, FromJson

def Shape.toHtmlData {f : Frame} : Shape f → String × Array (String × Json)
  | .line src trg =>
    let (x1,y1) := src.toPixels
    let (x2,y2) := trg.toPixels
    ("line", #[("x1", x1), ("y1", y1), ("x2", x2), ("y2", y2)])
  | .circle center radius =>
    let (cx,cy) := center.toPixels
    let r := radius.toPixels
    ("circle", #[("cx", cx), ("cy", cy), ("r", r)])
  | .polyline points =>
    let pts := points
        |>.map (λ p => let (x,y) := p.toPixels; s!"{x},{y}")
        |>.foldl (init := "") (λ s p => s ++ " " ++ p)
    ("polyline", #[("points", pts)])
  | .polygon points =>
    let pts := points
        |>.map (λ p => let (x,y) := p.toPixels; s!"{x},{y}")
        |>.foldl (init := "") (λ s p => s ++ " " ++ p)
    ("polygon", #[("fillRule", "nonzero"), ("points", pts)])
  | .path d =>
      ("path", #[("d", d)])
  | .ellipse center rx ry =>
    let (cx,cy) := center.toPixels
    let rX := rx.toPixels
    let rY := ry.toPixels
    ("ellipse", #[("cx", cx), ("cy", cy), ("rx", rX), ("ry", rY)])
  | .rect corner width height =>
    let (x,y) := corner.toPixels
    let w := width.toPixels
    let h := height.toPixels
    ("rect", #[("x", x), ("y", y), ("width", w), ("height", h)])
  | .text pos content size =>
    let (x,y) := pos.toPixels
    let fontSize := size.toPixels
    ("text", #[("x", x), ("y", y), ("font-size", fontSize), ("text", content)])

structure Element (f : Frame) where
  shape : Shape f
  strokeColor := (none : Option Color)
  strokeWidth := (none : Option (Size f))
  fillColor   := (none : Option Color)
  id          := (none : Option String)
  data        := (none : Option Json)
  deriving ToJson, FromJson

def Element.setStroke {f} (elem : Element f) (color : Color) (width : Size f) :=
  { elem with strokeColor := some color, strokeWidth := some width }

def Element.setFill {f} (elem : Element f) (color : Color) :=
  { elem with fillColor := some color }

def Element.setId {f} (elem : Element f) (id : String) :=
  { elem with id := some id }

def Element.setData {α : Type} {f} (elem : Element f) (a : α) [ToJson α] :=
  { elem with data := some (toJson a) }

def Element.toHtml {f : Frame} (e : Element f) : Html := Id.run do
  let mut (tag, args) := e.shape.toHtmlData
  let mut children := #[]

  if let .text _ content _ := e.shape then
    children := #[.text content]  -- adding children <text>

  if let .some color := e.strokeColor then
    args := args.push ("stroke", color.toStringRGB)

  if let .some width := e.strokeWidth then
    args := args.push ("strokeWidth", width.toPixels)

  if let .some color := e.fillColor then
    args := args.push ("fill", color.toStringRGB)
  else
    args := args.push ("fill", "none")

  if let .some id := e.id then
    args := args.push ("id", id)

  if let .some data := e.data then
    args := args.push ("data", data)

  return .element tag args children

def line {f} (p q : Point f) : Element f := { shape := .line p q }
def circle {f} (c : Point f) (r : Size f) : Element f := { shape := .circle c r }
def polyline {f} (pts : Array (Point f)) : Element f := { shape := .polyline pts }
def polygon {f} (pts : Array (Point f)) : Element f := { shape := .polygon pts }
def path {f} (d : String) : Element f := { shape := .path d }
def ellipse {f} (center : Point f) (rx ry : Size f) : Element f :=
  { shape := .ellipse center rx ry }
def rect {f} (corner : Point f) (width height : Size f) : Element f :=
  { shape := .rect corner width height }
def text {f} (pos : Point f) (content : String) (size : Size f) : Element f :=
  { shape := .text pos content size }

end Svg

def mkIdToIdx {f} (elements : Array (Svg.Element f)) : Std.HashMap String (Fin elements.size) :=
  let idToIdx := elements
    |>.mapFinIdx (λ idx el h => (⟨idx, h⟩, el)) -- zip with `Fin` index
    |>.filterMap (λ (idx,el) => el.id.map (λ id => (id, idx))) -- keep only elements with specified id
    |>.toList
    |> Std.HashMap.ofList
  idToIdx

structure Svg (f : Svg.Frame) where
  elements : Array (Svg.Element f)
  idToIdx := mkIdToIdx elements

namespace Svg

open scoped ProofWidgets.Jsx

def toHtml {f : Frame} (svg : Svg f) : Html :=
  <svg xmlns="http://www.w3.org/2000/svg" version="1.1"
       width={f.width} height={f.height}>
    {... svg.elements.map (·.toHtml)}
  </svg>

def idToDataList {f} (svg : Svg f) : List (String × Json) :=
  svg.elements.foldr (init := []) (λ e l =>
    match e.id, e.data with
    | some id, some data => (id,data)::l
    | _, _ => l)

def idToData {f} (svg : Svg f) : Std.HashMap String Json :=
  HashMap.ofList svg.idToDataList

instance {f} : GetElem (Svg f) Nat (Svg.Element f) (λ svg idx => idx < svg.elements.size) where
  getElem svg i h := svg.elements[i]

instance {f} : GetElem (Svg f) String (Option (Svg.Element f)) (λ _ _ => True) where
  getElem svg id _ := svg.idToIdx[id]?.map (λ idx => svg.elements[idx])

def getData {f} (svg : Svg f) (id : String) : Option Json :=
  match svg[id] with
  | none => none
  | some elem => elem.data

end Svg
end ProofWidgets
```

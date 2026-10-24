# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantfbff82e2d9987468414aeaf7d6f479e21434a6e6a5dea6758b744fe2e7fd338f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4a69d6feb0ec79de8836f9640c0469a281c4bde` · SHA-256 `a279bf0a02d2413351d6494a84efc5ae3d4950ae00121ef799d48e77f5235d7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Terrain.Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Terrain.Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Fintype.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Terrain.Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5

set_option linter.dupNamespace false

/-!
# Finite declarative terrain carriers

This module contains only the finite, mathematical carrier used by the terrain
layer.  A `Terrain` is an undirected loop-free adjacency relation presented by
exact finite neighbour lists.  Geometry, raster values, executable caches, and
arithmetic-prismatic data are deliberately not part of this carrier.
-/

universe u v

namespace DAF.Terrain

/-- A finite undirected, loop-free terrain graph. -/
structure Terrain (V : Type u) [Fintype V] [DecidableEq V] where
  neighbors : V → Finset V
  adjacency_symmetric : ∀ {v w}, w ∈ neighbors v ↔ v ∈ neighbors w
  irreflexive : ∀ v, v ∉ neighbors v

namespace Terrain

/-- The named adjacency proposition of a terrain. -/
def Adjacent {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) (v w : V) : Prop :=
  w ∈ T.neighbors v

theorem adjacent_comm {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) {v w : V} :
    T.Adjacent v w ↔ T.Adjacent w v :=
  T.adjacency_symmetric

theorem not_adjacent_self {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) (v : V) :
    ¬ T.Adjacent v v :=
  T.irreflexive v

end Terrain

/-- Values carried by an exact finite terrain carrier. -/
structure TerrainSection {V : Type u} [Fintype V] [DecidableEq V]
    (T : Terrain V) (Value : Type v) where
  value : V → Value

/-- Stable typed information explaining why a requested capability is absent. -/
structure Obstruction (Kind : Type u) where
  kind : Kind
  identifier : String
  detail : String
  unresolvedObligations : List String
  deriving Repr

end DAF.Terrain
```

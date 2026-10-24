-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.KnownMaximalState.Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.KnownMaximalState.Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/GlobalReference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.Core
import Mathlib.Data.Fintype.Card

/-!
# Known maximal global terrain state

The global reference is fixed before any local query is evaluated.  Its finite
coordinate type, decidable equality, and enumeration are carried as data so
clients install them locally instead of creating orphan global instances.  The
equivalence with `Fin cardinality` makes the declared bound exact.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.KnownMaximalState.Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b

universe u v

namespace DAF.Terrain

/-- One fixed maximal finite state with an absolute coordinate frame. -/
structure KnownMaximalState (State : Type u) where
  Coord : Type v
  coordFintype : Fintype Coord
  coordDecEq : DecidableEq Coord
  cardinality : Nat
  absoluteIndex : Coord ≃ Fin cardinality
  reference : Coord → State

namespace KnownMaximalState

variable {State : Type u} (G : KnownMaximalState State)

/-- The carried enumeration has exactly the declared cardinality. -/
theorem card_coord :
    @Fintype.card G.Coord G.coordFintype = G.cardinality := by
  letI : Fintype G.Coord := G.coordFintype
  simpa using Fintype.card_congr G.absoluteIndex

/-- Absolute indexing is injective, so a local carrier never aliases coordinates. -/
theorem absoluteIndex_injective : Function.Injective G.absoluteIndex :=
  G.absoluteIndex.injective

/-- Absolute indexing is surjective onto the entire declared coordinate bound. -/
theorem absoluteIndex_surjective : Function.Surjective G.absoluteIndex :=
  G.absoluteIndex.surjective

end KnownMaximalState

end DAF.Terrain

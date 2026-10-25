# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeMomentPackets.Variant21c4beb6b8c86f40d09b0d7cc2c657ccd8f1ed0a2579e7107b5b296b8463ba50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ad8dde2e9ba8a755b9c5f3536b4d60d8ff37f53` · SHA-256 `54e85f4f0a46c522d39d05e0afde3c24d0d53aa2bb79e7a26b24ea170aeb9e62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WangZahlGeometryForFrame.Variantff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WangZahlGeometryForFrame.Variantff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeMomentPackets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeLattice.PolarizedGram
public import Surface.Core.PrimeWalkWangZahlGeometry
public import Mathlib.Data.ENNReal.Basic
import Mathlib.Tactic

/-!
# Fixed conductor-three moment packet routes

The coefficient-to-packet frame is chosen once per arithmetic scale.  It is
independent of the later BV multiplier and of the requested epsilon loss.
Only proof-side constants and exceptional-set arguments may depend on
epsilon.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WangZahlGeometryForFrame.Variantff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251

public section

namespace Surface.Core.ConductorThreeMomentPackets

noncomputable section

open scoped ENNReal
open Surface.Core.PrimeLattice.MomentPath
open Surface.Core.PrimeWalkWangZahlGeometry

/-- Concrete nonempty Euclidean tube geometry covering every packet atom.
The convex Wolff certificate is unsigned and contains no arithmetic bound. -/
structure WangZahlGeometryForFrame {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) where
  atomDecidableEq : DecidableEq frame.Atom
  family : @EuclideanShadedTubeFamily frame.Atom atomDecidableEq
  tubes_eq_univ : family.tubes = @Finset.univ frame.Atom
    frame.atomFintype
  tubes_nonempty : family.tubes.Nonempty
  wolffConstant : ℝ≥0∞
  convexWolff : KatzTaoConvexWolffAtMost family wolffConstant

/-- A fixed frame family and power-law tube scale.  No estimate is a field. -/
structure ConductorThreePrimeMomentRoute where
  frame : (N : ℕ) → ConductorThreeCoefficientPacketFrame N
  geometricExponent : ℝ
  geometricExponent_pos : 0 < geometricExponent
  geometricScale : ℕ → ℝ
  geometricScale_law : ∀ N,
    geometricScale N = (N + 2 : ℝ) ^ (-geometricExponent)
  wangZahlGeometry : ∀ N, 2 ≤ N →
    Nonempty (WangZahlGeometryForFrame (frame N))

/-- The geometric scale is positive at every arithmetic scale. -/
@[surface_novel, surface_published]
theorem ConductorThreePrimeMomentRoute.geometricScale_pos
    (route : ConductorThreePrimeMomentRoute) (N : ℕ) :
    0 < route.geometricScale N := by
  rw [route.geometricScale_law]
  positivity

end

end Surface.Core.ConductorThreeMomentPackets
```

# Complete source: GRWTSK.Topology.GeneralTopology.DependencyInvariant.Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94d5401f4a44d8e06b176cbb070e400ce0cc408a` · SHA-256 `61dafd7774e83ee4435d6dfad11f7da8b7528eb987f8c3bf086382a527b79e08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.GaloisCohomologyLayer.Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.GaloisCohomologyLayer.Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/GaloisCohomology/DependencyInvariant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.GaloisCohomology.Selmer


namespace GRWTSK.Topology.GeneralTopology.GaloisCohomologyLayer.Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6

namespace Surface.Arithmetic
namespace GaloisCohomology

/-!
# Dependency invariant for finite Galois cohomology

What is formalized:
An audit-facing dependency order for the Galois-cohomology/Selmer program.
Finite `H1`, restriction, and abstract Selmer are strictly earlier than
abstract Kummer maps, Selmer exactness, continuous adapters, and absolute
Galois adapters.

What is certificate-gated:
Nothing here is an arithmetic theorem.  This file records the required order of
future construction layers so downstream BSD-facing code cannot treat
continuous or absolute Galois machinery as the foundation before the finite
substrate exists.

What is not claimed:
This file does not construct Kummer maps, Selmer exact sequences, continuous
cohomology, absolute Galois groups, local fields, elliptic curves, Sha, or BSD.
-/

/-- Ordered construction layers for the Galois-cohomology program. -/
inductive GaloisCohomologyLayer where
  | finiteH1
  | restriction
  | abstractSelmer
  | abstractKummer
  | selmerExact
  | continuousAdapter
  | absoluteGaloisAdapter
deriving Repr, DecidableEq

namespace GaloisCohomologyLayer

/-- Numeric rank used only for proof-checked dependency ordering. -/
def rank : GaloisCohomologyLayer → Nat
  | finiteH1 => 0
  | restriction => 1
  | abstractSelmer => 2
  | abstractKummer => 3
  | selmerExact => 4
  | continuousAdapter => 5
  | absoluteGaloisAdapter => 6

/-- `A` must be constructed before `B`. -/
def Before (A B : GaloisCohomologyLayer) : Prop :=
  A.rank < B.rank

theorem finiteH1_before_restriction :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      GaloisCohomologyLayer.restriction := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem restriction_before_abstractSelmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      GaloisCohomologyLayer.abstractSelmer := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem abstractSelmer_before_abstractKummer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.abstractKummer := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem abstractKummer_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractKummer
      GaloisCohomologyLayer.selmerExact := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem selmerExact_before_continuousAdapter :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.selmerExact
      GaloisCohomologyLayer.continuousAdapter := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem continuousAdapter_before_absoluteGaloisAdapter :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.continuousAdapter
      GaloisCohomologyLayer.absoluteGaloisAdapter := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem finiteH1_before_abstractKummer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      GaloisCohomologyLayer.abstractKummer := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem restriction_before_abstractKummer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      GaloisCohomologyLayer.abstractKummer := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem finiteH1_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      GaloisCohomologyLayer.selmerExact := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem restriction_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      GaloisCohomologyLayer.selmerExact := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem abstractSelmer_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.selmerExact := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem abstractSelmer_before_continuousAdapter :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.continuousAdapter := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

theorem abstractSelmer_before_absoluteGaloisAdapter :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.absoluteGaloisAdapter := by
  simp [GaloisCohomologyLayer.Before, GaloisCohomologyLayer.rank]

end GaloisCohomologyLayer

/--
Frozen GHC dependency invariant.

The fields are checked propositions, not prose policy.  They keep the current
middle-out order visible to audit tooling: finite `H1` and restriction first,
then abstract Selmer, then Kummer/exactness, then continuous and absolute
Galois adapters.
-/
structure GHCDependencyInvariant where
  finiteH1_before_restriction :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      GaloisCohomologyLayer.restriction
  restriction_before_abstractSelmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      GaloisCohomologyLayer.abstractSelmer
  finiteH1_before_abstractKummer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      GaloisCohomologyLayer.abstractKummer
  restriction_before_abstractKummer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      GaloisCohomologyLayer.abstractKummer
  abstractSelmer_before_abstractKummer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.abstractKummer
  finiteH1_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      GaloisCohomologyLayer.selmerExact
  restriction_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      GaloisCohomologyLayer.selmerExact
  abstractSelmer_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.selmerExact
  abstractKummer_before_selmerExact :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractKummer
      GaloisCohomologyLayer.selmerExact
  abstractSelmer_before_continuousAdapter :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.continuousAdapter
  abstractSelmer_before_absoluteGaloisAdapter :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.absoluteGaloisAdapter
  continuousAdapter_before_absoluteGaloisAdapter :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.continuousAdapter
      GaloisCohomologyLayer.absoluteGaloisAdapter
  boundary : List String

/-- The current checked dependency invariant for GHC-1a and its adapters. -/
def ghc1aDependencyInvariant : GHCDependencyInvariant where
  finiteH1_before_restriction :=
    GaloisCohomologyLayer.finiteH1_before_restriction
  restriction_before_abstractSelmer :=
    GaloisCohomologyLayer.restriction_before_abstractSelmer
  finiteH1_before_abstractKummer :=
    GaloisCohomologyLayer.finiteH1_before_abstractKummer
  restriction_before_abstractKummer :=
    GaloisCohomologyLayer.restriction_before_abstractKummer
  abstractSelmer_before_abstractKummer :=
    GaloisCohomologyLayer.abstractSelmer_before_abstractKummer
  finiteH1_before_selmerExact :=
    GaloisCohomologyLayer.finiteH1_before_selmerExact
  restriction_before_selmerExact :=
    GaloisCohomologyLayer.restriction_before_selmerExact
  abstractSelmer_before_selmerExact :=
    GaloisCohomologyLayer.abstractSelmer_before_selmerExact
  abstractKummer_before_selmerExact :=
    GaloisCohomologyLayer.abstractKummer_before_selmerExact
  abstractSelmer_before_continuousAdapter :=
    GaloisCohomologyLayer.abstractSelmer_before_continuousAdapter
  abstractSelmer_before_absoluteGaloisAdapter :=
    GaloisCohomologyLayer.abstractSelmer_before_absoluteGaloisAdapter
  continuousAdapter_before_absoluteGaloisAdapter :=
    GaloisCohomologyLayer.continuousAdapter_before_absoluteGaloisAdapter
  boundary := [
    "Finite H1, restriction, and abstract Selmer precede Kummer adapters.",
    "Finite Selmer precedes continuous and absolute Galois adapters.",
    "No elliptic-curve, BSD, continuous, absolute-Galois, or Legacy import is used."
  ]

theorem ghc1a_kummer_depends_after_selmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.abstractKummer :=
  ghc1aDependencyInvariant.abstractSelmer_before_abstractKummer

theorem ghc1a_selmerExact_depends_after_kummer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractKummer
      GaloisCohomologyLayer.selmerExact :=
  ghc1aDependencyInvariant.abstractKummer_before_selmerExact

theorem ghc1a_selmerExact_depends_after_finiteH1 :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      GaloisCohomologyLayer.selmerExact :=
  ghc1aDependencyInvariant.finiteH1_before_selmerExact

theorem ghc1a_selmerExact_depends_after_restriction :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      GaloisCohomologyLayer.selmerExact :=
  ghc1aDependencyInvariant.restriction_before_selmerExact

theorem ghc1a_selmerExact_depends_after_abstractSelmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.selmerExact :=
  ghc1aDependencyInvariant.abstractSelmer_before_selmerExact

theorem ghc1a_continuous_depends_after_selmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.continuousAdapter :=
  ghc1aDependencyInvariant.abstractSelmer_before_continuousAdapter

theorem ghc1a_absolute_depends_after_selmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.absoluteGaloisAdapter :=
  ghc1aDependencyInvariant.abstractSelmer_before_absoluteGaloisAdapter

theorem ghc1a_absolute_depends_after_continuous :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.continuousAdapter
      GaloisCohomologyLayer.absoluteGaloisAdapter :=
  ghc1aDependencyInvariant.continuousAdapter_before_absoluteGaloisAdapter

/-!
## Downstream audit names

The theorem-facing arithmetic layers use their own mathematical declarations,
but audit tooling needs stable names for the forbidden dependency inversion:
local Kummer, weak descent, Sha, and BSD-facing theorem inputs may not be
treated as preceding the finite `H1`/restriction/Selmer substrate.
-/

/-- Downstream consumers that must not bypass the finite Selmer substrate. -/
inductive DownstreamArithmeticConsumer where
  | localKummer
  | weakDescent
  | tateShafarevich
  | bsdFacingTheorem
deriving Repr, DecidableEq

namespace DownstreamArithmeticConsumer

/-- The earliest Galois-cohomology layer a downstream consumer may use. -/
def targetLayer : DownstreamArithmeticConsumer → GaloisCohomologyLayer
  | localKummer => GaloisCohomologyLayer.abstractKummer
  | weakDescent => GaloisCohomologyLayer.selmerExact
  | tateShafarevich => GaloisCohomologyLayer.selmerExact
  | bsdFacingTheorem => GaloisCohomologyLayer.selmerExact

/-- The finite substrate required before a downstream consumer is admissible. -/
def FiniteSubstrateBefore (c : DownstreamArithmeticConsumer) : Prop :=
  GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.finiteH1
      c.targetLayer ∧
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.restriction
      c.targetLayer ∧
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      c.targetLayer

theorem localKummer_requires_finiteSubstrate :
    DownstreamArithmeticConsumer.localKummer.FiniteSubstrateBefore := by
  simp [
    FiniteSubstrateBefore,
    targetLayer,
    GaloisCohomologyLayer.Before,
    GaloisCohomologyLayer.rank
  ]

theorem weakDescent_requires_finiteSubstrate :
    DownstreamArithmeticConsumer.weakDescent.FiniteSubstrateBefore := by
  simp [
    FiniteSubstrateBefore,
    targetLayer,
    GaloisCohomologyLayer.Before,
    GaloisCohomologyLayer.rank
  ]

theorem tateShafarevich_requires_finiteSubstrate :
    DownstreamArithmeticConsumer.tateShafarevich.FiniteSubstrateBefore := by
  simp [
    FiniteSubstrateBefore,
    targetLayer,
    GaloisCohomologyLayer.Before,
    GaloisCohomologyLayer.rank
  ]

theorem bsdFacingTheorem_requires_finiteSubstrate :
    DownstreamArithmeticConsumer.bsdFacingTheorem.FiniteSubstrateBefore := by
  simp [
    FiniteSubstrateBefore,
    targetLayer,
    GaloisCohomologyLayer.Before,
    GaloisCohomologyLayer.rank
  ]

theorem all_requires_finiteSubstrate
    (c : DownstreamArithmeticConsumer) :
    c.FiniteSubstrateBefore := by
  cases c
  · exact localKummer_requires_finiteSubstrate
  · exact weakDescent_requires_finiteSubstrate
  · exact tateShafarevich_requires_finiteSubstrate
  · exact bsdFacingTheorem_requires_finiteSubstrate

end DownstreamArithmeticConsumer

/--
Audit theorem freezing the referee invariant: local Kummer, weak descent, Sha,
and BSD-facing theorem inputs all require finite `H1`, restriction, and abstract
Selmer first.
-/
theorem ghc1a_downstream_consumers_require_finite_substrate
    (c : DownstreamArithmeticConsumer) :
    c.FiniteSubstrateBefore :=
  DownstreamArithmeticConsumer.all_requires_finiteSubstrate c

/--
Continuous and absolute-Galois adapters remain downstream adapters, not sources
of local Kummer, Sha, weak descent, or BSD authority.
-/
theorem ghc1a_continuous_and_absolute_are_after_finite_selmer :
    GaloisCohomologyLayer.Before
        GaloisCohomologyLayer.abstractSelmer
        GaloisCohomologyLayer.continuousAdapter ∧
      GaloisCohomologyLayer.Before
        GaloisCohomologyLayer.abstractSelmer
        GaloisCohomologyLayer.absoluteGaloisAdapter :=
  ⟨ghc1a_continuous_depends_after_selmer,
    ghc1a_absolute_depends_after_selmer⟩

end GaloisCohomology
end Surface.Arithmetic
```

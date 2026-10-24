# Complete source: GRWTSK.Topology.GeneralTopology.Continuous.Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55ba8a123e74f141beb0e159c1827531ae5cc421` · SHA-256 `66d43f178b7db1fccc3361df5ffc7f35c04f91269b63596c834ebc8283bc3e7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ProfiniteGroupLike.Variant8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ProfiniteGroupLike.Variant8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/GaloisCohomology/Continuous.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.GaloisCohomology.DependencyInvariant


namespace GRWTSK.Topology.GeneralTopology.ProfiniteGroupLike.Variant8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335

namespace Surface.Arithmetic
namespace GaloisCohomology

universe u

/-!
# Continuous finite Galois-cohomology adapters

What is formalized:
A controlled adapter from a continuous finite Galois-module interface to the
already constructed finite `H1` substrate.  The continuous action is required
to factor through an explicit finite quotient, and `ContinuousH1` is the finite
`H1` of that quotient.

What is certificate-gated:
Continuity and factorization through the finite quotient are explicit
Prop-valued theorem inputs on the adapter record.  This file does not build
absolute Galois groups or topological cochain complexes.

What is not claimed:
No local or global absolute Galois group is constructed.  No Kummer exact
sequence, Selmer exact sequence, Sha group, Mordell-Weil descent theorem, or BSD
statement is proved here.

Dependency invariant:
This file imports the finite GHC substrate and the checked dependency invariant.
It is downstream of finite `H1`, restriction, and abstract Selmer.
-/

/-- Minimal topological-group label for a continuous finite adapter. -/
structure ProfiniteGroupLike where
  carrierLabel : String
  topologyLabel : String
  compact : Prop
  compactCertified : compact
  totallyDisconnected : Prop
  totallyDisconnectedCertified : totallyDisconnected
  boundary : List String

/--
A finite discrete module with a continuous action factoring through a finite
quotient.

The action used for cohomology is the action of `finiteQuotient` on
`coefficients`.  The topological input is deliberately recorded only as an
adapter certificate here.
-/
structure ContinuousFiniteGaloisModule
    (A : FiniteAddCommGroup.{u}) where
  G : ProfiniteGroupLike
  finiteQuotient : FiniteGroupData.{u}
  action : AdditiveAction finiteQuotient A
  quotientMapLabel : String
  actionContinuous : Prop
  actionContinuousCertified : actionContinuous
  factorsThroughFiniteQuotient : Prop
  factorsThroughFiniteQuotientCertified :
    factorsThroughFiniteQuotient
  boundary : List String

/--
Continuous degree-one cohomology for a finite discrete module that factors
through a finite quotient.

This is intentionally an abbreviation of the constructed finite `H1`; the
comparison theorem below records that no independent placeholder cohomology
object is introduced.
-/
abbrev ContinuousH1
    {A : FiniteAddCommGroup.{u}}
    (M : ContinuousFiniteGaloisModule.{u} A) : Type u :=
  FiniteH1 M.finiteQuotient A M.action

theorem continuousH1_eq_finiteH1_of_factorsThroughFiniteQuotient
    {A : FiniteAddCommGroup.{u}}
    (M : ContinuousFiniteGaloisModule.{u} A)
    (_h : M.factorsThroughFiniteQuotient) :
    ContinuousH1 M =
      FiniteH1 M.finiteQuotient A M.action := by
  rfl

theorem ContinuousFiniteGaloisModule.factorsThrough
    {A : FiniteAddCommGroup.{u}}
    (M : ContinuousFiniteGaloisModule.{u} A) :
    M.factorsThroughFiniteQuotient :=
  M.factorsThroughFiniteQuotientCertified

theorem ContinuousFiniteGaloisModule.action_is_continuous
    {A : FiniteAddCommGroup.{u}}
    (M : ContinuousFiniteGaloisModule.{u} A) :
    M.actionContinuous :=
  M.actionContinuousCertified

/--
Restriction data between two continuous finite adapters.

The theorem-facing map on cohomology is the finite restriction map induced by
the finite quotient action homomorphism.
-/
structure ContinuousFiniteRestriction
    {A : FiniteAddCommGroup.{u}}
    (H G : ContinuousFiniteGaloisModule.{u} A) where
  finiteRestriction :
    ActionHom H.action G.action
  quotientMapCompatible : Prop
  quotientMapCompatibleCertified :
    quotientMapCompatible
  continuous : Prop
  continuousCertified : continuous
  boundary : List String

def resContinuousH1
    {A : FiniteAddCommGroup.{u}}
    {H G : ContinuousFiniteGaloisModule.{u} A}
    (R : ContinuousFiniteRestriction H G) :
    ContinuousH1 G → ContinuousH1 H :=
  resFiniteH1 R.finiteRestriction

theorem resContinuousH1_value
    {A : FiniteAddCommGroup.{u}}
    {H G : ContinuousFiniteGaloisModule.{u} A}
    (R : ContinuousFiniteRestriction H G)
    (c : ContinuousH1 G) :
    resContinuousH1 R c =
      resFiniteH1 R.finiteRestriction c := by
  rfl

def ContinuousFiniteRestriction.id
    {A : FiniteAddCommGroup.{u}}
    (M : ContinuousFiniteGaloisModule.{u} A) :
    ContinuousFiniteRestriction M M where
  finiteRestriction := ActionHom.id M.action
  quotientMapCompatible := True
  quotientMapCompatibleCertified := trivial
  continuous := True
  continuousCertified := trivial
  boundary := [
    "Identity continuous finite restriction.",
    "Cohomology restriction is the finite identity restriction."
  ]

def ContinuousFiniteRestriction.comp
    {A : FiniteAddCommGroup.{u}}
    {K H G : ContinuousFiniteGaloisModule.{u} A}
    (R : ContinuousFiniteRestriction H G)
    (S : ContinuousFiniteRestriction K H) :
    ContinuousFiniteRestriction K G where
  finiteRestriction := ActionHom.comp R.finiteRestriction S.finiteRestriction
  quotientMapCompatible := R.quotientMapCompatible ∧ S.quotientMapCompatible
  quotientMapCompatibleCertified :=
    ⟨R.quotientMapCompatibleCertified, S.quotientMapCompatibleCertified⟩
  continuous := R.continuous ∧ S.continuous
  continuousCertified := ⟨R.continuousCertified, S.continuousCertified⟩
  boundary :=
    R.boundary ++ S.boundary ++
      ["Composed continuous finite restriction through finite quotient maps."]

theorem resContinuousH1_id
    {A : FiniteAddCommGroup.{u}}
    (M : ContinuousFiniteGaloisModule.{u} A)
    (c : ContinuousH1 M) :
    resContinuousH1 (ContinuousFiniteRestriction.id M) c = c := by
  exact resFiniteH1_id c

theorem resContinuousH1_comp
    {A : FiniteAddCommGroup.{u}}
    {K H G : ContinuousFiniteGaloisModule.{u} A}
    (R : ContinuousFiniteRestriction H G)
    (S : ContinuousFiniteRestriction K H)
    (c : ContinuousH1 G) :
    resContinuousH1 (ContinuousFiniteRestriction.comp R S) c =
      resContinuousH1 S (resContinuousH1 R c) := by
  exact resFiniteH1_comp R.finiteRestriction S.finiteRestriction c

theorem continuousAdapter_depends_after_finiteSelmer :
    GaloisCohomologyLayer.Before
      GaloisCohomologyLayer.abstractSelmer
      GaloisCohomologyLayer.continuousAdapter :=
  ghc1a_continuous_depends_after_selmer

end GaloisCohomology
end Surface.Arithmetic
```

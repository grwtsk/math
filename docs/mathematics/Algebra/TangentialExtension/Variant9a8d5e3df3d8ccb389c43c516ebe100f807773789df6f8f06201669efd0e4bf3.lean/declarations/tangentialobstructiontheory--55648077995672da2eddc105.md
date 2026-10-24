# TangentialObstructionTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16f63938b840c43da7038c749a183c539d43ee805edbd0bc6807a0f989468aa0",
  "kind": "structure",
  "lexical_name": "TangentialObstructionTheory",
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
  "slug": "tangentialobstructiontheory--55648077995672da2eddc105",
  "source": {
    "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 46,
    "path": "GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55648077995672da2eddc105eda86b701b9ec369b9ab8f189999e0b21673d927",
  "verification": {
    "reference": "docs/verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16f63938b840c43da7038c749a183c539d43ee805edbd0bc6807a0f989468aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TangentialObstructionTheory
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (certificate : FramedSurgeryCertificate T R embedding) where
  Structure : Type uΘ
  FramingChange : Type uF
  Obstruction : Type uO
  StableStructure : Type uΘ
  framingChangeAddGroup : AddCommGroup FramingChange
  obstructionAddCommGroup : AddCommGroup Obstruction
  extendsAcrossTrace : Structure → Prop
  boundaryClass : Structure → Obstruction
  /-- A genuine nullhomotopy witness type for the full obstruction class. -/
  Nullhomotopy : Obstruction → Type uO
  nullhomotopy_iff_zero : ∀ obstruction,
    letI := obstructionAddCommGroup
    Nonempty (Nullhomotopy obstruction) ↔ obstruction = 0
  framingAction : FramingChange → Structure → Structure
  actionConvention : FramingActionConvention
  actionConvention_eq : actionConvention = .left
  /-- The chosen reference framing is the zero change for the additive action. -/
  referenceFraming : FramingChange
  referenceFraming_eq_zero :
    letI := framingChangeAddGroup
    referenceFraming = 0
  /-- Stabilization is explicit and its obstruction is compared, not identified silently. -/
  stabilize : Structure → StableStructure
  stableBoundaryClass : StableStructure → Obstruction
  stabilization_obstruction : ∀ θ,
    stableBoundaryClass (stabilize θ) = boundaryClass θ
  /-- Points of the relevant homotopy fiber; no algebra is imposed here. -/
  HomotopyFiberPoint : Type uO
  /-- The selected basepoint makes the fiber model pointed. -/
  homotopyFiberBasepoint : HomotopyFiberPoint
  /-- Equality in the path-component set of the modeled homotopy fiber. -/
  samePathComponent : HomotopyFiberPoint → HomotopyFiberPoint → Prop
  samePathComponent_equivalence : Equivalence samePathComponent
  /-- The negative and positive endpoint lifts, retained in their order. -/
  zeroSphereEndpoints :
    p = 0 → Structure → OrderedZeroSphereEndpoints HomotopyFiberPoint
  /-- At `p = 0`, extension is exactly equality of endpoint path components. -/
  zeroSphere_extends_iff_samePathComponent : ∀ (hp : p = 0) θ,
    extendsAcrossTrace θ ↔
      samePathComponent
        (zeroSphereEndpoints hp θ).negative
        (zeroSphereEndpoints hp θ).positive
  framingDefect :
    letI := framingChangeAddGroup
    letI := obstructionAddCommGroup
    FramingChange →+ Obstruction
  extends_iff_vanishes : ∀ θ,
    letI := obstructionAddCommGroup
    extendsAcrossTrace θ ↔ boundaryClass θ = 0
  framingAction_zero : ∀ θ,
    letI := framingChangeAddGroup
    framingAction 0 θ = θ
  framingAction_add : ∀ a b θ,
    letI := framingChangeAddGroup
    framingAction (a + b) θ = framingAction a (framingAction b θ)
  boundaryClass_action : ∀ change θ,
    letI := framingChangeAddGroup
    letI := obstructionAddCommGroup
    boundaryClass (framingAction change θ) =
      boundaryClass θ + framingDefect change

/--
Optional abelian enrichment of the `p = 0` endpoint semantics.

The base tangential theory only provides ordered homotopy-fiber points and a
path-component relation.  Supplying this additional record is what licenses
forming an ordered difference.  Thus subtraction is neither built into the
generic endpoint type nor inferred from pointedness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e323b29365c6df43ff51bb35ef66ec5474f98e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

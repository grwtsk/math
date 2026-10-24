# EquivariantScheduleKernelCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d15ee28f2355c7abf1c413b24e8487d53bd7b97d8a569ac291f6fefb80514a79",
  "kind": "structure",
  "lexical_name": "EquivariantScheduleKernelCertificate",
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
  "slug": "equivariantschedulekernelcertificate--a95e9c20ade75388bcdfbfd3",
  "source": {
    "blob": "a493563672fa7a8b2bd94ab54ab7571506a46457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 16,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a95e9c20ade75388bcdfbfd34bbbff41acfac089db30abf66275565848fe2c2e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d15ee28f2355c7abf1c413b24e8487d53bd7b97d8a569ac291f6fefb80514a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EquivariantScheduleKernelCertificate
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (family :
      ScheduleKernelFamily system carrier Schedule) where
  lawAction :
    model.Automorphism →
      carrier.Law →
      carrier.Law
  lawActionIdentity :
    ∀ law,
      lawAction 1 law = law
  lawActionCompatible :
    ∀ left right law,
      lawAction (left * right) law =
        lawAction left (lawAction right law)
  realizationEquivariant :
    ∀ automorphism law state,
      (carrier.realize
        (lawAction automorphism law)).weight
          (model.action.act automorphism state) =
        (carrier.realize law).weight state
  wassersteinInvariant :
    ∀ automorphism left right,
      carrier.wasserstein
          (lawAction automorphism left)
          (lawAction automorphism right) =
        carrier.wasserstein left right
  pointwiseKernelEquivariant :
    ∀ automorphism schedule state nextState,
      (family.kernel schedule).transitionWeight
          (model.action.act automorphism state)
          (model.action.act automorphism nextState) =
        (family.kernel schedule).transitionWeight
          state nextState
  kernelEquivariant :
    ∀ automorphism schedule law,
      lawAction automorphism
          (carrier.push (family.kernel schedule) law) =
        carrier.push (family.kernel schedule)
          (lawAction automorphism law)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a493563672fa7a8b2bd94ab54ab7571506a46457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f4831ee83f9ab9e382ad3923a4284f3738e04266d9be4fec9332b0c4666a58b",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--afc1c713c61df7805fbf0504",
  "source": {
    "blob": "682fcb23175516723baa123fd2c749f8d041c825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 98,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afc1c713c61df7805fbf05046328411e42c5e070e11d496516929c8192a64406",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f4831ee83f9ab9e382ad3923a4284f3738e04266d9be4fec9332b0c4666a58b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
  {I : ModelWithCorners 𝕜 E H}
  {I' : ModelWithCorners 𝕜 E' H'}
  {I'' : ModelWithCorners 𝕜 E'' H''}
  (e₁ : PartialHomeomorph M H)
  (e₂ : PartialHomeomorph M' H')
  (e₃ : PartialHomeomorph M'' H'')
  {f : M → M'}
  {g : M' → M''} :
  (Set.preimage (f ∘ ((e₁.toPartialEquiv.trans I.toPartialEquiv).symm))
      (e₂.toPartialEquiv.trans I'.toPartialEquiv).source) ⊆
    {y : E |
    ((e₃.toPartialEquiv.trans I''.toPartialEquiv) ∘
          (g ∘ f) ∘ ((e₁.toPartialEquiv.trans I.toPartialEquiv).symm)) y
    = (((e₃.toPartialEquiv.trans I''.toPartialEquiv : M'' → E'') ∘
             g ∘ ((e₂.toPartialEquiv.trans I'.toPartialEquiv).symm)) ∘
          (e₂.toPartialEquiv.trans I'.toPartialEquiv : M' → E') ∘
            f ∘ ((e₁.toPartialEquiv.trans I.toPartialEquiv).symm)) y} := by
  mfld_set_tac

end tests
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682fcb23175516723baa123fd2c749f8d041c825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

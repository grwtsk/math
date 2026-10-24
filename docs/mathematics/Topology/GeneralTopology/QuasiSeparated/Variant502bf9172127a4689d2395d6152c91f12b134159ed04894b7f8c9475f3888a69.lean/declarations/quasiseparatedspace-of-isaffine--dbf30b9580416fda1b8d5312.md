# quasiSeparatedSpace_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4a209fde92905b34aa8ba83556665607da6d3c0371972e24ac301ca1b6df321",
  "kind": "instance",
  "lexical_name": "quasiSeparatedSpace_of_isAffine",
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
  "slug": "quasiseparatedspace-of-isaffine--dbf30b9580416fda1b8d5312",
  "source": {
    "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbf30b9580416fda1b8d5312d8076b0cb44a9b7a261f6e5dd0a47e1e42a59797",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4a209fde92905b34aa8ba83556665607da6d3c0371972e24ac301ca1b6df321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance quasiSeparatedSpace_of_isAffine (X : Scheme) [IsAffine X] :
    QuasiSeparatedSpace X.carrier := by
  constructor
  intro U V hU hU' hV hV'
  obtain ⟨s, hs, e⟩ := (isCompact_open_iff_eq_basicOpen_union _).mp ⟨hU', hU⟩
  obtain ⟨s', hs', e'⟩ := (isCompact_open_iff_eq_basicOpen_union _).mp ⟨hV', hV⟩
  rw [e, e', Set.iUnion₂_inter]
  simp_rw [Set.inter_iUnion₂]
  apply hs.isCompact_biUnion
  · intro i _
    apply hs'.isCompact_biUnion
    intro i' _
    change IsCompact (X.basicOpen i ⊓ X.basicOpen i').1
    rw [← Scheme.basicOpen_mul]
    exact ((topIsAffineOpen _).basicOpenIsAffine _).isCompact
#align algebraic_geometry.quasi_separated_space_of_is_affine AlgebraicGeometry.quasiSeparatedSpace_of_isAffine

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d2a0a40efa2d762aac283a9612445e6427169d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# OpenCover.finiteSubcover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76a17f420ce07ece48767f45e3ab47b3984b44cb06e8205245d325c3151c75ba",
  "kind": "def",
  "lexical_name": "OpenCover.finiteSubcover",
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
  "slug": "opencover-finitesubcover--e38b18311e55f92d7f248580",
  "source": {
    "blob": "cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 75,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e38b18311e55f92d7f2485809ded0d5e37b1805520138cb56ef6b1237b897899",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76a17f420ce07ece48767f45e3ab47b3984b44cb06e8205245d325c3151c75ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OpenCover.finiteSubcover {X : Scheme.{u}} (𝒰 : OpenCover X) [H : CompactSpace X] :
    OpenCover X := by
  have :=
    @CompactSpace.elim_nhds_subcover _ _ H (fun x : X => Set.range (𝒰.map (𝒰.f x)).base)
      fun x => (IsOpenImmersion.isOpen_range (𝒰.map (𝒰.f x))).mem_nhds (𝒰.covers x)
  let t := this.choose
  have h : ∀ x : X, ∃ y : t, x ∈ Set.range (𝒰.map (𝒰.f y)).base := by
    intro x
    have h' : x ∈ (⊤ : Set X) := trivial
    rw [← Classical.choose_spec this, Set.mem_iUnion] at h'
    rcases h' with ⟨y, _, ⟨hy, rfl⟩, hy'⟩
    exact ⟨⟨y, hy⟩, hy'⟩
  exact
    { J := t
      obj := fun x => 𝒰.obj (𝒰.f x.1)
      map := fun x => 𝒰.map (𝒰.f x.1)
      f := fun x => (h x).choose
      covers := fun x => (h x).choose_spec }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

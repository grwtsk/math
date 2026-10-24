# OpenCover.finiteSubcover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97e0be89a1e2c73485330741452e3fb40c43478013653d110db3c764dc11d911",
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
  "slug": "opencover-finitesubcover--8797722cc73075f08d58a365",
  "source": {
    "blob": "2f533bc3aff5d348041a94ac741124d29495e4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 89,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8797722cc73075f08d58a365e79ae5cdbcb8dfcdcf07f90f13b142f67ad41357",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97e0be89a1e2c73485330741452e3fb40c43478013653d110db3c764dc11d911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OpenCover.finiteSubcover {X : Scheme.{u}} (𝒰 : OpenCover.{v} X) [H : CompactSpace X] :
    OpenCover X := by
  have :=
    @CompactSpace.elim_nhds_subcover _ _ H (fun x : X => Set.range (𝒰.f (𝒰.idx x)))
      fun x => (IsOpenImmersion.isOpen_range (𝒰.f (𝒰.idx x))).mem_nhds (𝒰.covers x)
  let t := this.choose
  have h : ∀ x : X, ∃ y : t, x ∈ Set.range (𝒰.f (𝒰.idx y)) := by
    intro x
    have h' : x ∈ (⊤ : Set X) := trivial
    rw [← Classical.choose_spec this, Set.mem_iUnion] at h'
    rcases h' with ⟨y, _, ⟨hy, rfl⟩, hy'⟩
    exact ⟨⟨y, hy⟩, hy'⟩
  exact
    { I₀ := t
      X := fun x => 𝒰.X (𝒰.idx x.1)
      f := fun x => 𝒰.f (𝒰.idx x.1)
      mem₀ := by
        rw [presieve₀_mem_precoverage_iff]
        exact ⟨h, inferInstance⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variant6de3f31b994e80d7b472c975898f6e4ebda99805c640d1ac213d46510e1c140a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f533bc3aff5d348041a94ac741124d29495e4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# isSmall_ofHoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7fd8bc231a58bdac59f871276f35ffdf0c307392ba29d7d1b588007bcd432ac",
  "kind": "instance",
  "lexical_name": "isSmall_ofHoms",
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
  "slug": "issmall-ofhoms--1de579b45bf0843cbb91e070",
  "source": {
    "blob": "0b361867a8f9407ea58add0a447be5fb2c0cd322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1de579b45bf0843cbb91e070542b804bf3d71e02bfbf30cf7d5c00df2a6d5f26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7fd8bc231a58bdac59f871276f35ffdf0c307392ba29d7d1b588007bcd432ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isSmall_ofHoms {ι : Type t} [Small.{w} ι] {A B : ι → C} (f : ∀ i, A i ⟶ B i) :
    IsSmall.{w} (ofHoms f) := by
  let φ (i : ι) : (ofHoms f).toSet := ⟨Arrow.mk (f i), ⟨i⟩⟩
  have hφ : Function.Surjective φ := by
    rintro ⟨⟨_, _, f⟩, ⟨i⟩⟩
    exact ⟨i, rfl⟩
  exact ⟨small_of_surjective hφ⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b361867a8f9407ea58add0a447be5fb2c0cd322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

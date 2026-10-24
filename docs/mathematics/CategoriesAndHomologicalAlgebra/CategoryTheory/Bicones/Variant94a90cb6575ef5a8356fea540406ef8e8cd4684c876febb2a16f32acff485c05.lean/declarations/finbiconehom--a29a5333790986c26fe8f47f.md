# finBiconeHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:801a12a80de60f68f2c08dc75edb66241adf9f203fa13d0a0ecc697dbc4fd0bd",
  "kind": "instance",
  "lexical_name": "finBiconeHom",
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
  "slug": "finbiconehom--a29a5333790986c26fe8f47f",
  "source": {
    "blob": "4dfcbdc35881b1e37b8ee5eb9b8ac0db59b2deb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a29a5333790986c26fe8f47f11b16039991c9b170e1716f9f69276fa282d9750",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:801a12a80de60f68f2c08dc75edb66241adf9f203fa13d0a0ecc697dbc4fd0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finBiconeHom [FinCategory J] (j k : Bicone J) : Fintype (j ⟶ k) := by
  cases j <;> cases k
  · exact
      { elems := {BiconeHom.left_id}
        complete := fun f => by cases f; simp }
  · exact
    { elems := ∅
      complete := fun f => by cases f }
  · exact
    { elems := {BiconeHom.left _}
      complete := fun f => by cases f; simp }
  · exact
    { elems := ∅
      complete := fun f => by cases f }
  · exact
      { elems := {BiconeHom.right_id}
        complete := fun f => by cases f; simp }
  · exact
    { elems := {BiconeHom.right _}
      complete := fun f => by cases f; simp }
  · exact
    { elems := ∅
      complete := fun f => by cases f }
  · exact
    { elems := ∅
      complete := fun f => by cases f }
  · exact
    { elems := Finset.image BiconeHom.diagram Fintype.elems
      complete := fun f => by
        rcases f with (_|_|_|_|f)
        simp only [Finset.mem_image]
        use f
        simpa using Fintype.complete _ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bicones/Variant94a90cb6575ef5a8356fea540406ef8e8cd4684c876febb2a16f32acff485c05.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dfcbdc35881b1e37b8ee5eb9b8ac0db59b2deb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

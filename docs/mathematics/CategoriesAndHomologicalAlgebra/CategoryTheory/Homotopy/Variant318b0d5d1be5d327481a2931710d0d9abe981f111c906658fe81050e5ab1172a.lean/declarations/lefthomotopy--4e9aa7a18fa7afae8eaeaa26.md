# leftHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d06fdb75fd5ca1077c61b5ee1e04bb94cbf913b23e6691cb6cc95ec018fa4f0",
  "kind": "def",
  "lexical_name": "leftHomotopy",
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
  "slug": "lefthomotopy--4e9aa7a18fa7afae8eaeaa26",
  "source": {
    "blob": "1d74451e7c922e39cb27530fcbaf3aa969016793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e9aa7a18fa7afae8eaeaa269efaa0bac645170015a999123bc2b1016e88ec9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d06fdb75fd5ca1077c61b5ee1e04bb94cbf913b23e6691cb6cc95ec018fa4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftHomotopy (h : RightHomotopyRel f g) (Q : Cylinder X) [Q.IsGood] :
    Q.LeftHomotopy f g :=
  let P := h.exists_good_pathObject.choose
  have h := h.exists_good_pathObject.choose_spec.2.some
  have h' := h.exists_good_pathObject.choose_spec.1
  have sq : CommSq (coprod.desc (f ≫ P.ι) h.h) Q.i P.p₀ (Q.π ≫ f) := { }
  { h := sq.lift ≫ P.p₁
    h₀ := by
      have := coprod.inl ≫= sq.fac_left
      rw [Q.inl_i_assoc, coprod.inl_desc] at this
      simp [reassoc_of% this]
    h₁ := by
      have := coprod.inr ≫= sq.fac_left
      rw [Q.inr_i_assoc, coprod.inr_desc] at this
      simp [reassoc_of% this, P] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d74451e7c922e39cb27530fcbaf3aa969016793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

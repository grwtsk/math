# ext_from_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f3d7c84-ecfa-dd80-0751-6f485cd776eb",
  "kind": "lemma",
  "lexical_name": "ext_from_iff",
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
  "slug": "ext-from-iff--6f197e4cf8e14f791d81694b",
  "source": {
    "blob": "43ec787b1163378f40577e42768b40d6516ee645",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f197e4cf8e14f791d81694bb8ed03b4fbe79d963e45d45c40501821d8305e7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f3d7c84-ecfa-dd80-0751-6f485cd776eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_from_iff (i j : ℤ) (hij : j + 1 = i) {A : C} (f g : (mappingCone φ).X j ⟶ A) :
    f = g ↔ (inl φ).v i j (by omega) ≫ f = (inl φ).v i j (by omega) ≫ g ∧
      (inr φ).f j ≫ f = (inr φ).f j ≫ g := by
  constructor
  · rintro rfl
    tauto
  · rintro ⟨h₁, h₂⟩
    exact ext_from φ i j hij h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ec787b1163378f40577e42768b40d6516ee645` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

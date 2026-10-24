# double

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae64da8e48cbf8a1f3f23dd113b663a18ec0562d63eb8cf5d1141da7481992f3",
  "kind": "def",
  "lexical_name": "double",
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
  "slug": "double--ff4f5091014a2cdb4ace28a6",
  "source": {
    "blob": "bafe42ad974bc91b8610a6be3b42711f4961b2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff4f5091014a2cdb4ace28a6f4feb53dc1995d1a1250f9e60fe90a3ba5abf2ac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae64da8e48cbf8a1f3f23dd113b663a18ec0562d63eb8cf5d1141da7481992f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def double : HomologicalComplex C c where
  X k := if k = i₀ then X₀ else if k = i₁ then X₁ else 0
  d k k' :=
    if hk : k = i₀ ∧ k' = i₁ ∧ i₀ ≠ i₁ then
      eqToHom (ite_eq_left hk.1) ≫ f ≫ eqToHom (by
        rw [ite_eq_right, ite_eq_left hk.2.1]
        aesop)
    else 0
  d_comp_d' := by
    rintro i j k hij hjk
    dsimp
    by_cases hi : i = i₀
    · subst hi
      by_cases hj : j = i₁
      · subst hj
        nth_rw 2 [dite_eq_right (by tauto)]
        rw [comp_zero]
      · rw [dite_eq_right (by tauto), zero_comp]
    · rw [dite_eq_right (by tauto), zero_comp]
  shape i j hij := dite_eq_right (by aesop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafe42ad974bc91b8610a6be3b42711f4961b2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

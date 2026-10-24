# nullHomotopicMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a34ba50244fa55b8a91b3c7c33658767c080e6b2512f328c9e78337e88857218",
  "kind": "def",
  "lexical_name": "nullHomotopicMap",
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
  "slug": "nullhomotopicmap--8f1a48cfaaad6f3522258eb9",
  "source": {
    "blob": "8fcd279cc14596e19dc6634845551fbd0729615c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f1a48cfaaad6f3522258eb95ff1ea9b42059487740675d3787878f8e04525af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a34ba50244fa55b8a91b3c7c33658767c080e6b2512f328c9e78337e88857218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nullHomotopicMap (hom : ∀ i j, C.X i ⟶ D.X j) : C ⟶ D where
  f i := dNext i hom + prevD i hom
  comm' i j hij := by
    have eq1 : prevD i hom ≫ D.d i j = 0 := by
      simp only [prevD, AddMonoidHom.mk'_apply, assoc, d_comp_d, comp_zero]
    have eq2 : C.d i j ≫ dNext j hom = 0 := by
      simp only [dNext, AddMonoidHom.mk'_apply, d_comp_d_assoc, zero_comp]
    rw [dNext_eq hom hij, prevD_eq hom hij, Preadditive.comp_add, Preadditive.add_comp, eq1, eq2,
      add_zero, zero_add, assoc]

open Classical in
/-- Variant of `nullHomotopicMap` where the input consists only of the
relevant maps `C_i ⟶ D_j` such that `c.Rel j i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcd279cc14596e19dc6634845551fbd0729615c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

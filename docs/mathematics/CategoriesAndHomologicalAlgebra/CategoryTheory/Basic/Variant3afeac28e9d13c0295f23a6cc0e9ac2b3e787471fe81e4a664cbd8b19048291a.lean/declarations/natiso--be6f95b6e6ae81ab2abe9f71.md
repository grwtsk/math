# natIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b66f44312f9075a51b4f6afcfde2c733dc492b15198c9e5ed93b05abdcedf4f",
  "kind": "def",
  "lexical_name": "natIso",
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
  "slug": "natiso--be6f95b6e6ae81ab2abe9f71",
  "source": {
    "blob": "e6c021998dc102cf1b41743ee697b50b9343d365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be6f95b6e6ae81ab2abe9f710d8bac6e6cdf187a0d81223be3e7637cf482146b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b66f44312f9075a51b4f6afcfde2c733dc492b15198c9e5ed93b05abdcedf4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natIso {q₁ q₂ : (Σ i, C i) ⥤ D} (h : ∀ i, incl i ⋙ q₁ ≅ incl i ⋙ q₂) : q₁ ≅ q₂ where
  hom := natTrans fun i => (h i).hom
  inv := natTrans fun i => (h i).inv

end

section

variable (C) {J : Type w₂} (g : J → I)

/-- A function `J → I` induces a functor `Σ j, C (g j) ⥤ Σ i, C i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3afeac28e9d13c0295f23a6cc0e9ac2b3e787471fe81e4a664cbd8b19048291a.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6c021998dc102cf1b41743ee697b50b9343d365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

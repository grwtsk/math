# sieve₁₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e212816c0d04336d1f34077700dcceb6c1c402aa980659ec159e556b1b6ec092",
  "kind": "def",
  "lexical_name": "sieve₁₀",
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
  "slug": "sieve--120aa4df9ed8e8e91beffd6e",
  "source": {
    "blob": "a9f8492e8ed9e9124305f00df1c3a3d867337147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:120aa4df9ed8e8e91beffd6eff1f8cb5a74527765b3c4d1f4ab6ed87b34886fb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e212816c0d04336d1f34077700dcceb6c1c402aa980659ec159e556b1b6ec092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sieve₁₀ {i₁ i₂ : data.I₀} {W₀ : C₀} (p₁ : W₀ ⟶ data.X i₁) (p₂ : W₀ ⟶ data.X i₂) :
    Sieve W₀ where
  arrows Z₀ g := ∃ (j : data.I₁ i₁ i₂) (h : Z₀ ⟶ data.Y j),
    g ≫ p₁ = h ≫ data.p₁ j ∧ g ≫ p₂ = h ≫ data.p₂ j
  downward_closed := by
    rintro Z Z' g ⟨j, h, fac₁, fac₂⟩ φ
    exact ⟨j, φ ≫ h, by simpa using φ ≫= fac₁, by simpa using φ ≫= fac₂⟩

end PreOneHypercoverDenseData

/-- Given a functor `F : C₀ ⥤ C`, Grothendieck topologies `J₀` on `C₀` and `J`
on `C`, an object `S. : C`, this structure roughly contains the data of a `1`-hypercover
of `S` consisting of objects in `C₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f8492e8ed9e9124305f00df1c3a3d867337147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# leftDistributor_ext_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3408705-53a2-ca0c-185f-7cd4ea962b87",
  "kind": "theorem",
  "lexical_name": "leftDistributor_ext_right",
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
  "slug": "leftdistributor-ext-right--69000f513802f2f70d9bbd25",
  "source": {
    "blob": "243219f195d90341aca229b32fd64ea71f435d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 327,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant82007f1a8792a897cf96e7fe62e895271031345bc1bb8f8d3d09c1f8397f60bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69000f513802f2f70d9bbd2553bd4aba293743f2ccd9c9f255c2283894e5b3c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant82007f1a8792a897cf96e7fe62e895271031345bc1bb8f8d3d09c1f8397f60bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3408705-53a2-ca0c-185f-7cd4ea962b87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftDistributor_ext_right {J : Type} [Finite J] {X Y : C} {f : J → C} {g h : X ⟶ Y ⊗ ⨁ f}
    (w : ∀ j, g ≫ (Y ◁ biproduct.π f j) = h ≫ (Y ◁ biproduct.π f j)) : g = h := by
  cases nonempty_fintype J
  apply (cancel_mono (leftDistributor Y f).hom).mp
  ext
  simp [w]

-- One might wonder how many iterated tensor products we need simp lemmas for.
-- The answer is two: this lemma is needed to verify the pentagon identity.
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant82007f1a8792a897cf96e7fe62e895271031345bc1bb8f8d3d09c1f8397f60bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant82007f1a8792a897cf96e7fe62e895271031345bc1bb8f8d3d09c1f8397f60bb.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243219f195d90341aca229b32fd64ea71f435d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

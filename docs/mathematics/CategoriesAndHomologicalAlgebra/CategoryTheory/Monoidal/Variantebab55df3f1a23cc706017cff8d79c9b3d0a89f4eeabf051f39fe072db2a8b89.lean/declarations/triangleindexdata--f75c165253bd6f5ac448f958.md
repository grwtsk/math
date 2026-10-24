# triangleIndexData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:507b3aba8161e064663a11c999470c8fed47fa235f184dfa0a055ed53805a9e5",
  "kind": "def",
  "lexical_name": "triangleIndexData",
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
  "slug": "triangleindexdata--f75c165253bd6f5ac448f958",
  "source": {
    "blob": "38a6529f088c789143622e57cc9a2ef5ca3be6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f75c165253bd6f5ac448f9588c048e6c88f63ed1a08c467d9d249542d8837796",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:507b3aba8161e064663a11c999470c8fed47fa235f184dfa0a055ed53805a9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def triangleIndexData : TriangleIndexData (r₁₂₃ : _ → I) (fun ⟨i₁, i₃⟩ => i₁ + i₃) where
  p₁₂ := fun ⟨i₁, i₂⟩ => i₁ + i₂
  p₂₃ := fun ⟨i₂, i₃⟩ => i₂ + i₃
  hp₁₂ := fun _ => rfl
  hp₂₃ := fun _ => (add_assoc _ _ _).symm
  h₁ := add_zero
  h₃ := zero_add

/-- Given three graded objects `X₁`, `X₂`, `X₃` in `GradedObject I C`, this is the
assumption that for all `i₁₂ : I` and `i₃ : I`, the tensor product functor `- ⊗ X₃ i₃`
commutes with the coproduct of the objects `X₁ i₁ ⊗ X₂ i₂` such that `i₁ + i₂ = i₁₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38a6529f088c789143622e57cc9a2ef5ca3be6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

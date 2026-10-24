# mapAlgEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b3678bbd5eee118c1cd499d89c78d0fe0e5aa72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ed27dd7-a3c6-4db9-381d-d20ec95be993",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c1179f9-7c3e-33df-f10b-30e52d74f5ea",
  "kind": "theorem",
  "lexical_name": "mapAlgEquiv_comp",
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
  "slug": "mapalgequiv-comp--e43105a297d644f4c606e49e",
  "source": {
    "blob": "5b3678bbd5eee118c1cd499d89c78d0fe0e5aa72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 228,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e43105a297d644f4c606e49ec012bf9b1fb6c5e60576e9ebf1c0a0154d1ca23d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c1179f9-7c3e-33df-f10b-30e52d74f5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapAlgEquiv_comp (C : Type*) [Semiring C] [Algebra R C] (f : A ≃ₐ[R] B) (g : B ≃ₐ[R] C) :
    (mapAlgEquiv f).trans (mapAlgEquiv g) = mapAlgEquiv (f.trans g) := by
  ext
  simp

end Map

end CommSemiring

section aeval

variable [CommSemiring R] [Semiring A] [CommSemiring A'] [Semiring B]
variable [Algebra R A] [Algebra R B]
variable {p q : R[X]} (x : A)

variable (R A) in
/-- Given a valuation `x` of the variable in an `R`-algebra `A`, the bijection induced by the unique
`R`-algebra homomorphism from `R[X]` to `A` sending `X` to `x`. -/
@[simps! symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3678bbd5eee118c1cd499d89c78d0fe0e5aa72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

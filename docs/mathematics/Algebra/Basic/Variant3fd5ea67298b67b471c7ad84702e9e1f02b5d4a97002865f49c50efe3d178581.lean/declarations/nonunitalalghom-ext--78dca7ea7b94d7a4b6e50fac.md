# nonUnitalAlgHom_ext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c2fb63218c64aeb5ff69d438efd49e88e4245ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f105d3fe-ec34-273c-c732-21ff0c2520ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58b4cb99-b88c-ac5a-f1d6-a09c341d911b",
  "kind": "theorem",
  "lexical_name": "nonUnitalAlgHom_ext'",
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
  "slug": "nonunitalalghom-ext--78dca7ea7b94d7a4b6e50fac",
  "source": {
    "blob": "5c2fb63218c64aeb5ff69d438efd49e88e4245ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1236,
    "line": 1224,
    "path": "GRWTSK/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78dca7ea7b94d7a4b6e50facb932e03c3451eb4e6b9def8ecef8366a98b62b5c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58b4cb99-b88c-ac5a-f1d6-a09c341d911b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1224–1236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonUnitalAlgHom_ext' [DistribMulAction k A] {φ₁ φ₂ : SkewMonoidAlgebra k G →ₙₐ[k] A}
    (h : φ₁.toMulHom.comp (of k G).toMulHom = φ₂.toMulHom.comp (of k G).toMulHom) : φ₁ = φ₂ :=
  nonUnitalAlgHom_ext <| DFunLike.congr_fun h

end DistribMulActionHom

section CommSemiring

variable [Monoid G] [CommSemiring k]
variable {A : Type*} [Semiring A] [Algebra k A]

/-- The instance `Algebra k (SkewMonoidAlgebra A G)` whenever we have `Algebra k A`.
  In particular this provides the instance `Algebra k (SkewMonoidAlgebra k G)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean#L1224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2fb63218c64aeb5ff69d438efd49e88e4245ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

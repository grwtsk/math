# Matrix.toLinearMap₂'_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d46ebec00c62bd45c9f08109326a3a76e9828ca5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/eddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cfe9b63-0539-baf6-0525-a80437f0a8f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2890aac1-f6b8-d053-6a4e-78653d6b8357",
  "kind": "theorem",
  "lexical_name": "Matrix.toLinearMap₂'_apply",
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
  "slug": "matrix-tolinearmap-apply--a520eac7ef2b877a3e7eada1",
  "source": {
    "blob": "d46ebec00c62bd45c9f08109326a3a76e9828ca5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a520eac7ef2b877a3e7eada1a5cf9ab5ef6a05924269e369e48b913a0b1cf2d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2890aac1-f6b8-d053-6a4e-78653d6b8357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.toLinearMap₂'_apply (M : Matrix n m N₂) (x : n → S₁) (y : m → S₂) :
    -- porting note: we don't seem to have `∑ i j` as valid notation yet
    Matrix.toLinearMap₂' R M x y = ∑ i, ∑ j, x i • y j • M i j :=
  Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by
    rw [RingHom.id_apply, RingHom.id_apply, smul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46ebec00c62bd45c9f08109326a3a76e9828ca5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

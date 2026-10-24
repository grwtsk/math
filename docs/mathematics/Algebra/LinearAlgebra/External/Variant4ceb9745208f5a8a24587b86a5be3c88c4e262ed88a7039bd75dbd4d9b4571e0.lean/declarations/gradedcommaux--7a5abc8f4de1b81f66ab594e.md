# gradedCommAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55f2578b8b0a0556505619eb9092060ddce2a4da8c42a18a2a20def39b8e0008",
  "kind": "def",
  "lexical_name": "gradedCommAux",
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
  "slug": "gradedcommaux--7a5abc8f4de1b81f66ab594e",
  "source": {
    "blob": "59b892f70e82e6acceb4f84faf0f2939dbd6c004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a5abc8f4de1b81f66ab594e094199b04674e690b2df1ec8edf1d3e4b41be38d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55f2578b8b0a0556505619eb9092060ddce2a4da8c42a18a2a20def39b8e0008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gradedCommAux : DirectSum _ 𝒜ℬ →ₗ[R] DirectSum _ ℬ𝒜 :=
  DirectSum.toModule R _ _ fun i =>
    have o := DirectSum.lof R _ ℬ𝒜 (i.2, i.1)
    have s : ℤˣ := ((-1 : ℤˣ) ^ (i.1 * i.2 : ι) : ℤˣ)
    (s • o) ∘ₗ (TensorProduct.comm R _ _).toLinearMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b892f70e82e6acceb4f84faf0f2939dbd6c004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

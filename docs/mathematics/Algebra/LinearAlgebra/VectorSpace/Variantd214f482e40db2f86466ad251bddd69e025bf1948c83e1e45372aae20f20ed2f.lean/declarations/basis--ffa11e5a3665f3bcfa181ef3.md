# basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:851c1a27228f36a67d8b9a92e55fbfabfe844c3dbcad92ed510e8e3d3287e87a",
  "kind": "def",
  "lexical_name": "basis",
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
  "slug": "basis--ffa11e5a3665f3bcfa181ef3",
  "source": {
    "blob": "f2654ccad1d02b98335c30ca24fdf6aa3d303cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffa11e5a3665f3bcfa181ef3ca369cfb6b7909c24c188b23a7af2202ed7c2393",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:851c1a27228f36a67d8b9a92e55fbfabfe844c3dbcad92ed510e8e3d3287e87a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def basis {η : ι → Type*} (b : ∀ i, Basis (η i) R (M i)) :
    Basis (Σ i, η i) R (Π₀ i, M i) :=
  .ofRepr
    ((mapRange.linearEquiv fun i => (b i).repr).trans (sigmaFinsuppLequivDFinsupp R).symm)

variable (R M) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2654ccad1d02b98335c30ca24fdf6aa3d303cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

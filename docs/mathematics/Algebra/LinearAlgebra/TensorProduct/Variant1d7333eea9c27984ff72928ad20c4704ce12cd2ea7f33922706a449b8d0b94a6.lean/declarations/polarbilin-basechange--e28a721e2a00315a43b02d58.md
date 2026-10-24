# polarBilin_baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:036096d5-26d5-b176-8d03-131b39fadc67",
  "kind": "theorem",
  "lexical_name": "polarBilin_baseChange",
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
  "slug": "polarbilin-basechange--e28a721e2a00315a43b02d58",
  "source": {
    "blob": "def39526e0dbf46b5ee5617a0745c1880989009a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e28a721e2a00315a43b02d587035098d5fb4b3f413c076ab0ff68c59d4642a02",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:036096d5-26d5-b176-8d03-131b39fadc67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarBilin_baseChange [Invertible (2 : A)] (Q : QuadraticForm R M₂) :
    polarBilin (Q.baseChange A) = BilinForm.baseChange A (polarBilin Q) := by
  rw [QuadraticForm.baseChange, BilinForm.baseChange, polarBilin_tmul, BilinForm.tmul,
    ← LinearMap.map_smul, smul_tmul', ← two_nsmul_associated R, coe_associatedHom, associated_sq,
    smul_comm, ← smul_assoc, two_smul, invOf_two_add_invOf_two, one_smul]

end QuadraticForm

end InvertibleTwo

/-- If two quadratic maps from `A ⊗[R] M₂` agree on elements of the form `1 ⊗ m`, they are equal.

In other words, if a base change exists for a quadratic map, it is unique.

Note that unlike `QuadraticForm.baseChange`, this does not need `Invertible (2 : R)`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `def39526e0dbf46b5ee5617a0745c1880989009a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

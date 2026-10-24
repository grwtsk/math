# isUnimodular_iff_span_repr_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09e5d4b4-8a12-9fc9-be10-ee0eea524e11",
  "kind": "theorem",
  "lexical_name": "isUnimodular_iff_span_repr_eq_top",
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
  "slug": "isunimodular-iff-span-repr-eq-top--56403bb9fc773404203d0791",
  "source": {
    "blob": "ce7f99ecbc034d44f9d4dab33a4a24f2ea0e03e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56403bb9fc773404203d07914ea18fa563ce932d92fe445e15fb3b535fc1257e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e5d4b4-8a12-9fc9-be10-ee0eea524e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnimodular_iff_span_repr_eq_top {ι : Type*} {b : Basis ι R M} {v : M} :
    IsUnimodular R v ↔ Ideal.span (Set.range (b.repr v)) = ⊤ := by
  simp [Ideal.eq_top_iff_one, span_repr_eq_range_applyₗ, isUnimodular_iff]

end CommSemiring

section Algebra

variable {R : Type*} [CommRing R] {A : Type*} [Ring A] [Nontrivial A] [Algebra R A]

/-- In a nonzero algebra that is free as a module, `1` is *unimodular*. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7f99ecbc034d44f9d4dab33a4a24f2ea0e03e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

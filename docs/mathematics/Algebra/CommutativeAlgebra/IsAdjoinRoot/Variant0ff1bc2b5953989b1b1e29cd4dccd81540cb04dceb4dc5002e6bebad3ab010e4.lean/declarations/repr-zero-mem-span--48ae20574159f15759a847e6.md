# repr_zero_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3689afd-c605-16bb-cc4d-f0246306020a",
  "kind": "theorem",
  "lexical_name": "repr_zero_mem_span",
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
  "slug": "repr-zero-mem-span--48ae20574159f15759a847e6",
  "source": {
    "blob": "132ca4c2668a0947fba63b69460c42efe153803b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 182,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48ae20574159f15759a847e60c39e8cabed5101753a807c05afed936ff54573a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3689afd-c605-16bb-cc4d-f0246306020a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_zero_mem_span (h : IsAdjoinRoot S f) : h.repr 0 ∈ Ideal.span ({f} : Set R[X]) := by
  rw [← h.ker_map, RingHom.mem_ker, h.map_repr]
#align is_adjoin_root.repr_zero_mem_span IsAdjoinRoot.repr_zero_mem_span

/-- `repr` preserves addition, up to multiples of `f` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ca4c2668a0947fba63b69460c42efe153803b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

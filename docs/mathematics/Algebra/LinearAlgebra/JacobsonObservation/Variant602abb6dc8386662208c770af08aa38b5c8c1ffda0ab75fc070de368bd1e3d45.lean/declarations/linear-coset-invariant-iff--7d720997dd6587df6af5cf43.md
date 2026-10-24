# linear_coset_invariant_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a97c6e1a246978b58edf3c5f7034f0dcb3b47b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f0fa4fa-fead-020f-9297-b1a3fd3a8a50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c95a55fd-4bd9-f0ab-d991-754c4b769ca3",
  "kind": "theorem",
  "lexical_name": "linear_coset_invariant_iff",
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
  "slug": "linear-coset-invariant-iff--7d720997dd6587df6af5cf43",
  "source": {
    "blob": "a97c6e1a246978b58edf3c5f7034f0dcb3b47b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d720997dd6587df6af5cf43e96694880cc922f5840a31e7bfd1897f7ac5e195",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c95a55fd-4bd9-f0ab-d991-754c4b769ca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_coset_invariant_iff {W : Type*} [AddCommGroup W] [Module R W]
    (J : Submodule R V) (Q : V →ₗ[R] W) :
    CosetInvariant J Q ↔ J ≤ LinearMap.ker Q := by
  constructor
  · intro hQ j hj
    simpa only [zero_add, map_zero, LinearMap.mem_ker] using hQ 0 j hj
  · intro hQ x j hj
    rw [map_add, (LinearMap.mem_ker.mp (hQ hj)), add_zero]

end Functions

section Operators

variable {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]

/-- The exact criterion for two preserving operators to commute after descent.
The hypotheses are Mathlib's native quotient-map preservation conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a97c6e1a246978b58edf3c5f7034f0dcb3b47b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

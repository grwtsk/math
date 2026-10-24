# rank_matrix_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b7897d1-750c-14d9-b1df-d8b825b12df6",
  "kind": "theorem",
  "lexical_name": "rank_matrix_module",
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
  "slug": "rank-matrix-module--f7b59c06687480e537387c6f",
  "source": {
    "blob": "2616590f7387c5ef7ded451ecd988c1ac27c61a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7b59c06687480e537387c6f003be34ba1a05c4686f408b26f59ec6fd4489292",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b7897d1-750c-14d9-b1df-d8b825b12df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_matrix_module (m : Type w) (n : Type w') [Finite m] [Finite n] :
    Module.rank R (Matrix m n M) =
      lift.{max v w'} #m * lift.{max v w} #n * lift.{max w w'} (Module.rank R M) := by
  cases nonempty_fintype m
  cases nonempty_fintype n
  obtain ⟨I, b⟩ := Module.Free.exists_basis (R := R) (M := M)
  rw [← (b.matrix m n).mk_eq_rank'']
  simp only [mk_prod, lift_mul, lift_lift, ← mul_assoc, b.mk_eq_rank'']


/-- If `m` and `n` are finite and lie in the same universe, the rank of `m × n` matrices over a
module `M` is `(#m * #n).lift * rank R M`. -/
@[simp high]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2616590f7387c5ef7ded451ecd988c1ac27c61a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

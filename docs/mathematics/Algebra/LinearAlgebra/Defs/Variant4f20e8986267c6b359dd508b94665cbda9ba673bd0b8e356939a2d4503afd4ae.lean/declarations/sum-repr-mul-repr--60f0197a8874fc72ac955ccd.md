# sum_repr_mul_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dccccb2b-4eae-e86a-4606-5b88208eed8e",
  "kind": "theorem",
  "lexical_name": "sum_repr_mul_repr",
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
  "slug": "sum-repr-mul-repr--60f0197a8874fc72ac955ccd",
  "source": {
    "blob": "63fa190dc8358cdcd4a7470fa64246c5241eb11c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 657,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60f0197a8874fc72ac955ccd42d6c4552bed221cfb6f05ae1c0004045f992aee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dccccb2b-4eae-e86a-4606-5b88208eed8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_repr_mul_repr {ι'} [Fintype ι'] (b' : Basis ι' R M) (x : M) (i : ι) :
    (∑ j : ι', b.repr (b' j) i * b'.repr x j) = b.repr x i := by
  conv_rhs => rw [← b'.sum_repr x]
  simp_rw [map_sum, map_smul, Finset.sum_apply']
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Finsupp.smul_apply, smul_eq_mul, mul_comm]

end CommSemiring

end Equiv

section Coord

variable (i : ι)

/-- `b.coord i` is the linear function giving the `i`'th coordinate of a vector
with respect to the basis `b`.

`b.coord i` is an element of the dual space. In particular, for
finite-dimensional spaces it is the `ι`th basis vector of the dual space.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant4f20e8986267c6b359dd508b94665cbda9ba673bd0b8e356939a2d4503afd4ae.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63fa190dc8358cdcd4a7470fa64246c5241eb11c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

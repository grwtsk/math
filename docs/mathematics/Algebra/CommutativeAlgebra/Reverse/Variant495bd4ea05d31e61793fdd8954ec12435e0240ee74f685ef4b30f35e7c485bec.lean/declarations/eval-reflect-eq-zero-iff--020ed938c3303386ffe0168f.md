# eval₂_reflect_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bfdf548-a204-779f-61fc-4a42249a013c",
  "kind": "theorem",
  "lexical_name": "eval₂_reflect_eq_zero_iff",
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
  "slug": "eval-reflect-eq-zero-iff--020ed938c3303386ffe0168f",
  "source": {
    "blob": "29062b5ab82c0ee24904586a14ad4c76993c79af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 211,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:020ed938c3303386ffe0168fcbd3c372d149ebd945dca416956470e33b892131",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bfdf548-a204-779f-61fc-4a42249a013c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_reflect_eq_zero_iff (i : R →+* S) (x : S) [Invertible x] (N : ℕ) (f : R[X])
    (hf : f.natDegree ≤ N) : eval₂ i (⅟x) (reflect N f) = 0 ↔ eval₂ i x f = 0 := by
  conv_rhs => rw [← eval₂_reflect_mul_pow i x N f hf]
  constructor
  · intro h
    rw [h, zero_mul]
  · intro h
    rw [← mul_one (eval₂ i (⅟x) _), ← one_pow N, ← mul_invOf_self x, mul_pow, ← mul_assoc, h,
      zero_mul]

end Eval₂

/-- The reverse of a polynomial f is the polynomial obtained by "reading f backwards".
Even though this is not the actual definition, `reverse f = f (1/X) * X ^ f.natDegree`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29062b5ab82c0ee24904586a14ad4c76993c79af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

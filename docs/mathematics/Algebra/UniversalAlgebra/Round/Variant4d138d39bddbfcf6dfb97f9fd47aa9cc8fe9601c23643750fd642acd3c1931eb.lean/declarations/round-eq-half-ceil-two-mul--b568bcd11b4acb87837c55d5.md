# round_eq_half_ceil_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3142fcd-8c21-70ff-4935-e59de5fc8df0",
  "kind": "theorem",
  "lexical_name": "round_eq_half_ceil_two_mul",
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
  "slug": "round-eq-half-ceil-two-mul--b568bcd11b4acb87837c55d5",
  "source": {
    "blob": "6e41bb4425e29ba7c24ea5f6a4b75fe693244aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Round/Variant4d138d39bddbfcf6dfb97f9fd47aa9cc8fe9601c23643750fd642acd3c1931eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b568bcd11b4acb87837c55d55acb01675742ea5589f6c78e96060d0fd2c6f9be",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Round/Variant4d138d39bddbfcf6dfb97f9fd47aa9cc8fe9601c23643750fd642acd3c1931eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3142fcd-8c21-70ff-4935-e59de5fc8df0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem round_eq_half_ceil_two_mul {x : α} (hx : 2 * fract x ≠ 1) : round x = ⌈2 * x⌉ / 2 := by
  rcases em (2 * x ∈ range Int.cast) with ⟨m, hm⟩ | hx'
  · rw [← hm, ceil_intCast]
    rcases m.even_or_odd with ⟨m, rfl⟩ | ⟨m, rfl⟩
    · obtain rfl : m = x := mul_left_cancel₀ two_ne_zero <| by simp [← hm, ← two_mul]
      rw [round_intCast, ← two_mul, Int.mul_ediv_cancel_left _ two_ne_zero]
    · refine absurd ?_ hx
      exact (mul_fract_eq_one_iff_exists_int one_lt_two).mpr ⟨m, mod_cast hm.symm⟩
  · rw [round_eq_div, (ceil_eq_floor_add_one_iff_notMem _).mpr hx']

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Round/Variant4d138d39bddbfcf6dfb97f9fd47aa9cc8fe9601c23643750fd642acd3c1931eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Round/Variant4d138d39bddbfcf6dfb97f9fd47aa9cc8fe9601c23643750fd642acd3c1931eb.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e41bb4425e29ba7c24ea5f6a4b75fe693244aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

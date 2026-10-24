# cast_descFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b61fe798-4af2-45c9-549d-c0fffc4cff1f",
  "kind": "theorem",
  "lexical_name": "cast_descFactorial",
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
  "slug": "cast-descfactorial--c2751c4d96cab926c41fac31",
  "source": {
    "blob": "1e3782e4aef1940b6738e78007c363123988744d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Factorial/Variant91052270830e4b055bbbb346c953e094c08037bd358411e225effab88de6d1b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2751c4d96cab926c41fac314bc0dfb173d69c599d93f7d44bab13c6d55321d0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Factorial/Variant91052270830e4b055bbbb346c953e094c08037bd358411e225effab88de6d1b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b61fe798-4af2-45c9-549d-c0fffc4cff1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_descFactorial {n p : ℕ} (h : n ≤ p) :
    (descFactorial (p - 1) n : ZMod p) = (-1) ^ n * n ! := by
  rw [descFactorial_eq_prod_range, ← prod_range_add_one_eq_factorial]
  simp only [cast_prod]
  nth_rw 2 [← card_range n]
  rw [pow_card_mul_prod]
  refine prod_congr rfl ?_
  intro x hx
  rw [← tsub_add_eq_tsub_tsub_swap,
    Nat.cast_sub <| Nat.le_trans (Nat.add_one_le_iff.mpr (List.mem_range.mp hx)) h,
    CharP.cast_eq_zero, zero_sub, cast_succ, neg_add_rev, mul_add, neg_mul, one_mul,
    mul_one, add_comm]

end ZMod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Factorial/Variant91052270830e4b055bbbb346c953e094c08037bd358411e225effab88de6d1b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Factorial/Variant91052270830e4b055bbbb346c953e094c08037bd358411e225effab88de6d1b1.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3782e4aef1940b6738e78007c363123988744d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

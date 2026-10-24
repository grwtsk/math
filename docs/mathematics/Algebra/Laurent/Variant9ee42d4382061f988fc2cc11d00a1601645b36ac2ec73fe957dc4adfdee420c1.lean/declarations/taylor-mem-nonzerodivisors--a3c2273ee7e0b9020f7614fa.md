# taylor_mem_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4be23cab-e9c4-e349-dc83-aaa9d40fddbc",
  "kind": "theorem",
  "lexical_name": "taylor_mem_nonZeroDivisors",
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
  "slug": "taylor-mem-nonzerodivisors--a3c2273ee7e0b9020f7614fa",
  "source": {
    "blob": "7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3c2273ee7e0b9020f7614fa6f3a896dfc6d75bd966faa053bd829f0dbd74bfa",
  "verification": {
    "reference": "docs/verification/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4be23cab-e9c4-e349-dc83-aaa9d40fddbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_mem_nonZeroDivisors (hp : p ∈ R[X]⁰) : taylor r p ∈ R[X]⁰ := by
  rw [mem_nonZeroDivisors_iff]
  intro x hx
  have : x = taylor (r - r) x := by simp
  rwa [this, sub_eq_add_neg, ← taylor_taylor, ← taylor_mul,
    LinearMap.map_eq_zero_iff _ (taylor_injective _), mul_right_mem_nonZeroDivisors_eq_zero_iff hp,
    LinearMap.map_eq_zero_iff _ (taylor_injective _)] at hx
#align ratfunc.taylor_mem_non_zero_divisors RatFunc.taylor_mem_nonZeroDivisors

/-- The Laurent expansion of rational functions about a value.
Auxiliary definition, usage when over integral domains should prefer `RatFunc.laurent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

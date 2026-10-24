# exists_productDyadicInterval_mem_carrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e2a142f-f24f-db83-8327-81eab743983c",
  "kind": "theorem",
  "lexical_name": "exists_productDyadicInterval_mem_carrier",
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
  "slug": "exists-productdyadicinterval-mem-carrier--5d4ae50cc25f1fd2d9c3c76c",
  "source": {
    "blob": "f8addf8f2001e3bc2480aa5f6a1217640f467146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d4ae50cc25f1fd2d9c3c76c6d12f1a5db5037aa84c9ac85388d2c0b2c5eaa0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e2a142f-f24f-db83-8327-81eab743983c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_productDyadicInterval_mem_carrier {N q n : ℕ}
    (hn : n ∈ typeIIProductShell N q) :
    ∃ interval ∈ typeIIProductDyadicIntervals N q,
      n ∈ interval.carrier := by
  have hshell := mem_typeIIProductShell_iff.mp hn
  have hblock : n - 1 < 2 * N + 1 := by
    have hnscale : n ≤ 2 * N :=
      hshell.2.trans (min_le_right _ _)
    omega
  let interval : TypeIIProductDyadicInterval N q :=
    ⟨(⟨0, by omega⟩, ⟨n - 1, hblock⟩), by
      simp [typeIIProductShellUpper]
      constructor <;> omega⟩
  refine ⟨interval, mem_typeIIProductDyadicIntervals interval, ?_⟩
  apply interval.mem_carrier_iff.mpr
  change (n - 1) * 2 ^ 0 < n ∧ n ≤ (n - 1 + 1) * 2 ^ 0
  simp
  omega

/-- Exact product-fiber indicator for one dyadic product interval. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8addf8f2001e3bc2480aa5f6a1217640f467146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

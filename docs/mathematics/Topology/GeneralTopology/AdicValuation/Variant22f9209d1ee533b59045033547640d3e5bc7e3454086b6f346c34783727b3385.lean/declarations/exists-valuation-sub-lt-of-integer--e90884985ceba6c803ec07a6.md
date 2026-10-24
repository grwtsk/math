# exists_valuation_sub_lt_of_integer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8ebcb9b-2045-41d4-d2db-4ddc67dbf17b",
  "kind": "theorem",
  "lexical_name": "exists_valuation_sub_lt_of_integer",
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
  "slug": "exists-valuation-sub-lt-of-integer--e90884985ceba6c803ec07a6",
  "source": {
    "blob": "fc35879c144dcdc3a6ac3ea530c5869201a11449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 577,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e90884985ceba6c803ec07a6dcb5d35c67d6393c111ccc1dbb1c194ccea7b4de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ebcb9b-2045-41d4-d2db-4ddc67dbf17b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_valuation_sub_lt_of_integer {x : K} (hv : v.valuation K x ≤ 1)
    (γ : (ℤᵐ⁰)ˣ) : ∃a, v.valuation K (algebraMap R K a - x) < γ := by
  -- Write `x = n / d`, with `v d = 1`.
  obtain ⟨n, ⟨d, hd⟩, hnd⟩ := exists_primeCompl_mul_eq_of_integer v x hv
  rw [← intValuation_eq_one_iff_mem_primeCompl] at hd
  have hd' : v.intValuation n ≤ v.intValuation d := by grw [v.intValuation_le_one n, hd]
  -- Get `a` such that `v (n - a * d) < γ` from the previous theorem.
  obtain ⟨a, hval⟩ := exists_intValuation_mul_sub_lt v hd' (WithZero.unitsWithZeroEquiv γ)
  rw [unitsWithZeroEquiv_apply, coe_unzero] at hval
  use a
  -- `v d = 1`, so `v (a - x) = v (x - a) = v (x - a) * v d = v (n - a * d) < γ`.
  suffices h : v.valuation K (algebraMap R K a - x) = v.intValuation (n - a * d) by rwa [h]
  rw [← valuation_of_algebraMap (K := K), Algebra.cast, map_sub _ n, map_mul, ← hnd, ← sub_mul,
    map_mul, valuation_of_algebraMap, hd, mul_one, Valuation.map_sub_swap]

/-! ### Completions with respect to adic valuations

Given a Dedekind domain `R` with field of fractions `K` and a maximal ideal `v` of `R`, we define
the completion of `K` with respect to its `v`-adic valuation, denoted `v.adicCompletion`, and its
ring of integers, denoted `v.adicCompletionIntegers`. -/


/-- `K` as a valued field with the `v`-adic valuation. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc35879c144dcdc3a6ac3ea530c5869201a11449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

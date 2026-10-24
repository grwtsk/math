# Z_not_properPower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6069daa-1d12-4c72-065a-6fea5b600486",
  "kind": "theorem",
  "lexical_name": "Z_not_properPower",
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
  "slug": "z-not-properpower--334f28af95c98a5a1d2b5b96",
  "source": {
    "blob": "d0e8da0cb242646f7c8b2a5d97a7d9ebf3f7d6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 172,
    "path": "GRWTSK/GroupTheory/Words/IntegralHeisenbergPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:334f28af95c98a5a1d2b5b963295931028e1fe8a8a54b538898f8815f734b713",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6069daa-1d12-4c72-065a-6fea5b600486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Z_not_properPower : ¬ IsProperPower Z := by
  rintro ⟨r, n, hn, hr⟩
  have hn0 : (n : ℤ) ≠ 0 := by
    exact_mod_cast (show n ≠ 0 by omega)
  have hpx := congrArg IntegralHeisenberg.x hr
  have hpy := congrArg IntegralHeisenberg.y hr
  have hxmul : (n : ℤ) * r.x = 0 := by
    simpa [pow_x, Z] using hpx
  have hymul : (n : ℤ) * r.y = 0 := by
    simpa [pow_y, Z] using hpy
  have hx : r.x = 0 := (mul_eq_zero.mp hxmul).resolve_left hn0
  have hy : r.y = 0 := (mul_eq_zero.mp hymul).resolve_left hn0
  have hpz := congrArg IntegralHeisenberg.z hr
  have hz : (n : ℤ) * r.z = 1 := by
    simpa [pow_z_of_xy_zero r hx hy n, Z] using hpz
  have hdvd : (n : ℤ) ∣ (1 : ℤ) := ⟨r.z, hz.symm⟩
  have hunit : IsUnit (n : ℤ) := isUnit_of_dvd_unit hdvd isUnit_one
  have hnlarge : (2 : ℤ) ≤ (n : ℤ) := by exact_mod_cast hn
  rcases Int.isUnit_iff.mp hunit with hpos | hneg
  · omega
  · omega

/-- Genuine primitive status of the central commutator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GroupTheory/Words/IntegralHeisenbergPrimitive.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0e8da0cb242646f7c8b2a5d97a7d9ebf3f7d6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

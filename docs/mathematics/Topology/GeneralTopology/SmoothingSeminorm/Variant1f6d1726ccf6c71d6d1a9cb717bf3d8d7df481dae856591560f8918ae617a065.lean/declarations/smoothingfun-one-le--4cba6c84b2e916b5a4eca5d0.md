# smoothingFun_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e19cd34e-5937-14f2-bf90-69447767a870",
  "kind": "theorem",
  "lexical_name": "smoothingFun_one_le",
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
  "slug": "smoothingfun-one-le--4cba6c84b2e916b5a4eca5d0",
  "source": {
    "blob": "78335489fe106e5b36b836341da5d119cb2a2e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cba6c84b2e916b5a4eca5d0de57647d44b6f8e6158214b6cdadcf4913539430",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e19cd34e-5937-14f2-bf90-69447767a870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothingFun_one_le (hμ1 : μ 1 ≤ 1) : smoothingFun μ 1 ≤ 1 := by
  apply le_of_tendsto (tendsto_smoothingFun_of_map_one_le_one μ hμ1 (1 : R))
  simp only [eventually_atTop, ge_iff_le]
  use 1
  rintro n hn
  simp only [smoothingSeminormSeq]
  rw [one_pow]
  conv_rhs => rw [← one_rpow (1 / n : ℝ)]
  have hn1 : 0 < (1 / n : ℝ) := by
    apply _root_.div_pos zero_lt_one
    rw [← cast_zero, cast_lt]
    exact succ_le_iff.mp hn
  exact (rpow_le_rpow_iff (apply_nonneg μ _) zero_le_one hn1).mpr hμ1

/-- For any `x` and any positive `n`, `smoothingFun μ x ≤ μ (x ^ (n : ℕ))^(1 / n : ℝ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78335489fe106e5b36b836341da5d119cb2a2e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

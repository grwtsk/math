# HasFiniteFPowerSeriesAt.eventually_zero_of_bound_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:250f6110-66ac-e20c-98b1-7fb1d7d587c2",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesAt.eventually_zero_of_bound_zero",
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
  "slug": "hasfinitefpowerseriesat-eventually-zero-of-bound-zero--c5c71163bef994bc47af3e04",
  "source": {
    "blob": "fa7e1c740894a3be648b71ad686c0f7b11e831b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c71163bef994bc47af3e043108e6f055745a1652e0e011162727a0d7a70b37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:250f6110-66ac-e20c-98b1-7fb1d7d587c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesAt.eventually_zero_of_bound_zero
    (hf : HasFiniteFPowerSeriesAt f pf x 0) : f =ᶠ[𝓝 x] 0 :=
  Filter.eventuallyEq_iff_exists_mem.mpr (let ⟨r, hf⟩ := hf; ⟨EMetric.ball x r,
    EMetric.ball_mem_nhds x hf.r_pos, fun y hy ↦ hf.eq_zero_of_bound_zero y hy⟩)

/-- If `f` has a formal power series on a ball bounded by `1`, then `f` is constant equal
to `f x` on the ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7e1c740894a3be648b71ad686c0f7b11e831b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

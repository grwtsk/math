# isFixedPt_fixedPoint_iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f29b3ccc-1547-781f-3b49-99ad8962a0ea",
  "kind": "theorem",
  "lexical_name": "isFixedPt_fixedPoint_iterate",
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
  "slug": "isfixedpt-fixedpoint-iterate--6429ebcb360bfa524d58a8a8",
  "source": {
    "blob": "15e3dcdc8772e2b8a309e897b0c7c56a1d3ebd07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 319,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6429ebcb360bfa524d58a8a807789b1f28336a8d712d719e31327c1e16114efb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29b3ccc-1547-781f-3b49-99ad8962a0ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFixedPt_fixedPoint_iterate {n : ℕ} (hf : ContractingWith K f^[n]) :
    IsFixedPt f (hf.fixedPoint f^[n]) := by
  set x := hf.fixedPoint f^[n]
  have hx : f^[n] x = x := hf.fixedPoint_isFixedPt
  have := hf.toLipschitzWith.dist_le_mul x (f x)
  rw [← iterate_succ_apply, iterate_succ_apply', hx] at this
  contrapose! this
  have := dist_pos.2 (Ne.symm this)
  simpa only [NNReal.coe_one, one_mul, NNReal.val_eq_coe] using (mul_lt_mul_right this).mpr hf.left

end ContractingWith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15e3dcdc8772e2b8a309e897b0c7c56a1d3ebd07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

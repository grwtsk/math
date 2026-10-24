# HasFiniteFPowerSeriesOnBall.changeOrigin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:226c4df3-a9fe-893a-1cad-6f950e7343c3",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesOnBall.changeOrigin",
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
  "slug": "hasfinitefpowerseriesonball-changeorigin--5c4c381d6db80ecc933a3750",
  "source": {
    "blob": "650a469cdcfe97723fc63b3d9b6cfa1e43ff4ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 450,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c4c381d6db80ecc933a37508d153c4cfd68e6326f3588e99dcfe3fb4ec050bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:226c4df3-a9fe-893a-1cad-6f950e7343c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesOnBall.changeOrigin (hf : HasFiniteFPowerSeriesOnBall f p x n r)
    (h : (‖y‖₊ : ℝ≥0∞) < r) :
    HasFiniteFPowerSeriesOnBall f (p.changeOrigin y) (x + y) n (r - ‖y‖₊) where
  r_le := (tsub_le_tsub_right hf.r_le _).trans p.changeOrigin_radius
  r_pos := by simp [h]
  finite _ hm := p.changeOrigin_finite_of_finite hf.finite hm
  hasSum {z} hz := by
    have : f (x + y + z) =
        FormalMultilinearSeries.sum (FormalMultilinearSeries.changeOrigin p y) z := by
      rw [mem_eball_zero_iff, lt_tsub_iff_right, add_comm] at hz
      rw [p.changeOrigin_eval_of_finite hf.finite, add_assoc, hf.sum]
      exact mem_eball_zero_iff.2 ((enorm_add_le _ _).trans_lt hz)
    rw [this]
    apply (p.changeOrigin y).hasSum_of_finite fun _ => p.changeOrigin_finite_of_finite hf.finite

/-- If a function admits a finite power series expansion `p` on an open ball `B (x, r)`, then
it is continuously polynomial at every point of this ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650a469cdcfe97723fc63b3d9b6cfa1e43ff4ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

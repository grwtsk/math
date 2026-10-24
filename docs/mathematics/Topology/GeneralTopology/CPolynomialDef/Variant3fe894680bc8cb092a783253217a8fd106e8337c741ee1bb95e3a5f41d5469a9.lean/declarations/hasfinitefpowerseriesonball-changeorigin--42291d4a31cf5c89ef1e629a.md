# HasFiniteFPowerSeriesOnBall.changeOrigin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a1762b3-3917-7b94-0013-1daafc28c4fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59287f47-4f22-968f-08b0-8448545c98ea",
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
  "slug": "hasfinitefpowerseriesonball-changeorigin--42291d4a31cf5c89ef1e629a",
  "source": {
    "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 442,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42291d4a31cf5c89ef1e629a3c5814fc4872a64b71b638914275d655ffff35c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59287f47-4f22-968f-08b0-8448545c98ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–458.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

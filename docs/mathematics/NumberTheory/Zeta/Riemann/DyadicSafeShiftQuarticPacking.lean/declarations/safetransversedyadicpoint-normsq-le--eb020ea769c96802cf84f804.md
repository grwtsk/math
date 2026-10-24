# safeTransverseDyadicPoint_normSq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e43e47b2-91c7-bb5a-af18-2ce7a37c9430",
  "kind": "theorem",
  "lexical_name": "safeTransverseDyadicPoint_normSq_le",
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
  "slug": "safetransversedyadicpoint-normsq-le--eb020ea769c96802cf84f804",
  "source": {
    "blob": "41227433d053477cc82cf2a39b7046424e78eeec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 254,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb020ea769c96802cf84f8047051ca4ef1c23dd257ed2d14899a98ece6602559",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e43e47b2-91c7-bb5a-af18-2ce7a37c9430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safeTransverseDyadicPoint_normSq_le
    (z : ZeroPoint) (j : ℕ) :
    (safeTransverseDyadicPoint z j).normSq ≤
      2 * (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
  have hx :
      |(safeEvenDyadicBlock z j).re| ≤
        safeDyadicQuarticBlockEnvelope z j :=
    (Complex.abs_re_le_norm _).trans
      (safeEvenDyadicBlock_norm_le_quartic z j)
  have hy :
      |(safeOddDyadicBlock z j).im| ≤
        safeDyadicQuarticBlockEnvelope z j :=
    (Complex.abs_im_le_norm _).trans
      (safeOddDyadicBlock_norm_le_quartic z j)
  have hE : 0 ≤ safeDyadicQuarticBlockEnvelope z j :=
    safeDyadicQuarticBlockEnvelope_nonnegative z j
  have hxSq :
      (safeEvenDyadicBlock z j).re ^ 2 ≤
        (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
    rw [sq_le_sq]
    simpa [abs_of_nonneg hE] using hx
  have hySq :
      (safeOddDyadicBlock z j).im ^ 2 ≤
        (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
    rw [sq_le_sq]
    simpa [abs_of_nonneg hE] using hy
  unfold safeTransverseDyadicPoint PackingPoint.normSq PackingPoint.dot
  nlinarith

/-- Generic squared-edge estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41227433d053477cc82cf2a39b7046424e78eeec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

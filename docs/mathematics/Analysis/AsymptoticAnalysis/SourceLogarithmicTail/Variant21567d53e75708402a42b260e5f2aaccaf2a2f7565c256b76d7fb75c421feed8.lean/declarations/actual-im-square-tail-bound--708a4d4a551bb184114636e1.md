# actual_im_square_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de063750-c8f3-d260-7062-3bc67bc0d214",
  "kind": "theorem",
  "lexical_name": "actual_im_square_tail_bound",
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
  "slug": "actual-im-square-tail-bound--708a4d4a551bb184114636e1",
  "source": {
    "blob": "37b488abc557994755ad6487f27e1e41985cccb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 82,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708a4d4a551bb184114636e1cc494816c849b123c65264aa4c02be34526bd00a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de063750-c8f3-d260-7062-3bc67bc0d214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_im_square_tail_bound {C A T : ℝ} (hc : PositiveCountBound C)
    (hA : 1 ≤ A) (hT : 2 ≤ T) :
    Summable (fun o : HeightTail T => (normalizedTransform A (shiftedValue o.val)).im^2) ∧
    (∑' o : HeightTail T, (normalizedTransform A (shiftedValue o.val)).im^2) ≤
      logarithmicConstant C*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 := by
  have hs : Summable (fun o : HeightTail T => ‖normalizedTransform A (shiftedValue o.val)^2‖) :=
    (normalized_square_norms_summable A hA).subtype _
  have hb (o : HeightTail T) :
      (normalizedTransform A (shiftedValue o.val)).im^2 ≤
      ‖normalizedTransform A (shiftedValue o.val)^2‖ := by
    rw [norm_pow]
    have h := Complex.abs_im_le_norm (normalizedTransform A (shiftedValue o.val))
    simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) h 2
  have hi := Summable.of_nonneg_of_le (fun o => sq_nonneg _) hb hs
  exact ⟨hi, (Summable.tsum_le_tsum hb hi hs).trans
    (actual_norm_square_tail_bound hc hA hT)⟩

/-- One sufficient spectral height, independent of the arithmetic cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b488abc557994755ad6487f27e1e41985cccb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

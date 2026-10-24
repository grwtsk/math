# actual_sixth_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:458f3473-e707-44e1-f81d-f565c2c1737f",
  "kind": "theorem",
  "lexical_name": "actual_sixth_tail_bound",
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
  "slug": "actual-sixth-tail-bound--dc8be571c771c1a5efd282b1",
  "source": {
    "blob": "587d6dbff1da35409b08610193d032cb6e8cddac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 234,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc8be571c771c1a5efd282b15870f329a52a8449d86a9664cf8dea98feb92bdb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:458f3473-e707-44e1-f81d-f565c2c1737f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_tail_bound {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T) :
    (∑' o : HeightTail T, sixthWeight o.val) ≤ (8064/961:ℝ)*C*Real.log T/T^5 := by
  have hp : 0 < T := by linarith
  have hs := sixthWeight_tail_summable T hT
  have hpart : HasSum
      (fun k : ℕ => ∑' o : DyadicShell T hp k, sixthWeight o.val.val)
      (∑' o : HeightTail T, sixthWeight o.val) := by
    convert hs.hasSum.tsum_fiberwise (dyadicIndex T hp) using 1 <;> rfl
  have hm := dyadic_coefficient_hasSum.summable.mul_left (4*C*Real.log T/T^5)
  calc
    _ = ∑' k : ℕ, ∑' o : DyadicShell T hp k, sixthWeight o.val.val := hpart.tsum_eq.symm
    _ ≤ ∑' k : ℕ, (4*C*Real.log T/T^5)*(((k:ℝ)+2)*(1/32:ℝ)^k) :=
      Summable.tsum_le_tsum (dyadic_sixth_sum_le hc hT) hpart.summable hm
    _ = _ := by rw [tsum_mul_left, dyadic_coefficient_hasSum.tsum_eq]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587d6dbff1da35409b08610193d032cb6e8cddac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# norm_full_sub_evaluated_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f55313-2f1e-fb40-f85e-c2998c60f91a",
  "kind": "theorem",
  "lexical_name": "norm_full_sub_evaluated_le",
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
  "slug": "norm-full-sub-evaluated-le--8fb04eedfc7bebf366628d8a",
  "source": {
    "blob": "58a4d8739d6737642536160d52a6efb156317854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb04eedfc7bebf366628d8af6ec99d897e1bd742c78e0e54f988ff320427c58",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f55313-2f1e-fb40-f85e-c2998c60f91a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_full_sub_evaluated_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hT : 2 ≤ T) (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
      evaluated‖ ≤ error) :
    ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) - evaluated‖ ≤
      canonicalTailBudget x h T + error := by
  calc
    _ = ‖((∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) -
          ∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        ((∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) - evaluated)‖ := by
      congr 1
      ring
    _ ≤ _ := (norm_add_le _ _).trans
      (add_le_add (norm_full_sub_head_le x h T hh ha hT) heval)

/-- Fixed geometry only; the coefficient retains the same 44/log(6/5). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a4d8739d6737642536160d52a6efb156317854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

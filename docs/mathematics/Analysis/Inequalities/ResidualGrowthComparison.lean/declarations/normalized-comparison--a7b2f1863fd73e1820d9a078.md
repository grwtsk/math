# normalized_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c57410ac-2d9a-2538-039c-bbbb46249a88",
  "kind": "theorem",
  "lexical_name": "normalized_comparison",
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
  "slug": "normalized-comparison--a7b2f1863fd73e1820d9a078",
  "source": {
    "blob": "ed3349f8a9ac51c0a9a32aa137794d40e15e33ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7b2f1863fd73e1820d9a07874372bb76823a2686c98e2ebd66fe917bae29d07",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/ResidualGrowthComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c57410ac-2d9a-2538-039c-bbbb46249a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_comparison (A «λ» μ R h : ℝ) (n : ℕ) (hA : 0 < A)
    (hlower : (5/9:ℝ)*«λ»^3 ≤ μ^3+R)
    (hupper : μ^3+R ≤ (n:ℝ)*«λ»^3) (heq : «λ»=h^2) :
    (5/9:ℝ)*(h/A)^6 ≤ (μ^3+R)/A^6 ∧
    (μ^3+R)/A^6 ≤ (n:ℝ)*(h/A)^6 := by
  have hden : 0 < A^6 := pow_pos hA 6
  have hid : «λ»^3=h^6 := by rw [heq]; ring
  have hlo := (div_le_div_of_nonneg_right hlower (le_of_lt hden))
  have hup := (div_le_div_of_nonneg_right hupper (le_of_lt hden))
  constructor
  · simpa only [hid, div_pow, mul_div_assoc] using hlo
  · simpa only [hid, div_pow, mul_div_assoc] using hup

/-- Useful one-step form, keeping the boundary case β=0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/ResidualGrowthComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3349f8a9ac51c0a9a32aa137794d40e15e33ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# exact_exponential_shell_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3895c940-0999-a09a-b36b-beff1d3a3497",
  "kind": "theorem",
  "lexical_name": "exact_exponential_shell_price",
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
  "slug": "exact-exponential-shell-price--a16a084661f8ae6b9f2c140c",
  "source": {
    "blob": "e220b5c43689053096efe141bae6d1de8238d9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a16a084661f8ae6b9f2c140c93ff4aba48dc84c51bd26b93467871b2e95ca5e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3895c940-0999-a09a-b36b-beff1d3a3497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_exponential_shell_price (A : ℝ) :
    (Real.exp (2 * A - 1) - Real.exp (2 * A - 2)) /
        (12 * Real.sqrt (Real.exp (2 * A - 1))) =
      (Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 := by
  have hroot : Real.sqrt (Real.exp (2 * A - 1)) = Real.exp (A - 1 / 2) := by
    have hsq : Real.exp (A - 1 / 2) ^ 2 = Real.exp (2 * A - 1) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    nlinarith [Real.sq_sqrt (Real.exp_pos (2 * A - 1)).le,
      Real.sqrt_nonneg (Real.exp (2 * A - 1)), Real.exp_pos (A - 1 / 2)]
  have hi : Real.exp (2 * A - 1) = Real.exp (2 * A) * Real.exp (-1) := by
    rw [← Real.exp_add]
    congr 1
  have hlo : Real.exp (2 * A - 2) = Real.exp (2 * A) * Real.exp (-2) := by
    rw [← Real.exp_add]
    congr 1
  have hsplit : Real.exp (2 * A) =
      Real.exp (A - 1 / 2) * (Real.exp (1 / 2) * Real.exp A) := by
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  rw [hroot, hi, hlo, hsplit]
  field_simp [(Real.exp_pos (A - 1 / 2)).ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e220b5c43689053096efe141bae6d1de8238d9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

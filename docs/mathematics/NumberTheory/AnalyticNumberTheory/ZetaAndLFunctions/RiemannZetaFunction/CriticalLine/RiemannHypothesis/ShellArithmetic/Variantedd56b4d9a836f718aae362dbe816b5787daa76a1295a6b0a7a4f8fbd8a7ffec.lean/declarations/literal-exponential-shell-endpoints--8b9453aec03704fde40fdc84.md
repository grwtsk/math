# literal_exponential_shell_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cb4ff74-a939-6ac2-cced-3ac70e4970bb",
  "kind": "theorem",
  "lexical_name": "literal_exponential_shell_endpoints",
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
  "slug": "literal-exponential-shell-endpoints--8b9453aec03704fde40fdc84",
  "source": {
    "blob": "e220b5c43689053096efe141bae6d1de8238d9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b9453aec03704fde40fdc846412800b60a6de0e3c78b5787a8e097454e64bee",
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

Occurrence: `result:3cb4ff74-a939-6ac2-cced-3ac70e4970bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_exponential_shell_endpoints {A : ℝ} (hA : 8 ≤ A) :
    6 ≤ Real.exp (2 * A - 2) ∧
      12 ≤ Real.exp (2 * A - 1) - Real.exp (2 * A - 2) := by
  have hlo : 48 ≤ Real.exp (2 * A - 2) := exact_exp_four_exceeds_threshold.trans
    (Real.exp_le_exp.mpr (by linarith))
  have he1 : (2 : ℝ) ≤ Real.exp 1 := by linarith [Real.exp_one_gt_d9]
  have hmul : Real.exp (2 * A - 1) = Real.exp 1 * Real.exp (2 * A - 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [hmul]
  constructor
  · linarith
  · nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantedd56b4d9a836f718aae362dbe816b5787daa76a1295a6b0a7a4f8fbd8a7ffec.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e220b5c43689053096efe141bae6d1de8238d9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

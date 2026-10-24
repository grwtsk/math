# actual_gap_upper_of_primitive_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1884a01d1843b17a3cef2875318149204839dc7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8a31b27-8ea6-85b0-4ac3-788dd644e5df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94824a1a-3ce2-171f-56ba-cdd869606d89",
  "kind": "theorem",
  "lexical_name": "actual_gap_upper_of_primitive_budget",
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
  "slug": "actual-gap-upper-of-primitive-budget--e11ffd024660ec154288715d",
  "source": {
    "blob": "1884a01d1843b17a3cef2875318149204839dc7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variantab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e11ffd024660ec154288715d51e6628db174f62b26e59406c2d620ffb9484280",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variantab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94824a1a-3ce2-171f-56ba-cdd869606d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_gap_upper_of_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) (G a0 : ℝ) (hG : a0 ≤ G) :
    2 * mertensResidual A - G ≤
      4 - 2 * Real.eulerMascheroniConstant - a0 +
        2 * M * (130 / 3 + Real.sqrt (65 / 3 : ℝ)) := by
  have hr := actual_residual_upper_of_primitive_budget M hM hF A hA
  have hrat : 130 / (3 * A) ≤ (130 / 3 : ℝ) := by
    apply (div_le_iff₀ (by positivity : 0 < 3 * A)).2
    nlinarith
  have hb := mul_le_mul_of_nonneg_left (add_le_add_right hrat (Real.sqrt (65 / 3 : ℝ))) hM
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variantab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variantab260f162133634004526115d1b88c9f72fda8d9bcb6addb6a2ad2d8bec55bda.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1884a01d1843b17a3cef2875318149204839dc7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

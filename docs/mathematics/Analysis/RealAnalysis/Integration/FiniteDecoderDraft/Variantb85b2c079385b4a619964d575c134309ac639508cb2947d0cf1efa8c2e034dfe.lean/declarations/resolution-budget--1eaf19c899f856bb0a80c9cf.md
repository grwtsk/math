# resolution_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e6f99981182e05f31223856b1f9be05535bb135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6372dc45-7f36-6f1c-df6b-6646af9d5092",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33e37aca-4c77-d3e0-4b95-15097951eff5",
  "kind": "theorem",
  "lexical_name": "resolution_budget",
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
  "slug": "resolution-budget--1eaf19c899f856bb0a80c9cf",
  "source": {
    "blob": "8e6f99981182e05f31223856b1f9be05535bb135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 283,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eaf19c899f856bb0a80c9cfbbcef5e650e7bc72a711712e14f894f76c18599e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33e37aca-4c77-d3e0-4b95-15097951eff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolution_budget {C η A : ℝ} (hC : 0 ≤ C) (hη : 0 < η) (hA : 1 ≤ A) :
    Real.exp A*((1/2 : ℝ)+5/A)*mesh A (resolutionCount C η A)*
      (4*A+C+squarePrefixBaseline) ≤ η := by
  let n := resolutionCount C η A
  have hn : 1 ≤ n := resolutionCount_pos C η A
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hceil : 11*A*Real.exp A*(4*A+C+squarePrefixBaseline)/η ≤ (n : ℝ) := by
    exact (Nat.le_ceil _).trans (by exact_mod_cast (le_max_right 1 _))
  have hcost : 11*A*Real.exp A*(4*A+C+squarePrefixBaseline) ≤ η*(n : ℝ) := by
    have hc := (div_le_iff₀ hη).mp hceil
    simpa only [mul_comm] using hc
  have hW : 0 ≤ 4*A+C+squarePrefixBaseline := by linarith [squarePrefixBaseline_nonneg]
  have hh : 0 ≤ mesh A n := (mesh_pos hA hn).le
  have hcoarse := mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right (modulus_coarse hA) hh) hW
  change Real.exp A*((1/2 : ℝ)+5/A)*mesh A n*(4*A+C+squarePrefixBaseline) ≤ η
  refine hcoarse.trans ?_
  unfold mesh
  have he : (11/2 : ℝ)*Real.exp A*(2*A/(n : ℝ))*(4*A+C+squarePrefixBaseline) =
      (11*A*Real.exp A*(4*A+C+squarePrefixBaseline))/(n : ℝ) := by ring
  rw [he]
  exact (div_le_iff₀ hn0).mpr hcost

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6f99981182e05f31223856b1f9be05535bb135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

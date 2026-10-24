# residual_tail_of_baseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:442a6743-b276-8040-2443-a34777a40600",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_baseline",
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
  "slug": "residual-tail-of-baseline--03cda0a7072e88975964c91a",
  "source": {
    "blob": "d2e56f9971491cc349eccce4a188368149f464ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpCutoffOneBaseline/Variant52c1319c20514a392928afc1de9d83f295944d4b51e6a56827efbf13ae4baee3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03cda0a7072e88975964c91ab79092295b0e7cac3b1a15a96b1fa9c8518c819d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpCutoffOneBaseline/Variant52c1319c20514a392928afc1de9d83f295944d4b51e6a56827efbf13ae4baee3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:442a6743-b276-8040-2443-a34777a40600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_baseline (D R : ℝ) (hR : 1 ≤ R)
    (hbaseline : ∀ A : ℝ, R ≤ A → -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    ∀ A : ℝ, R ≤ A → mertensResidual A ≤ sharpBaselineResidualBudget D R := by
  intro A hRA
  have he := residual_eq_cutoffOne_joint_add_error A (hR.trans hRA)
  rw [jointAt_one] at he
  have hl := (abs_le.mp (cutoffOneLedgerError_tail hR hRA)).2
  have hb := hbaseline A hRA
  apply le_trans ?_ (le_max_right _ _)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpCutoffOneBaseline/Variant52c1319c20514a392928afc1de9d83f295944d4b51e6a56827efbf13ae4baee3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpCutoffOneBaseline/Variant52c1319c20514a392928afc1de9d83f295944d4b51e6a56827efbf13ae4baee3.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e56f9971491cc349eccce4a188368149f464ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# earlyCorrelation_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b38bb2d8bf97d9d5369e08b06b1243fbd3a1f34a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c40a5616-127b-09ad-6fd5-96aea532d780",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:daa7bffc-f5ad-37c2-9420-a193b5ec4ba9",
  "kind": "theorem",
  "lexical_name": "earlyCorrelation_ge",
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
  "slug": "earlycorrelation-ge--1008140810772eb65d22eef5",
  "source": {
    "blob": "b38bb2d8bf97d9d5369e08b06b1243fbd3a1f34a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1008140810772eb65d22eef55afc790e64f613a851fcc9fcad9d9eb0d2e679b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daa7bffc-f5ad-37c2-9420-a193b5ec4ba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlyCorrelation_ge {A u : ℝ} (hA : 1 ≤ A) (hu0 : 0 ≤ u) (hu : u ≤ A/40) :
    (7/8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A u := by
  have hp : 0 < A := by linarith
  have hb := sourceCorrelation_sub_one_abs_le hA u
  rw [abs_of_nonneg hu0] at hb
  have hf : 5*u/A ≤ (1/8 : ℝ) := (div_le_iff₀ hp).2 (by linarith)
  have hl := (abs_le.mp hb).1
  linarith

/-- This sign belongs to the actual tail test on an interval, not to the whole prime interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b38bb2d8bf97d9d5369e08b06b1243fbd3a1f34a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# lemmaR_tight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78d32636c75713a9abf67ded8af47bd416e4dc00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8ddcf8ef79ba80b4034b5609184ac334dd80a58e4b05470167697dd29f8c4cbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b4643ef-8e57-2dff-4a2a-e3447e7ec082",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:064624be-2533-b82d-846e-0a3ca7389e4d",
  "kind": "theorem",
  "lexical_name": "lemmaR_tight",
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
  "slug": "lemmar-tight--e6ea17cffb81531028a7bd71",
  "source": {
    "blob": "78d32636c75713a9abf67ded8af47bd416e4dc00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant8ddcf8ef79ba80b4034b5609184ac334dd80a58e4b05470167697dd29f8c4cbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6ea17cffb81531028a7bd710458842a3f5756b5dc254cba6e9ed2b0d6524db5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant8ddcf8ef79ba80b4034b5609184ac334dd80a58e4b05470167697dd29f8c4cbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:064624be-2533-b82d-846e-0a3ca7389e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemmaR_tight (hc : 0 < c) (hm : ∀ j, (m j : ℝ) ≤ c) :
    2 * c * rtrace (Pmat (𝕜 := ℝ) (mR r m) (v r b) + Q r b c) - frobSq (Pmat (𝕜 := ℝ) (mR r m) (v r b) + Q r b c)
      = (∑ j, kc c (mR r m j * xsq (v r b) j)) + c ^ 2 * b := by
  rw [rtrace_PQ, frobSq_PQ]
  have : ∀ j, kc c (mR r m j * xsq (v r b) j) = 2 * c * m j - (m j : ℝ) ^ 2 := by
    intro j; rw [xsq_v, mul_one]; unfold mR; rw [kc_of_le (hm j)]
  simp_rw [this]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
  ring

/-- … with the hypotheses of Lemma R all met exactly (m_j ≥ 0, ‖v_j‖² = 1 ≤ 1, n₊(Q) = b). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant8ddcf8ef79ba80b4034b5609184ac334dd80a58e4b05470167697dd29f8c4cbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant8ddcf8ef79ba80b4034b5609184ac334dd80a58e4b05470167697dd29f8c4cbf.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78d32636c75713a9abf67ded8af47bd416e4dc00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

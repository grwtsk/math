# thetaTail_even_index_logConcave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25a6f9fbf362750c70371099e90318546e4506b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1cc8ca4-0afb-96fe-1fe0-79f95f931514",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79063fa9-b736-6e5f-9eba-0859a883fbb2",
  "kind": "theorem",
  "lexical_name": "thetaTail_even_index_logConcave",
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
  "slug": "thetatail-even-index-logconcave--fc928f63683230a512bece65",
  "source": {
    "blob": "25a6f9fbf362750c70371099e90318546e4506b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc928f63683230a512bece65460c4720650e121556100c2847f9e255d6c83795",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79063fa9-b736-6e5f-9eba-0859a883fbb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_even_index_logConcave (r : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail r t * thetaTail (r + 4) t ≤ thetaTail (r + 2) t ^ 2 := by
  have h0 := thetaTail_index_logConcave r ht
  have h1 := thetaTail_index_logConcave (r + 1) ht
  have h2 := thetaTail_index_logConcave (r + 2) ht
  simp only [Nat.add_assoc] at h1 h2
  have hp0 := thetaTail_positive r ht
  have hp1 := thetaTail_positive (r + 1) ht
  have hp2 := thetaTail_positive (r + 2) ht
  have hp3 := thetaTail_positive (r + 3) ht
  have hp4 := thetaTail_positive (r + 4) ht
  have h03 : thetaTail r t * thetaTail (r + 3) t ≤
      thetaTail (r + 1) t * thetaTail (r + 2) t := by
    have ha := mul_le_mul_of_nonneg_right h0 hp3.le
    have hb := mul_le_mul_of_nonneg_right h1 hp1.le
    nlinarith only [ha, hb, hp2]
  have h14 : thetaTail (r + 1) t * thetaTail (r + 4) t ≤
      thetaTail (r + 2) t * thetaTail (r + 3) t := by
    have ha := mul_le_mul_of_nonneg_right h1 hp4.le
    have hb := mul_le_mul_of_nonneg_right h2 hp2.le
    nlinarith only [ha, hb, hp3]
  have ha := mul_le_mul_of_nonneg_right h03 hp4.le
  have hb := mul_le_mul_of_nonneg_right h14 hp2.le
  nlinarith only [ha, hb, hp3]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25a6f9fbf362750c70371099e90318546e4506b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

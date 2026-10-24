# exponential_firstMoment_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4997e5db127a709ccf6c1de8e632e6d822559143",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9978068-6a4f-22e0-dc76-de79b0947a38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13bf2195-3ed0-c03f-aedf-5bcbfe50baca",
  "kind": "theorem",
  "lexical_name": "exponential_firstMoment_integral",
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
  "slug": "exponential-firstmoment-integral--94e6f4f028562788a875a372",
  "source": {
    "blob": "4997e5db127a709ccf6c1de8e632e6d822559143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94e6f4f028562788a875a37220681900f79ae89fecebe7857faf77b7480a2f57",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13bf2195-3ed0-c03f-aedf-5bcbfe50baca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_firstMoment_integral {b : ℝ} (hb : 0 < b) :
    (∫ t : ℝ in Ioi 0, t * Real.exp (-b * t)) = 1 / b ^ 2 := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi (a := 2) (r := b) (by norm_num) hb
  have hg : Real.Gamma (2 : ℝ) = 1 := by norm_num
  simp only [show (2 : ℝ) - 1 = 1 by norm_num, Real.rpow_one, hg, mul_one] at h
  rw [show (1 / b) ^ (2 : ℝ) = (1 / b) ^ (2 : ℕ) from Real.rpow_natCast (1 / b) 2] at h
  simpa only [one_div, inv_pow, neg_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4997e5db127a709ccf6c1de8e632e6d822559143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

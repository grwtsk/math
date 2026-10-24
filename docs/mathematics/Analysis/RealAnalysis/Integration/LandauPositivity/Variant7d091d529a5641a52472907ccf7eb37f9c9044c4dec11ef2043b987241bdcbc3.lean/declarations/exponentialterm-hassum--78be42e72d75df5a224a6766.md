# exponentialTerm_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22eb1b7015f389073296df210e9f5b42ded260b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cee3448-1950-5caf-eb3d-296a423bc9af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db7919ff-4202-acfb-14d4-7d6c4d2c1440",
  "kind": "lemma",
  "lexical_name": "exponentialTerm_hasSum",
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
  "slug": "exponentialterm-hassum--78be42e72d75df5a224a6766",
  "source": {
    "blob": "b22eb1b7015f389073296df210e9f5b42ded260b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78be42e72d75df5a224a6766a06d9d05830b9f4fa1111992efbde844ee9d3ded",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7919ff-4202-acfb-14d4-7d6c4d2c1440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exponentialTerm_hasSum (v r : ℝ) (ω : Ω) :
    HasSum (fun n ↦ exponentialTerm (X := X) v r n ω)
      (Real.exp ((v + r) * X ω)) := by
  have h := (NormedSpace.expSeries_div_hasSum_exp (r * X ω)).mul_right
    (Real.exp (v * X ω))
  rw [← Real.exp_eq_exp_ℝ] at h
  convert! h using 1
  · ext n
    simp only [exponentialTerm, mul_pow]
    ring
  · rw [← Real.exp_add]
    congr 1
    ring

/-- Summable nonnegative tilted moments yield genuine exponential integrability at
an additional nonnegative parameter. This is the positivity step in Landau's argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22eb1b7015f389073296df210e9f5b42ded260b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

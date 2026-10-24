# contiguous_all_hi_le_domain_hi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a0120f1-5374-b7d7-5956-e4cf65eab749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1ed0019-85c0-93f5-33f9-87aebe442869",
  "kind": "theorem",
  "lexical_name": "contiguous_all_hi_le_domain_hi",
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
  "slug": "contiguous-all-hi-le-domain-hi--4a6fd069c33e8fe380e946ac",
  "source": {
    "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 445,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a6fd069c33e8fe380e946ac8e2232d86da7ed2e3d066cc5c64189599fff233d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1ed0019-85c0-93f5-33f9-87aebe442869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem contiguous_all_hi_le_domain_hi (es : List PartitionEntry) (lastHi : ℚ)
    (domain : IntervalRat)
    (hcheck : checkCoverage.checkContiguous domain es lastHi = true) :
    ∀ e ∈ es, e.domain.hi ≤ domain.hi := by
  induction es generalizing lastHi with
  | nil => intro e he; simp at he
  | cons e es' ih =>
    simp only [checkCoverage.checkContiguous] at hcheck
    by_cases h : e.domain.lo = lastHi
    · simp only [h, ne_eq, not_true_eq_false, decide_false, Bool.false_eq_true, ↓reduceIte] at hcheck
      intro e' he'
      simp only [List.mem_cons] at he'
      cases he' with
      | inl heq =>
        rw [heq]
        cases es' with
        | nil =>
          simp only [checkCoverage.checkContiguous, decide_eq_true_eq] at hcheck
          exact le_of_eq hcheck
        | cons e'' es'' =>
          have hrec := ih e.domain.hi hcheck
          have he''_mem : e'' ∈ (e'' :: es'') := by simp
          have he''_hi := hrec e'' he''_mem
          simp only [checkCoverage.checkContiguous] at hcheck
          by_cases h' : e''.domain.lo = e.domain.hi
          · calc e.domain.hi = e''.domain.lo := h'.symm
              _ ≤ e''.domain.hi := e''.domain.le
              _ ≤ domain.hi := he''_hi
          · simp only [ne_eq, h', not_false_eq_true, decide_true, Bool.false_eq_true, ↓reduceIte] at hcheck
      | inr hmem =>
        exact ih e.domain.hi hcheck e' hmem
    · simp only [ne_eq, h, not_false_eq_true, decide_true, Bool.false_eq_true, ↓reduceIte] at hcheck

/-- Helper: monotonicity of entry endpoints in a contiguous partition -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335e39587dbaa85521f4e8fc941808c68eeeb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

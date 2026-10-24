# checkContiguous_last_ends_aux

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
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:936db3f6-1f9b-8119-4153-d7cc8f4c7d24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30ebbbaa-fd8a-ab78-4e12-56fc661db1c2",
  "kind": "theorem",
  "lexical_name": "checkContiguous_last_ends_aux",
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
  "slug": "checkcontiguous-last-ends-aux--aaac05ef08faf6a6f9fdd6b4",
  "source": {
    "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 324,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaac05ef08faf6a6f9fdd6b43e6f99bd20097f28272a2ab05e791c582d779c6a",
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

Occurrence: `result:30ebbbaa-fd8a-ab78-4e12-56fc661db1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem checkContiguous_last_ends_aux (es : List PartitionEntry) (lastHi : ℚ)
    (domain : IntervalRat)
    (hcheck : checkCoverage.checkContiguous domain es lastHi = true)
    (hne : es ≠ []) :
    (es.getLast hne).domain.hi = domain.hi := by
  induction es generalizing lastHi with
  | nil => simp at hne
  | cons e es' ih =>
    simp only [checkCoverage.checkContiguous] at hcheck
    by_cases h : e.domain.lo = lastHi
    · simp only [h, ne_eq, not_true_eq_false, decide_false, Bool.false_eq_true, ↓reduceIte] at hcheck
      cases es' with
      | nil =>
        simp only [List.getLast_singleton]
        simp only [checkCoverage.checkContiguous, decide_eq_true_eq] at hcheck
        exact hcheck
      | cons e' es'' =>
        simp only [List.getLast_cons_cons]
        exact ih e.domain.hi hcheck (by simp)
    · simp only [ne_eq, h, not_false_eq_true, decide_true, Bool.false_eq_true, ↓reduceIte] at hcheck

/-- Coverage implies the last entry ends at domain.hi -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335e39587dbaa85521f4e8fc941808c68eeeb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# checkContiguous_adjacent_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e7fa58-957e-34f9-aff2-63fa037fc8f0",
  "kind": "theorem",
  "lexical_name": "checkContiguous_adjacent_aux",
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
  "slug": "checkcontiguous-adjacent-aux--8c640c0a3c15962e1c28d094",
  "source": {
    "blob": "823024257f25d2ab06d8e4b433ae52ba395d781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 374,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c640c0a3c15962e1c28d09419cab1b55a4aa0f8037d38a8fc06cbc2ec6880f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e7fa58-957e-34f9-aff2-63fa037fc8f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem checkContiguous_adjacent_aux (es : List PartitionEntry) (lastHi : ℚ)
    (domain : IntervalRat)
    (hcheck : checkCoverage.checkContiguous domain es lastHi = true)
    (i : ℕ) (hi : i + 1 < es.length) :
    (es[i]'(by omega)).domain.hi = (es[i + 1]'hi).domain.lo := by
  induction es generalizing lastHi i with
  | nil => simp at hi
  | cons e es' ih =>
    simp only [checkCoverage.checkContiguous] at hcheck
    by_cases h : e.domain.lo = lastHi
    · simp only [h, ne_eq, not_true_eq_false, decide_false, Bool.false_eq_true, ↓reduceIte] at hcheck
      cases i with
      | zero =>
        -- Need to show e.domain.hi = (es'[0]).domain.lo
        cases es' with
        | nil => simp at hi
        | cons e' es'' =>
          -- From checkContiguous, e'.domain.lo = e.domain.hi (lastHi for next iteration)
          simp only [checkCoverage.checkContiguous] at hcheck
          by_cases h' : e'.domain.lo = e.domain.hi
          · exact h'.symm
          · simp only [ne_eq, h', not_false_eq_true, decide_true, Bool.false_eq_true, ↓reduceIte] at hcheck
      | succ j =>
        -- Use IH for es' with index j
        simp only [List.length_cons, Nat.add_lt_add_iff_right] at hi
        exact ih e.domain.hi hcheck j hi
    · simp only [ne_eq, h, not_false_eq_true, decide_true, Bool.false_eq_true, ↓reduceIte] at hcheck

/-- Coverage implies consecutive entries are adjacent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823024257f25d2ab06d8e4b433ae52ba395d781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# goldbachProgressionFactoredMajorSum_eq_symmetricWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b486048d-0d92-5904-7da4-bf38af094e98",
  "kind": "theorem",
  "lexical_name": "goldbachProgressionFactoredMajorSum_eq_symmetricWindow",
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
  "slug": "goldbachprogressionfactoredmajorsum-eq-symmetricwindow--5b9d6556e9d5ce4cb702b914",
  "source": {
    "blob": "cedbbaac59215df5bb72f3a1e041b43697e028d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b9d6556e9d5ce4cb702b9145aee5a4b6e9d1636e77765e1548252555ff010cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b486048d-0d92-5904-7da4-bf38af094e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachProgressionFactoredMajorSum_eq_symmetricWindow
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionFactoredMajorSum Q N =
      goldbachProgressionSymmetricWindowMajorSum Q N := by
  unfold goldbachProgressionFactoredMajorSum
    goldbachProgressionSymmetricWindowMajorSum
  apply Finset.sum_congr rfl
  intro aq haq
  rw [goldbachProgressionArcSingularIntegral_eq_symmetric
    haq hscale]

/-- Every reduced numerator at one admitted denominator has the same intrinsic
circle singular integral. Hence the denominator block collapses without an
additional common-window premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cedbbaac59215df5bb72f3a1e041b43697e028d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

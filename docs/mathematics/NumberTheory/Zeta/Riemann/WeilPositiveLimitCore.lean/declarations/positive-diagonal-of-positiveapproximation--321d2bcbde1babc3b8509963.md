# positive_diagonal_of_positiveApproximation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ffb3124-0ba7-72f9-8066-17dd2f3b6290",
  "kind": "theorem",
  "lexical_name": "positive_diagonal_of_positiveApproximation",
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
  "slug": "positive-diagonal-of-positiveapproximation--321d2bcbde1babc3b8509963",
  "source": {
    "blob": "3274afe26def0b38f11d9105f9edb26530ddafe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:321d2bcbde1babc3b8509963bd1d29c220f18f26f151a5b671b7b9d87c09511a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ffb3124-0ba7-72f9-8066-17dd2f3b6290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_diagonal_of_positiveApproximation {T : Type*} {W : T → T → ℝ}
    (approximation : PolarizedPositiveApproximation T W) :
    ∀ f, 0 ≤ W f f := by
  intro f
  by_contra hnot
  have hnegative : W f f < 0 := lt_of_not_ge hnot
  have hepsilon : 0 < -(W f f) / 2 := by linarith
  obtain ⟨N, hN⟩ := approximation.comparison_vanishes f f (-(W f f) / 2) hepsilon
  have habs := hN N (le_refl N)
  have hleft :
      -(W f f - approximation.approximant N f f) ≤
        |W f f - approximation.approximant N f f| := neg_le_abs _
  have hbound := hleft.trans habs
  have hpositive := approximation.diagonal_nonnegative N f
  linarith

/-- Abstract exact criterion shared by any positivity formulation whose diagonal is
proved equivalent to the repository's canonical RH proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3274afe26def0b38f11d9105f9edb26530ddafe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

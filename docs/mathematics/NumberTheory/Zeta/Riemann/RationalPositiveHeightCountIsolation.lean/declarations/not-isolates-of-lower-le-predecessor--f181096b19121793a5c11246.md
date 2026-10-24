# not_isolates_of_lower_le_predecessor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:514c1cde-6031-086a-23e0-7c3e29b7812d",
  "kind": "theorem",
  "lexical_name": "not_isolates_of_lower_le_predecessor",
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
  "slug": "not-isolates-of-lower-le-predecessor--f181096b19121793a5c11246",
  "source": {
    "blob": "6f70a4622f2b3727146eaa05a8fe5d4a69d0defc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f181096b19121793a5c11246e26614cb34e0db88b11f8dca3a9a6331683b1f2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:514c1cde-6031-086a-23e0-7c3e29b7812d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isolates_of_lower_le_predecessor
    (interval : RationalCountInterval) (count : ℕ) (positive : 0 < count)
    (predecessorMem : interval.lower ≤ ((count - 1 : ℕ) : ℚ)) :
    ¬ interval.Isolates count := by
  intro isolated
  cases count with
  | zero => simp at positive
  | succ count =>
      have hlower := isolated.1
      norm_num at hlower predecessorMem
      linarith

end RationalCountInterval

/-- A source theorem that the maintained canonical count lies in one rational interval.
The endpoint convention is inherited from `positiveHeightCount`: `0 < Im rho ≤ T`,
with actual analytic multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f70a4622f2b3727146eaa05a8fe5d4a69d0defc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

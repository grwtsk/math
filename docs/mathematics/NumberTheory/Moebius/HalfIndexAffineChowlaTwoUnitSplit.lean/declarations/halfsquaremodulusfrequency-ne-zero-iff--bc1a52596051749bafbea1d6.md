# halfSquareModulusFrequency_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c8fbbf9-c0c1-8b47-a4a5-c40ee45230d0",
  "kind": "theorem",
  "lexical_name": "halfSquareModulusFrequency_ne_zero_iff",
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
  "slug": "halfsquaremodulusfrequency-ne-zero-iff--bc1a52596051749bafbea1d6",
  "source": {
    "blob": "791e4238fb1bb06bed50920b4787f79f26e49705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 132,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc1a52596051749bafbea1d6976eb1e6625f4eb2bc944f39d7c2db1d0a16b7f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8fbbf9-c0c1-8b47-a4a5-c40ee45230d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfSquareModulusFrequency_ne_zero_iff
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) :
    halfSquareModulusFrequency d ell ≠ 0 ↔ ell ≠ 0 := by
  constructor
  · intro hhalf hell
    subst ell
    exact hhalf (by simp [halfSquareModulusFrequency])
  · intro hell hhalf
    apply hell
    have h := congrArg (doubledSquareModulusFrequency d) hhalf
    rw [doubled_halfSquareModulusFrequency d hTwo] at h
    simpa only [doubledSquareModulusFrequency, add_zero] using h

/-- Shift aggregate indexed by the undoubled frequency `ell` on the two-unit
branch.

The shift phase uses the unique half-frequency, while the fixed-form core is
sampled at `ell` itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791e4238fb1bb06bed50920b4787f79f26e49705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

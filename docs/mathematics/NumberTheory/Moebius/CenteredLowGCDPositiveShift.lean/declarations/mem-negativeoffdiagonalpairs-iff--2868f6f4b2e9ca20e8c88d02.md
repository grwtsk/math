# mem_negativeOffDiagonalPairs_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:060cc8f2-0322-c267-9bf3-1aa1f5897f47",
  "kind": "theorem",
  "lexical_name": "mem_negativeOffDiagonalPairs_iff",
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
  "slug": "mem-negativeoffdiagonalpairs-iff--2868f6f4b2e9ca20e8c88d02",
  "source": {
    "blob": "0f7cb3ce884eb7e4f8372cb7c4d8d781aa0774f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2868f6f4b2e9ca20e8c88d02f1dc02970601901c170fbf93a4c1cc97181ed2dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:060cc8f2-0322-c267-9bf3-1aa1f5897f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_negativeOffDiagonalPairs_iff
    {X : ℕ} {p : ℕ × ℕ} :
    p ∈ negativeOffDiagonalPairs X ↔
      p.1 ∈ octaveIndexSet X ∧
      p.2 ∈ octaveIndexSet X ∧
      p.2 < p.1 := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hoff, hlt⟩
    rcases Finset.mem_offDiag.mp hoff with ⟨h1, h2, hne⟩
    exact ⟨h1, h2, hlt⟩
  · rintro ⟨h1, h2, hlt⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_offDiag.mpr
        ⟨h1, h2, Ne.symm (Nat.ne_of_lt hlt)⟩,
       hlt⟩

/-- Coordinate swap identifies lower and upper triangular regions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f7cb3ce884eb7e4f8372cb7c4d8d781aa0774f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

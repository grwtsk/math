# sqrt_vaughanCutoff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2612be9-f745-a354-8aa7-2921a1e6e3dc",
  "kind": "theorem",
  "lexical_name": "sqrt_vaughanCutoff_le",
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
  "slug": "sqrt-vaughancutoff-le--b5de8c1ca52002de26e8a0d8",
  "source": {
    "blob": "074c1e20ebe60583948f1c113c4365f9d309eefe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5de8c1ca52002de26e8a0d850d67f848abec89001e9f5d9f7116ea6209234df",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2612be9-f745-a354-8aa7-2921a1e6e3dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_vaughanCutoff_le (A : ℝ) (hA : 1 ≤ A) :
    Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
  apply (Real.sqrt_le_left (by linarith)).2
  exact Nat.floor_le (sq_nonneg A)

/-- The real plain weight agrees with the existing actual-source weight on positive integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c1e20ebe60583948f1c113c4365f9d309eefe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

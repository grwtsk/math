# vonMangoldt_le_vonMangoldtUB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ffc1e1e-20fa-3b71-dac4-e11c21e72f04",
  "kind": "theorem",
  "lexical_name": "vonMangoldt_le_vonMangoldtUB",
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
  "slug": "vonmangoldt-le-vonmangoldtub--6295cacb35cc6c9b9ae40d2c",
  "source": {
    "blob": "3b5e73eccb695d7ba489001e0676bcd56fb94a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6295cacb35cc6c9b9ae40d2c1e3b5a0e62b9ff5fe3b9854836faf552c5728a7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ffc1e1e-20fa-3b71-dac4-e11c21e72f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vonMangoldt_le_vonMangoldtUB (n : Nat) (depth : Nat) :
    (vonMangoldt n : Real) <= (vonMangoldtUB n depth : Real) := by
  rw [vonMangoldt_apply]
  by_cases hp : IsPrimePow n
  case pos =>
    have hpos : (0 : Rat) < (n.minFac : Rat) := by
      exact_mod_cast Nat.minFac_pos n
    have hmem := mem_logPointComputable hpos depth
    simp [IntervalRat.mem_def] at hmem
    simpa [vonMangoldtUB, hp] using hmem.2
  case neg =>
    simp [vonMangoldtUB, hp]

/-- The Chebyshev function `psi(N)` is bounded above by `psiUB(N)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5e73eccb695d7ba489001e0676bcd56fb94a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

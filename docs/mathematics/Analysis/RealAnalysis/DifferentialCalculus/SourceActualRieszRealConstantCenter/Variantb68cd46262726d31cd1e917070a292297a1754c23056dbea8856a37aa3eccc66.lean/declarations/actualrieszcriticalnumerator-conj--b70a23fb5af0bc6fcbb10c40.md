# actualRieszCriticalNumerator_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3c8230f-da01-5a73-ce0a-0991c450ef64",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalNumerator_conj",
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
  "slug": "actualrieszcriticalnumerator-conj--b70a23fb5af0bc6fcbb10c40",
  "source": {
    "blob": "680ed6b8aa2c3e4acf40c71654bb3e4a9d4d8085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70a23fb5af0bc6fcbb10c4037d307ccc315e81f8c594d2c218db4cadf67927d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3c8230f-da01-5a73-ce0a-0991c450ef64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalNumerator_conj (z : ℂ) :
    actualRieszCriticalNumerator (conj z) = conj (actualRieszCriticalNumerator z) := by
  have hs : (1 / 2 : ℂ) + conj z = conj ((1 / 2 : ℂ) + z) := by
    simp only [map_add, map_div₀, map_one, map_ofNat]
  unfold actualRieszCriticalNumerator
  rw [hs, actualZeta_logDeriv_conj]
  simp only [map_sub, map_neg, map_div₀, map_one, map_ofNat]

/-- The real intercept uses the actual complex derivative, not an auxiliary center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantb68cd46262726d31cd1e917070a292297a1754c23056dbea8856a37aa3eccc66.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680ed6b8aa2c3e4acf40c71654bb3e4a9d4d8085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

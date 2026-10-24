# cutoffVariation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3264dfaf2e8680557eeb878738aab1a5834e483ee65824956b124ee98af6d732",
  "kind": "def",
  "lexical_name": "cutoffVariation",
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
  "slug": "cutoffvariation--46d872f75f78eeb4b12b1168",
  "source": {
    "blob": "b1e085e54168372c5bd462da78f430fe24c26cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variantafe66f0df4f12810449ca512132741b43230c55b5e3cacb2e3c0042bbcab2ab9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46d872f75f78eeb4b12b1168195734496a207c8ba6b3b431b4ee3285651f99f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variantafe66f0df4f12810449ca512132741b43230c55b5e3cacb2e3c0042bbcab2ab9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3264dfaf2e8680557eeb878738aab1a5834e483ee65824956b124ee98af6d732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cutoffVariation (row : ℕ → ℝ) (a b : ℕ) : ℝ :=
  ∑ U ∈ Finset.Ico a b, |row (U + 1) - row U|

/-- The complete coefficient update, without treating the row as a binary mask. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variantafe66f0df4f12810449ca512132741b43230c55b5e3cacb2e3c0042bbcab2ab9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/58064d53c502d0eead6334ab0d4bd68366e532db3e0d765cf54897217a287e0dStrictAudit/Variantafe66f0df4f12810449ca512132741b43230c55b5e3cacb2e3c0042bbcab2ab9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e085e54168372c5bd462da78f430fe24c26cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actualRelativePsiTimeError_tail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58fee627-bfeb-cf13-a15b-a058b33053b8",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_tail_integrable",
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
  "slug": "actualrelativepsitimeerror-tail-integrable--5b122a2f16f395693f6e27b9",
  "source": {
    "blob": "7bf7628afb0d6ff0667d9c0706b6fde55800513e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant86d547efaafc112212cefb7a8eea9888a469e5107c3db6abd57d96ad6a054f52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b122a2f16f395693f6e27b938af7d8bdc7ef92b56dafd851d9ebb5755bb4b11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant86d547efaafc112212cefb7a8eea9888a469e5107c3db6abd57d96ad6a054f52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58fee627-bfeb-cf13-a15b-a058b33053b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_tail_integrable {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn actualRelativePsiTimeError (Ioi t) := by
  exact actualRelativePsiTimeError_integrableOn.mono_set (by grind)

/-- Actual zero/unit normalization and gamma retain the complete signed tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant86d547efaafc112212cefb7a8eea9888a469e5107c3db6abd57d96ad6a054f52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant86d547efaafc112212cefb7a8eea9888a469e5107c3db6abd57d96ad6a054f52.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bf7628afb0d6ff0667d9c0706b6fde55800513e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

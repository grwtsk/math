# actualInitialPrimeTwoTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd8468cded0021891ec7cf6658e3fafc43c45f5861c675cd0ff1237affc2bffc",
  "kind": "def",
  "lexical_name": "actualInitialPrimeTwoTail",
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
  "slug": "actualinitialprimetwotail--65c9e5825fb18347b10a256a",
  "source": {
    "blob": "5a3bc70b3d2be8acda167bb3cb5cd3710819905b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantc0d89c240dc34ca3ccdc22dfde779880161fb5a6c2b04398e8b1a04e445d1893.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65c9e5825fb18347b10a256a1308a88dfd37f2470b14bf024a93f8d30e787b16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantc0d89c240dc34ca3ccdc22dfde779880161fb5a6c2b04398e8b1a04e445d1893.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd8468cded0021891ec7cf6658e3fafc43c45f5861c675cd0ff1237affc2bffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualInitialPrimeTwoTail (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) *
    ((∫ t in Ioi T, actualInitialPrimeDensity A c t) +
      ∫ t in Ioi T, actualInitialPrimeDensity A c (-t))

/-- Exact signed head/two-tail split; the actual upper and lower contour pieces are complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantc0d89c240dc34ca3ccdc22dfde779880161fb5a6c2b04398e8b1a04e445d1893.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantc0d89c240dc34ca3ccdc22dfde779880161fb5a6c2b04398e8b1a04e445d1893.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a3bc70b3d2be8acda167bb3cb5cd3710819905b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

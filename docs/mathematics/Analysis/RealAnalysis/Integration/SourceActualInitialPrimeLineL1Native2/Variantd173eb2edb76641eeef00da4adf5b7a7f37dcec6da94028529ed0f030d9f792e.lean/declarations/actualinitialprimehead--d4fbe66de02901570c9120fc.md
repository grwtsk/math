# actualInitialPrimeHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30b1aca61edf3e80600963ae076ccacbd358ca8766fb0f408eb25e7dab495592",
  "kind": "def",
  "lexical_name": "actualInitialPrimeHead",
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
  "slug": "actualinitialprimehead--d4fbe66de02901570c9120fc",
  "source": {
    "blob": "29d4a491749fa0715dbbb6e34952623d87436212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variantd173eb2edb76641eeef00da4adf5b7a7f37dcec6da94028529ed0f030d9f792e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4fbe66de02901570c9120fc2596b6ecb617c021bf491b5a0fe10f5cfeb6a718",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variantd173eb2edb76641eeef00da4adf5b7a7f37dcec6da94028529ed0f030d9f792e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30b1aca61edf3e80600963ae076ccacbd358ca8766fb0f408eb25e7dab495592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualInitialPrimeHead (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) * ∫ t in -T..T, actualInitialPrimeDensity A c t

/-- Both actual tails with their correct opposite-frequency parametrization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variantd173eb2edb76641eeef00da4adf5b7a7f37dcec6da94028529ed0f030d9f792e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variantd173eb2edb76641eeef00da4adf5b7a7f37dcec6da94028529ed0f030d9f792e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d4a491749fa0715dbbb6e34952623d87436212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

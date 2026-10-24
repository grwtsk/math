# classReading

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dd2c2a5b96547e8b41bed37335ae2f2f1098261d47ae1028e5d53a3a403eeb9",
  "kind": "def",
  "lexical_name": "classReading",
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
  "slug": "classreading--05ae0399dfb8a09da927b646",
  "source": {
    "blob": "fea4b740c518f8a6b51aba9c717dd4fcedd9cdc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 158,
    "path": "GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05ae0399dfb8a09da927b64626935ab3e317d204224b57ea18cd4644c603877e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dd2c2a5b96547e8b41bed37335ae2f2f1098261d47ae1028e5d53a3a403eeb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classReading (A : ℝ) (f : ComplexSourceL2) : ℝ :=
  (⟪windowTest A, f⟫_ℂ).re / (∫ x : ℝ, prescribedSource A x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fea4b740c518f8a6b51aba9c717dd4fcedd9cdc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

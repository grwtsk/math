# concentrated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46b03962b8e77ff2ab07e9b3f18ed4c4c2be9d7075732e6d935b5435abcfa336",
  "kind": "def",
  "lexical_name": "concentrated",
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
  "slug": "concentrated--6506df30eb784c9e25d7ec3c",
  "source": {
    "blob": "70c0e1f63656b7c3f1dac1b6b16c0c6a336bb6f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6506df30eb784c9e25d7ec3c93b9ab74f5def96c7e8b7c6eca858baba1b91e81",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46b03962b8e77ff2ab07e9b3f18ed4c4c2be9d7075732e6d935b5435abcfa336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def concentrated (k : ℕ) (x : ℝ) : ℝ := (4 * x * (1 - x)) ^ k
/-- The broad in this module, with the following exact parameterization.

def broad (k : ℕ) (x : ℝ) : ℝ := 1 - (2 * x - 1) ^ (2 * k)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NormalizedShapeCountermodels/Variant0072e18083b437b0d59ada9936617337e4cd4f6dc1ed884ab0339cff481a2286.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c0e1f63656b7c3f1dac1b6b16c0c6a336bb6f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

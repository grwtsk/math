# table_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8920588aeed6283d58581130d4b69c0dc46704a97db177f2b24276c4d56c951",
  "kind": "def",
  "lexical_name": "table_1",
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
  "slug": "table-1--81abb2cd23e75083dfeec1d8",
  "source": {
    "blob": "dd55c4b873fbac538daa1442acebeefde7f68111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 87,
    "path": "GRWTSK/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81abb2cd23e75083dfeec1d8345d9f07b40afae5da408475bf0ff8296285c803",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8920588aeed6283d58581130d4b69c0dc46704a97db177f2b24276c4d56c951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def table_1 : List (ℝ × ℝ × ℝ) := [
  (10 ^ 10, -0.77, 0.85),
  (2 * 10 ^ 10, -0.75, 0.64),
  (4 * 10 ^ 10, -0.73, 0.80),
  (8 * 10 ^ 10, -0.80, 0.86),
  (16 * 10 ^ 10, -0.88, 0.68),
  (32 * 10 ^ 10, -0.88, 0.78),
  (64 * 10 ^ 10, -0.66, 0.74),
  (10 ^ 12, -0.80, 0.81),
  (2 * 10 ^ 12, -0.79, 0.76),
  (4 * 10 ^ 12, -0.73, 0.73),
  (8 * 10 ^ 12, -0.80, 0.76),
  (16 * 10 ^ 12, -0.80, 0.68),
  (32 * 10 ^ 12, -0.67, 0.93),
  (64 * 10 ^ 12, -0.78, 0.77),
  (10 ^ 14, -0.79, 0.72),
  (2 * 10 ^ 14, -0.60, 0.76),
  (4 * 10 ^ 14, -0.65, 0.73),
  (8 * 10 ^ 14, -0.81, 0.88),
  (16 * 10 ^ 14, -0.66, 0.86),
  (32 * 10 ^ 14, -0.74, 0.86),
  (64 * 10 ^ 14, -0.73, 0.66),
  (10 ^ 16, -0.88, 0.74),
  (2 * 10 ^ 16, -0.87, 0.70),
  (4 * 10 ^ 16, -0.65, 0.73),
  (8 * 10 ^ 16, -0.82, 0.77),
  (16 * 10 ^ 16, -0.71, 0.92),
  (32 * 10 ^ 16, -0.78, 0.71),
  (64 * 10 ^ 16, -0.94, 0.82),
  (128 * 10 ^ 16, -0.94, 0.75),
  (256 * 10 ^ 16, -0.82, 0.86),
  (512 * 10 ^ 16, -0.83, 0.94)
]

@[blueprint
  "buthe-sieve-bound"
  (title := "Buthe sieve bound")
  (statement := /-- Büthe, arXiv:1511.02032v2, Section 6, Equation (6.2):
    the Eratosthenes-sieve computation gives
    $-0.8 \leq (t-\psi(t))/\sqrt{t} \leq 0.81$ for
    $100 \leq t \leq 5 \cdot 10^{10}$. -/)
  (proof := /-- This is the finite-range Eratosthenes-sieve computation
    recorded as Equation (6.2) in \cite{Buthe}. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Buthe/Variant2d1a2199ffcdecf24b10460c6f52074c7007009c78a35058e4d1bee0db6409c0.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd55c4b873fbac538daa1442acebeefde7f68111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

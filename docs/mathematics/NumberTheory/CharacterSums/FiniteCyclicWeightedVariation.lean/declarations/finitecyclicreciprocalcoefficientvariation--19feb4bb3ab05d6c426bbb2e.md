# finiteCyclicReciprocalCoefficientVariation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ca49851c78fe76eb345c9fe732e38dc504a58646940775a974e71bb94c57675",
  "kind": "def",
  "lexical_name": "finiteCyclicReciprocalCoefficientVariation",
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
  "slug": "finitecyclicreciprocalcoefficientvariation--19feb4bb3ab05d6c426bbb2e",
  "source": {
    "blob": "04d0569a302350bf6597cc870fcf957e0be61200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 194,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19feb4bb3ab05d6c426bbb2ef43c13e1c7fa6aa847d59d6902ddd8830bd0f877",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ca49851c78fe76eb345c9fe732e38dc504a58646940775a974e71bb94c57675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteCyclicReciprocalCoefficientVariation
    (a : ℕ → ℂ) (A B R : ℕ) : ℝ :=
  finiteCyclicCoefficientVariation
    (fun n => a n / (((n + R : ℕ) : ℂ))) A B

/-- Actual weighted reciprocal estimate.  The arithmetic coefficients enter
only through the exact variation of `a n / (n + R)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d0569a302350bf6597cc870fcf957e0be61200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

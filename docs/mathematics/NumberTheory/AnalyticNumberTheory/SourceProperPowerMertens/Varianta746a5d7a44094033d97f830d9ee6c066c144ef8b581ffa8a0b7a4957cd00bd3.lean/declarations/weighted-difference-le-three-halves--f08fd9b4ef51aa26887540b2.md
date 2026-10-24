# weighted_difference_le_three_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea7e0828-acf1-c21b-1f07-20a73df0df68",
  "kind": "theorem",
  "lexical_name": "weighted_difference_le_three_halves",
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
  "slug": "weighted-difference-le-three-halves--f08fd9b4ef51aa26887540b2",
  "source": {
    "blob": "eb217e491e315c30cd6a989834b41a1b16ea7205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Varianta746a5d7a44094033d97f830d9ee6c066c144ef8b581ffa8a0b7a4957cd00bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f08fd9b4ef51aa26887540b26ab53c18149ccb214d12d9acd143c1295d69fa83",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Varianta746a5d7a44094033d97f830d9ee6c066c144ef8b581ffa8a0b7a4957cd00bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea7e0828-acf1-c21b-1f07-20a73df0df68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_difference_le_three_halves (N : ℕ) :
    weightedMangoldt N - weightedPrime N ≤ 3 / 2 := by
  rw [← tailProperMass_one_eq]
  have hb := tailProperMass_le_budget 1 N (by omega)
  norm_num [powerTailBudget] at hb
  exact hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Varianta746a5d7a44094033d97f830d9ee6c066c144ef8b581ffa8a0b7a4957cd00bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Varianta746a5d7a44094033d97f830d9ee6c066c144ef8b581ffa8a0b7a4957cd00bd3.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb217e491e315c30cd6a989834b41a1b16ea7205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

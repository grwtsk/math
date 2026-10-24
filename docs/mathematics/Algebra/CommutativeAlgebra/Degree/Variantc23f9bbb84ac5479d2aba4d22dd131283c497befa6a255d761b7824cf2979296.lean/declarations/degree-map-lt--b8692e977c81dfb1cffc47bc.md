# degree_map_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e84596d5-958a-e4df-57bf-232e07762217",
  "kind": "lemma",
  "lexical_name": "degree_map_lt",
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
  "slug": "degree-map-lt--b8692e977c81dfb1cffc47bc",
  "source": {
    "blob": "b356338574e9bb276346e930da64ce79b8ee23e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 161,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8692e977c81dfb1cffc47bc3860e8acc037df0829f6f4e1d22dcb1f475288bf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e84596d5-958a-e4df-57bf-232e07762217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degree_map_lt (hp : f p.leadingCoeff = 0) (hp₀ : p ≠ 0) : (p.map f).degree < p.degree := by
  refine degree_map_le.lt_of_ne fun hpq ↦ hp₀ ?_
  rw [leadingCoeff, ← coeff_map, ← natDegree_eq_natDegree hpq, ← leadingCoeff, leadingCoeff_eq_zero]
    at hp
  rw [← degree_eq_bot, ← hpq, hp, degree_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantc23f9bbb84ac5479d2aba4d22dd131283c497befa6a255d761b7824cf2979296.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b356338574e9bb276346e930da64ce79b8ee23e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

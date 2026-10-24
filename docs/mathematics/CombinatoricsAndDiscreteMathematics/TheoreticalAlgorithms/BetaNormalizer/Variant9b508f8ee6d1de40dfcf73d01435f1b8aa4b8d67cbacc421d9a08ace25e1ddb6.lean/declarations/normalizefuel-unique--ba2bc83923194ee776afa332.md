# normalizeFuel_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dfcbe03-456d-7690-77f0-f2d1959ba2fd",
  "kind": "theorem",
  "lexical_name": "normalizeFuel_unique",
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
  "slug": "normalizefuel-unique--ba2bc83923194ee776afa332",
  "source": {
    "blob": "7ad8c49fe73d77b961c0f05a006180534b528bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2bc83923194ee776afa3323c457277d52152948b451bfe9df66ae121a2b103",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dfcbe03-456d-7690-77f0-f2d1959ba2fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizeFuel_unique {term first second : Expr S} {firstFuel secondFuel : ℕ}
    (firstSuccess : normalizeFuel firstFuel term = some first)
    (secondSuccess : normalizeFuel secondFuel term = some second) : first = second := by
  obtain ⟨firstPath, firstNormal⟩ := normalizeFuel_sound firstSuccess
  obtain ⟨secondPath, secondNormal⟩ := normalizeFuel_sound secondSuccess
  exact normal_forms_unique firstPath secondPath firstNormal secondNormal

end FormalResearch.TypeTheory.BetaReduction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad8c49fe73d77b961c0f05a006180534b528bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# inner_smul_right_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2daa1a0-a2cf-1a1a-425f-1c5f7f867a6e",
  "kind": "lemma",
  "lexical_name": "inner_smul_right_eq_smul",
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
  "slug": "inner-smul-right-eq-smul--8ca275cb66facab19efe80da",
  "source": {
    "blob": "1e054178ae8c4bb491b737cbc992baa2e17f0602",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 108,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ca275cb66facab19efe80da24e06a7b36ca9b029d6c21efab08f2c59d6614c9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2daa1a0-a2cf-1a1a-425f-1c5f7f867a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_smul_right_eq_smul (x y : E) (r : 𝕝) : ⟪x, r • y⟫ = r • ⟪x, y⟫ := by
  rw [← inner_conj_symm, inner_smul_left_eq_star_smul, starRingEnd_apply, starRingEnd_apply,
    star_smul, star_star, ← starRingEnd_apply, inner_conj_symm]

end Algebra

/-- See `inner_smul_left_eq_star_smul` for the case of a general algebra action. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e054178ae8c4bb491b737cbc992baa2e17f0602` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# choose_mul_mul_modEq_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75353af4-8f21-a4d7-f4f0-c99b88cbc70a",
  "kind": "theorem",
  "lexical_name": "choose_mul_mul_modEq_choose",
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
  "slug": "choose-mul-mul-modeq-choose--a905464b1d6355011928543b",
  "source": {
    "blob": "da577617157bbaffb0e8d3576c77923344d3330b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 114,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a905464b1d6355011928543b4441362f1b22272388997448531b291972cd8b80",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75353af4-8f21-a4d7-f4f0-c99b88cbc70a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_mul_modEq_choose :
    choose (p * a) (p * b) ≡ choose a b [ZMOD p] := by
  grw [choose_modEq_choose_mod_mul_choose_div]
  simp [NeZero.pos, Int.ModEq.refl]

/-- For primes `p`, `choose (p * a) (p * b)` is congruent to `choose a b` modulo `p`.
Also see `choose_mul_mul_modEq_choose` for the version with `ZMOD`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da577617157bbaffb0e8d3576c77923344d3330b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

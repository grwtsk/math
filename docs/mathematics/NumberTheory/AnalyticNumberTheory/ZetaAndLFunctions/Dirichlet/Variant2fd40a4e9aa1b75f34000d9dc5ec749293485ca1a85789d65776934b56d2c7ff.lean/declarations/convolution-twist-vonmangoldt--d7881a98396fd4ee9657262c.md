# convolution_twist_vonMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4aa615a3-fe39-67cd-06cd-a352832da8b3",
  "kind": "lemma",
  "lexical_name": "convolution_twist_vonMangoldt",
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
  "slug": "convolution-twist-vonmangoldt--d7881a98396fd4ee9657262c",
  "source": {
    "blob": "c90d86855802903ec13d926c02565be2db4d9979",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 363,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7881a98396fd4ee9657262c70796f8a9d5949b4100bec56ffa55b5bea237a7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aa615a3-fe39-67cd-06cd-a352832da8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma convolution_twist_vonMangoldt {N : ℕ} (χ : DirichletCharacter ℂ N) :
    (↗χ * ↗Λ) ⍟ ↗χ = ↗χ * ↗Complex.log := by
  rw [← convolution_vonMangoldt_const_one, ← χ.mul_convolution_distrib, mul_one]

/-- The L-series of the twist of the von Mangoldt function `Λ` by a Dirichlet character `χ`
converges at `s` when `re s > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c90d86855802903ec13d926c02565be2db4d9979` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

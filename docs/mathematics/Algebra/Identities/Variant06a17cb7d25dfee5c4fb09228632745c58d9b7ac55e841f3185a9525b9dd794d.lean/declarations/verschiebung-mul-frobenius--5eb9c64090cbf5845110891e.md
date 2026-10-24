# verschiebung_mul_frobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:840f83a5-a192-b12a-d3ec-f729612a1500",
  "kind": "theorem",
  "lexical_name": "verschiebung_mul_frobenius",
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
  "slug": "verschiebung-mul-frobenius--5eb9c64090cbf5845110891e",
  "source": {
    "blob": "40d17b27a46cf054d5cd6bef1f6e204ac0d441e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eb9c64090cbf5845110891e7c2772f9ce00ec98202fe32124b5038d9fd194a6",
  "verification": {
    "reference": "docs/verification/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:840f83a5-a192-b12a-d3ec-f729612a1500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verschiebung_mul_frobenius (x y : 𝕎 R) :
    verschiebung (x * frobenius y) = verschiebung x * y := by
  have : IsPoly₂ p fun {R} [Rcr : CommRing R] x y ↦ verschiebung (x * frobenius y) :=
    IsPoly.comp₂ (hg := verschiebung_isPoly)
      (hf := IsPoly₂.comp (hh := mulIsPoly₂) (hf := idIsPolyI' p) (hg := frobenius_isPoly p))
  have : IsPoly₂ p fun {R} [CommRing R] x y ↦ verschiebung x * y :=
    IsPoly₂.comp (hh := mulIsPoly₂) (hf := verschiebung_isPoly) (hg := idIsPolyI' p)
  ghost_calc x y
  rintro ⟨⟩ <;> ghost_simp [mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d17b27a46cf054d5cd6bef1f6e204ac0d441e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

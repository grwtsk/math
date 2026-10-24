# not_isField_iff_exists_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f99928f-fd2c-3791-ac3e-a6fb8823b033",
  "kind": "theorem",
  "lexical_name": "not_isField_iff_exists_prime",
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
  "slug": "not-isfield-iff-exists-prime--9a48d03f14de2772722a336a",
  "source": {
    "blob": "b6d8f26b55eff3b9ac078e04077949c955e32c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 775,
    "path": "GRWTSK/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a48d03f14de2772722a336a639efd62d7840488675730add0c7c68ac15912a4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f99928f-fd2c-3791-ac3e-a6fb8823b033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 775–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isField_iff_exists_prime [Nontrivial R] :
    ¬IsField R ↔ ∃ p : Ideal R, p ≠ ⊥ ∧ p.IsPrime :=
  not_isField_iff_exists_ideal_bot_lt_and_lt_top.trans
    ⟨fun ⟨I, bot_lt, lt_top⟩ =>
      let ⟨p, hp, le_p⟩ := I.exists_le_maximal (lt_top_iff_ne_top.mp lt_top)
      ⟨p, bot_lt_iff_ne_bot.mp (lt_of_lt_of_le bot_lt le_p), hp.isPrime⟩,
      fun ⟨p, ne_bot, Prime⟩ => ⟨p, bot_lt_iff_ne_bot.mpr ne_bot, lt_top_iff_ne_top.mpr Prime.1⟩⟩
#align ring.not_is_field_iff_exists_prime Ring.not_isField_iff_exists_prime

/-- Also see `Ideal.isSimpleOrder` for the forward direction as an instance when `R` is a
division (semi)ring.

This result actually holds for all division semirings, but we lack the predicate to state it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean#L775).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6d8f26b55eff3b9ac078e04077949c955e32c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

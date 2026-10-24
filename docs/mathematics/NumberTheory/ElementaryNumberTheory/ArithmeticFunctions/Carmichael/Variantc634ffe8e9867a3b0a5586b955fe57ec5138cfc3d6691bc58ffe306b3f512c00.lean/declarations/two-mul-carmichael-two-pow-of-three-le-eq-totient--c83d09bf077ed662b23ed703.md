# two_mul_carmichael_two_pow_of_three_le_eq_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddfda7a8-772d-d456-2904-3c9c0af265e8",
  "kind": "theorem",
  "lexical_name": "two_mul_carmichael_two_pow_of_three_le_eq_totient",
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
  "slug": "two-mul-carmichael-two-pow-of-three-le-eq-totient--c83d09bf077ed662b23ed703",
  "source": {
    "blob": "c621c8a816a24369aee30c14ba7148f7aa3341f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 161,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c83d09bf077ed662b23ed7035116cacdb9c4e7d62e9a737b9e764dd3006ecc1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddfda7a8-772d-d456-2904-3c9c0af265e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_carmichael_two_pow_of_three_le_eq_totient {n : ℕ} (hn : 3 ≤ n) :
    2 * carmichael (2 ^ n) = (2 ^ n).totient := by
  rw [carmichael_two_pow_of_ne_two, ← pow_succ', totient_prime_pow prime_two] <;>
  · #adaptation_note /-- After https://github.com/leanprover/lean4/pull/13593
    we need to re-enable model-based theory combination in `lia` for this to go through. -/
    lia +mbtc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c621c8a816a24369aee30c14ba7148f7aa3341f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Nat.modCore_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11abbc2c3c4fe6ade835ad3ab6c241385f25f918",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19de782a-7671-2a1a-b6df-cf03f3ae6955",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c92a16b0-9c67-0855-665b-b7cba1c9d343",
  "kind": "theorem",
  "lexical_name": "Nat.modCore_lt",
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
  "slug": "nat-modcore-lt--8afae2950c79c01f9c95e507",
  "source": {
    "blob": "11abbc2c3c4fe6ade835ad3ab6c241385f25f918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2270,
    "line": 2236,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8afae2950c79c01f9c95e50754c166a863e1498dec9804bef90f1ccc5144018a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c92a16b0-9c67-0855-665b-b7cba1c9d343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2236–2270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.modCore_lt {x y : Nat} (hy : LT.lt 0 y) : LT.lt (Nat.modCore x y) y :=
  show LT.lt (dite _ _ _) y from
    match Nat.decLt 0 y with
    | .isTrue _ => Nat.modCoreGo_lt hy x (Nat.lt_succ_self _)
    | .isFalse h => absurd hy h

attribute [irreducible] Nat.modCore

set_option bootstrap.genMatcherCode false in
/--
The modulo operator, which computes the remainder when dividing one natural number by another.
Usually accessed via the `%` operator. When the divisor is `0`, the result is the dividend rather
than an error.

`Nat.mod` is a wrapper around `Nat.modCore` that special-cases two situations, giving better
definitional reductions:
 * `Nat.mod 0 m` should reduce to `m`, for all terms `m : Nat`.
 * `Nat.mod n (m + n + 1)` should reduce to `n` for concrete `Nat` literals `n`.

These reductions help `Fin n` literals work well, because the `OfNat` instance for `Fin` uses
`Nat.mod`. In particular, `(0 : Fin (n + 1)).val` should reduce definitionally to `0`. `Nat.modCore`
can handle all numbers, but its definitional reductions are not as convenient.

This function is overridden at runtime with an efficient implementation. This definition is the
logical model.

Examples:
 * `7 % 2 = 1`
 * `9 % 3 = 0`
 * `5 % 7 = 5`
 * `5 % 0 = 5`
 * `show ∀ (n : Nat), 0 % n = 0 from fun _ => rfl`
 * `show ∀ (m : Nat), 5 % (m + 6) = 5 from fun _ => rfl`
-/
@[extern "lean_nat_mod"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean#L2236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11abbc2c3c4fe6ade835ad3ab6c241385f25f918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# oneIsPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e01768f6d7fb79b2575a7140ea6212ac48b6f77ce75f9fdcf996952fb32c9f85",
  "kind": "instance",
  "lexical_name": "oneIsPoly",
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
  "slug": "oneispoly--e180ea7528cac77caca3ab61",
  "source": {
    "blob": "d712982f78789f2c432b6696f5e3149df1393546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 304,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e180ea7528cac77caca3ab61df3c8ff9497d0de54973c57fdbe3c906867a8f3c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e01768f6d7fb79b2575a7140ea6212ac48b6f77ce75f9fdcf996952fb32c9f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance oneIsPoly [Fact p.Prime] : IsPoly p fun _ _ _ => 1 :=
  ⟨⟨onePoly, by
      intros; funext n; cases n
      · simp only [one_coeff_zero, onePoly, ite_true, map_one]
      · simp only [Nat.succ_pos', one_coeff_eq_of_pos, onePoly, Nat.succ_ne_zero, ite_false,
          map_zero]
  ⟩⟩

end ZeroOne

/-- Addition of Witt vectors is a polynomial function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d712982f78789f2c432b6696f5e3149df1393546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

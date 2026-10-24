# IsPoly₂.diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c14a1e0e271732932080b48477d3f3fbf71aa2ef7ed1e17eb8740720bbd823bb",
  "kind": "instance",
  "lexical_name": "IsPoly₂.diag",
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
  "slug": "ispoly-diag--d15e54daa99737cb35e8bd4f",
  "source": {
    "blob": "a256e2854ccaba68bbee5f2d700f49acf7699ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 250,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d15e54daa99737cb35e8bd4f574b6eaea26e2d02eb70491d2da93901e980ca03",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c14a1e0e271732932080b48477d3f3fbf71aa2ef7ed1e17eb8740720bbd823bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsPoly₂.diag {f} [hf : IsPoly₂ p f] : IsPoly p fun _ _Rcr x => f x x := by
  obtain ⟨φ, hf⟩ := hf
  refine ⟨⟨fun n => bind₁ (uncurry ![X, X]) (φ n), ?_⟩⟩
  intros; funext n
  simp +unfoldPartialApp only [hf, peval, uncurry, aeval_bind₁]
  apply eval₂Hom_congr rfl _ rfl
  ext ⟨i, k⟩
  fin_cases i <;> simp

-- Porting note: Lean 4's typeclass inference is sufficiently more powerful that we no longer
-- need the `@[is_poly]` attribute. Use of the attribute should just be replaced by changing the
-- theorem to an `instance`.

/-- The additive negation is a polynomial function on Witt vectors. -/
-- Porting note: replaced `@[is_poly]` with `instance`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a256e2854ccaba68bbee5f2d700f49acf7699ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

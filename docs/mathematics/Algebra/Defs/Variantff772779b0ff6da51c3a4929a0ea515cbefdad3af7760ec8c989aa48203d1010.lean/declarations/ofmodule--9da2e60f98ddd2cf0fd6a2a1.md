# ofModule'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d87ffaf6b9c60b7d5b3b60f8eb7c66e6399821c41f885d1361199dce16eedf1",
  "kind": "abbrev",
  "lexical_name": "ofModule'",
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
  "slug": "ofmodule--9da2e60f98ddd2cf0fd6a2a1",
  "source": {
    "blob": "ef82e5b6ae63d3a303c0cea68bea07ec36071095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 209,
    "path": "GRWTSK/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9da2e60f98ddd2cf0fd6a2a10092c54dde9facdf606a847953caa158dbc57859",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d87ffaf6b9c60b7d5b3b60f8eb7c66e6399821c41f885d1361199dce16eedf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofModule' [CommSemiring R] [Semiring A] [Module R A]
    (h₁ : ∀ (r : R) (x : A), r • (1 : A) * x = r • x)
    (h₂ : ∀ (r : R) (x : A), x * r • (1 : A) = r • x) : Algebra R A where
  algebraMap :=
  { toFun r := r • (1 : A)
    map_one' := one_smul _ _
    map_mul' r₁ r₂ := by simp only [h₁, mul_smul]
    map_zero' := zero_smul _ _
    map_add' r₁ r₂ := add_smul r₁ r₂ 1 }
  commutes' r x := by simp [h₁, h₂]
  smul_def' r x := by simp [h₁]

/-- Let `R` be a commutative semiring, let `A` be a semiring with a `Module R` structure.
If `(r • x) * y = x * (r • y) = r • (x * y)` for all `r : R` and `x y : A`, then `A`
is an `Algebra` over `R`.

See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef82e5b6ae63d3a303c0cea68bea07ec36071095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

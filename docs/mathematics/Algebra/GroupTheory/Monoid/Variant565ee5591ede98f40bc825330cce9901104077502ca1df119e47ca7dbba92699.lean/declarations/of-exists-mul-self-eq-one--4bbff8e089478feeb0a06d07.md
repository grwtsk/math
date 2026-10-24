# of_exists_mul_self_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:805c58c5-ca98-0f04-8b89-dd82e8444be0",
  "kind": "lemma",
  "lexical_name": "of_exists_mul_self_eq_one",
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
  "slug": "of-exists-mul-self-eq-one--4bbff8e089478feeb0a06d07",
  "source": {
    "blob": "f9f2ec94a6747b6d499ca6734187796875a2acaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 502,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bbff8e089478feeb0a06d074fa8bcfe085622f8a1e5c6df114594a7038df440",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:805c58c5-ca98-0f04-8b89-dd82e8444be0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma of_exists_mul_self_eq_one (ex : ∀ x y : M, x * y = 1 → ∃ z, z * x = 1) :
    IsDedekindFiniteMonoid M where
  mul_eq_one_symm {x y} h := by
    have ⟨z, hz⟩ := ex x y h
    rwa [show y = z by simpa [mul_assoc, h] using congr_arg (· * y) hz.symm]

end IsDedekindFiniteMonoid

end Monoid

attribute [local instance] IsUnital.toMulOneClass in
/-- A unital semigroup is a monoid.

This constructor is primarily intended to be used within proofs since it creates bad definitional
equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant565ee5591ede98f40bc825330cce9901104077502ca1df119e47ca7dbba92699.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f2ec94a6747b6d499ca6734187796875a2acaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

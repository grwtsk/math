# intersectBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47ca2652f92e166bb4c8a1c3795c856800c136c436bf3fc2d75f9cdea7a357c1",
  "kind": "def",
  "lexical_name": "intersectBy",
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
  "slug": "intersectby--db80d1823366cf7ce735a5d9",
  "source": {
    "blob": "d2f0ac9cbb919a159e4ce3a2f8e524ddd90568da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 417,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBMap/Variant6f8e85cf4efacf3dd22d00cf9860d6b199bd879540f980d4761f070ffb9c25fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db80d1823366cf7ce735a5d98727ed642561755b2b2cbbc0f3bc78d1d376fc2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBMap/Variant6f8e85cf4efacf3dd22d00cf9860d6b199bd879540f980d4761f070ffb9c25fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47ca2652f92e166bb4c8a1c3795c856800c136c436bf3fc2d75f9cdea7a357c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intersectBy {γ : Type v₁} {δ : Type v₂} (mergeFn : α → β → γ → δ) (t₁ : RBMap α β cmp) (t₂ : RBMap α γ cmp) : RBMap α δ cmp :=
  t₁.fold (init := ∅) fun acc a b₁ =>
      match t₂.find? a with
      | some b₂ => acc.insert a <| mergeFn a b₁ b₂
      | none => acc

/--
`filter f m` returns the `RBMap` consisting of all
"`key`/`val`"-pairs in `m` where `f key val` returns `true`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBMap/Variant6f8e85cf4efacf3dd22d00cf9860d6b199bd879540f980d4761f070ffb9c25fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBMap/Variant6f8e85cf4efacf3dd22d00cf9860d6b199bd879540f980d4761f070ffb9c25fa.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f0ac9cbb919a159e4ce3a2f8e524ddd90568da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

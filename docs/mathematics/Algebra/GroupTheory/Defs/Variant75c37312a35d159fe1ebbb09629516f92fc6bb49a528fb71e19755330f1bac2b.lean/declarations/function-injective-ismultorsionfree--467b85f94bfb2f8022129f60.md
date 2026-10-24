# Function.Injective.isMulTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:accef9e1-f2ca-1e83-4a49-39328e664c48",
  "kind": "theorem",
  "lexical_name": "Function.Injective.isMulTorsionFree",
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
  "slug": "function-injective-ismultorsionfree--467b85f94bfb2f8022129f60",
  "source": {
    "blob": "1c61d344e5dfa13d6c2c2af05988bb19768bccf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 516,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:467b85f94bfb2f8022129f6055477fa9b5eb0e45a9c235e9467e8f26ae0bbeb7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:accef9e1-f2ca-1e83-4a49-39328e664c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Injective.isMulTorsionFree [Monoid M] [Monoid N] [IsMulTorsionFree N]
    (f : M →* N) (hf : Function.Injective f) : IsMulTorsionFree M where
  pow_left_injective n hn x y hxy := hf <| IsMulTorsionFree.pow_left_injective hn <| by
    simpa using congrArg f hxy

-- completely uninteresting lemmas about coercion to function, that all homs need
section Coes

/-! Bundled morphisms can be down-cast to weaker bundlings -/

attribute [coe] MonoidHom.toOneHom
attribute [coe] AddMonoidHom.toZeroHom

/-- `MonoidHom` down-cast to a `OneHom`, forgetting the multiplicative property. -/
@[to_additive /-- `AddMonoidHom` down-cast to a `ZeroHom`, forgetting the additive property -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c61d344e5dfa13d6c2c2af05988bb19768bccf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbf13b42-4c6c-d0d8-b03b-3ea7a95d8af2",
  "kind": "theorem",
  "lexical_name": "eq",
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
  "slug": "eq--f945efa8557ce678bcea13ac",
  "source": {
    "blob": "0522d0422b1da0fd7bfc3fb6ab285ba744cd9326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f945efa8557ce678bcea13ac2bf7476818fbbe95134d241a69cfee01d20a3793",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf13b42-4c6c-d0d8-b03b-3ea7a95d8af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem eq [Mul S] {a x y : S} (h : SemiconjBy a x y) : a * x = y * a :=
  h
#align semiconj_by.eq SemiconjBy.eq
#align add_semiconj_by.eq AddSemiconjBy.eq

section Semigroup

variable [Semigroup S] {a b x y z x' y' : S}

/-- If `a` semiconjugates `x` to `y` and `x'` to `y'`,
then it semiconjugates `x * x'` to `y * y'`. -/
@[to_additive (attr := simp) "If `a` semiconjugates `x` to `y` and `x'` to `y'`,
then it semiconjugates `x + x'` to `y + y'`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Semiconj/Variante20ab1024690da7914846cc8243cf4ea1034d52689b24dc9e39b6487c3e9de97.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0522d0422b1da0fd7bfc3fb6ab285ba744cd9326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# commute_inl_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48bcd453-a9ee-a4af-f9d0-cfc6ffd56499",
  "kind": "theorem",
  "lexical_name": "commute_inl_inr",
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
  "slug": "commute-inl-inr--2f74e35238e728d7a315bd63",
  "source": {
    "blob": "1abc55c5d0d9ef0de22f29f14d4abce14dbd2c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 385,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f74e35238e728d7a315bd633a067ccfde0af9a66bffd7ea51c19e748fb0b625",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48bcd453-a9ee-a4af-f9d0-cfc6ffd56499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_inl_inr (m : M) (n : N) : Commute (inl M N m) (inr M N n) :=
  Commute.prod (.one_right m) (.one_left n)

section Prod

variable [MulOneClass P]

/-- Combine two `MonoidHom`s `f : M →* N`, `g : M →* P` into `f.prod g : M →* N × P`
given by `(f.prod g) x = (f x, g x)`. -/
@[to_additive prod
      "Combine two `AddMonoidHom`s `f : M →+ N`, `g : M →+ P` into
      `f.prod g : M →+ N × P` given by `(f.prod g) x = (f x, g x)`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variant30d3b510bcae5d80720f3c50608dd591467dd012b8c6040cc459ddb7e665efcb.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1abc55c5d0d9ef0de22f29f14d4abce14dbd2c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:520b1c981c1ea8b7e8a793826c315f9ba521d7a25cb0e14cac41415f82fd903a",
  "kind": "instance",
  "lexical_name": "fintype",
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
  "slug": "fintype--c84bccfcbb538b08fce825ce",
  "source": {
    "blob": "a26d3a95fa5836d451f1e40803a417a2a64221a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 287,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c84bccfcbb538b08fce825ceaf8b67666a5ab3e7485a407805e5401b266301e0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:520b1c981c1ea8b7e8a793826c315f9ba521d7a25cb0e14cac41415f82fd903a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintype [Fintype α] (s : Subgroup α) [DecidableRel (leftRel s).r] : Fintype (α ⧸ s) :=
  Quotient.fintype (leftRel s)

variable (s)

/-- Given a subgroup `s`, the function that sends a subgroup `t` to the pair consisting of
its intersection with `s` and its image in the quotient `α ⧸ s` is strictly monotone, even though
it is not injective in general. -/
@[to_additive QuotientAddGroup.strictMono_comap_prod_image "Given an additive subgroup `s`,
the function that sends an additive subgroup `t` to the pair consisting of
its intersection with `s` and its image in the quotient `α ⧸ s`
is strictly monotone, even though it is not injective in general."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a26d3a95fa5836d451f1e40803a417a2a64221a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# RootableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1bf8f4f25678537e2d3f78f5421833943c1f395a60ee40f0f95e4386b4ffd78",
  "kind": "class",
  "lexical_name": "RootableBy",
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
  "slug": "rootableby--1044cf9c0ef5e832d02be441",
  "source": {
    "blob": "1634643b367c7a5681d13e9edbbc179bc14e7590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 115,
    "path": "GRWTSK/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1044cf9c0ef5e832d02be4413bc1d16ba3a757661e52f409c79556255d5470f0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1bf8f4f25678537e2d3f78f5421833943c1f395a60ee40f0f95e4386b4ffd78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class RootableBy where
  /-- The root function -/
  root : A → α → A
  root_zero : ∀ a, root a 0 = 1
  root_cancel : ∀ {n : α} (a : A), n ≠ 0 → root a n ^ n = a

@[to_additive DivisibleBy.surjective_smul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1634643b367c7a5681d13e9edbbc179bc14e7590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

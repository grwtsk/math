# _root_.AddSubgroup.IsFiniteRelIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29abc0fd5f29ae19e269ebe2075578dce5623cb3240a8d17e830a334a84e4a33",
  "kind": "class",
  "lexical_name": "_root_.AddSubgroup.IsFiniteRelIndex",
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
  "slug": "root-addsubgroup-isfiniterelindex--6d596f6edd4638e197e7c82a",
  "source": {
    "blob": "653c306a99b2e16788cbd1d5bc101977671f9464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 549,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d596f6edd4638e197e7c82ac409d4ff6926e7a8510cb06db09ec0759017f277",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29abc0fd5f29ae19e269ebe2075578dce5623cb3240a8d17e830a334a84e4a33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.AddSubgroup.IsFiniteRelIndex {G : Type*} [AddGroup G] (H K : AddSubgroup G) :
    Prop where
  protected relindex_ne_zero : H.relindex K ≠ 0

variable (H K) in
/-- Typeclass for a subgroup `H` to have finite index in a subgroup `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653c306a99b2e16788cbd1d5bc101977671f9464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

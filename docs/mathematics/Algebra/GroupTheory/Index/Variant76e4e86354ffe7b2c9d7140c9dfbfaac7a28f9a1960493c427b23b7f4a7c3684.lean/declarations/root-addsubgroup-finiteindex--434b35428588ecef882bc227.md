# _root_.AddSubgroup.FiniteIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ce82952a4d197a4749103d12386987711bec129738101b3e06efd7814c59b9e",
  "kind": "class",
  "lexical_name": "_root_.AddSubgroup.FiniteIndex",
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
  "slug": "root-addsubgroup-finiteindex--434b35428588ecef882bc227",
  "source": {
    "blob": "653c306a99b2e16788cbd1d5bc101977671f9464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 531,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:434b35428588ecef882bc22740853749be21111e64b44dc7a1a5c8d370bc0739",
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

Occurrence: `declaration:4ce82952a4d197a4749103d12386987711bec129738101b3e06efd7814c59b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.AddSubgroup.FiniteIndex {G : Type*} [AddGroup G] (H : AddSubgroup G) : Prop where
  /-- The additive subgroup has finite index;
  recall that `AddSubgroup.index` returns 0 when the index is infinite. -/
  index_ne_zero : H.index ≠ 0

@[deprecated (since := "2025-04-13")]
alias _root_AddSubgroup.FiniteIndex.finiteIndex := AddSubgroup.FiniteIndex.index_ne_zero

variable (H) in
/-- Typeclass for finite index subgroups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variant76e4e86354ffe7b2c9d7140c9dfbfaac7a28f9a1960493c427b23b7f4a7c3684.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653c306a99b2e16788cbd1d5bc101977671f9464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

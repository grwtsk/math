# IterateMulAct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5153f063150efe5f49df98f9e5cca70878395fa8c852eacdcb36c43cae3d67bd",
  "kind": "structure",
  "lexical_name": "IterateMulAct",
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
  "slug": "iteratemulact--7a2738edb7695525ab833c83",
  "source": {
    "blob": "0017968410b2f33eac77bca7f859c7c50327fe91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 34,
    "path": "GRWTSK/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a2738edb7695525ab833c8365059020be15ba7bdbf811333e736afa3998c8bc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5153f063150efe5f49df98f9e5cca70878395fa8c852eacdcb36c43cae3d67bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IterateMulAct {α : Type*} (f : α → α) where
  /-- The value of `n : IterateMulAct f`. -/
  val : ℕ

namespace IterateMulAct

variable {α : Type*} {f : α → α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0017968410b2f33eac77bca7f859c7c50327fe91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

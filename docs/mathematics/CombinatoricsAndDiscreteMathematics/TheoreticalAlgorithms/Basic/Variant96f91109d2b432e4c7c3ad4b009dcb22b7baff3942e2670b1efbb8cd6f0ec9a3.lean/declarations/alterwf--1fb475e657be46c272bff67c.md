# AlterWF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74a7230e627ed4332ca28b60eaac538254e5084aa7317ac96883490cb952d35e",
  "kind": "class",
  "lexical_name": "AlterWF",
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
  "slug": "alterwf--1fb475e657be46c272bff67c",
  "source": {
    "blob": "2921df75acbbb01ebd61ad5c318ef687c0161d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 797,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fb475e657be46c272bff67caa0aa7567d2418494987294391a59dcfe4f621d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74a7230e627ed4332ca28b60eaac538254e5084aa7317ac96883490cb952d35e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AlterWF (t : RBSet α cmp) (cut : α → Ordering) (f : Option α → Option α) : Prop where
  /-- The resulting tree is well formed. -/
  wf : (t.1.alter cut f).WF cmp

/--
`O(log n)`. `alterP cut f t` simultaneously handles inserting, erasing and replacing an element
using a function `f : Option α → Option α`. It is passed the result of `t.findP? cut`
and can either return `none` to remove the element or `some a` to replace/insert
the element with `a` (which must have the same ordering properties as the original element).

The element is used linearly if `t` is unshared.

The `AlterWF` assumption is required because `f` may change
the ordering properties of the element, which would break the invariants.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2921df75acbbb01ebd61ad5c318ef687c0161d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

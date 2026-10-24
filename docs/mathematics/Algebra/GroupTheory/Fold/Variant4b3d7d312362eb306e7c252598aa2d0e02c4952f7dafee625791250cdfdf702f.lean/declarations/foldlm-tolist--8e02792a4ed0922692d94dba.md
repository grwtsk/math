# foldlm_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1a47499-a8c0-80b5-9b46-db907429fd81",
  "kind": "theorem",
  "lexical_name": "foldlm_toList",
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
  "slug": "foldlm-tolist--8e02792a4ed0922692d94dba",
  "source": {
    "blob": "dda4234a58fe27cd8e93ba3c985d1ed239a8048e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 412,
    "path": "GRWTSK/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e02792a4ed0922692d94dba068db16e8920e35ef851e73ebffd85bb3bea340c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1a47499-a8c0-80b5-9b46-db907429fd81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldlm_toList {f : α → β → m α} {x : α} {xs : t β} :
    foldlm f x xs = List.foldlM f x (toList xs) :=
  calc
    foldlm f x xs = unop (foldlM.ofFreeMonoid f (FreeMonoid.ofList <| toList xs)) x :=
    by simp only [foldlm, toList_spec, foldMap_hom_free (foldlM.ofFreeMonoid f),
        foldlm.ofFreeMonoid_comp_of, foldlM.get, FreeMonoid.ofList_toList]
    _ = List.foldlM f x (toList xs) := by simp [foldlM.ofFreeMonoid, unop_op, flip]
#align traversable.mfoldl_to_list Traversable.foldlm_toList

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Fold/Variant4b3d7d312362eb306e7c252598aa2d0e02c4952f7dafee625791250cdfdf702f.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda4234a58fe27cd8e93ba3c985d1ed239a8048e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

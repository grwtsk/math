# TransCmp.gt_of_gt_of_isGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:249abfb7-3750-a195-1a53-7a0a31c081fe",
  "kind": "theorem",
  "lexical_name": "TransCmp.gt_of_gt_of_isGE",
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
  "slug": "transcmp-gt-of-gt-of-isge--48c2ed086aba1fe29fb62398",
  "source": {
    "blob": "a0e7b9a32e871925e95577cb730807e430f05f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c2ed086aba1fe29fb6239847c7483880904f05388e49495be5d40eae48e62c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249abfb7-3750-a195-1a53-7a0a31c081fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TransCmp.gt_of_gt_of_isGE [TransCmp cmp] {a b c : α} (hab : cmp a b = .gt)
    (hbc : (cmp b c).isGE) : cmp a c = .gt := by
  rw [OrientedCmp.gt_iff_lt, OrientedCmp.isGE_iff_isLE] at *
  exact TransCmp.lt_of_isLE_of_lt hbc hab

@[deprecated TransCmp.gt_trans (since := "2025-10-26")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e7b9a32e871925e95577cb730807e430f05f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

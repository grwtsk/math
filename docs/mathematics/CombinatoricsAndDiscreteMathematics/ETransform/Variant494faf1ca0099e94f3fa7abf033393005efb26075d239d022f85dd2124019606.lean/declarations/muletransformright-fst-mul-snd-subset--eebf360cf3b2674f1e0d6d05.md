# mulETransformRight.fst_mul_snd_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3de48e4b-d286-7c85-210f-1764e74188fc",
  "kind": "theorem",
  "lexical_name": "mulETransformRight.fst_mul_snd_subset",
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
  "slug": "muletransformright-fst-mul-snd-subset--eebf360cf3b2674f1e0d6d05",
  "source": {
    "blob": "db2393908d7e8134f92af2c2eefce1e4437458e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eebf360cf3b2674f1e0d6d05ad21a6eef4b82da7f8e39c364bc5ca71b07324da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de48e4b-d286-7c85-210f-1764e74188fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulETransformRight.fst_mul_snd_subset :
    (mulETransformRight e x).1 * (mulETransformRight e x).2 ⊆ x.1 * x.2 := by
  refine union_mul_inter_subset_union.trans (union_subset Subset.rfl ?_)
  rw [op_smul_finset_mul_eq_mul_smul_finset, smul_inv_smul]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2393908d7e8134f92af2c2eefce1e4437458e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

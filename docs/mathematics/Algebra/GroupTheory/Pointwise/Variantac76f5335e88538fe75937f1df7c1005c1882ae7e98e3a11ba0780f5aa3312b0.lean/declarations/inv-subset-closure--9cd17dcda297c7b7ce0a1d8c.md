# inv_subset_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54c7890f-7595-06ca-15ed-c97feff68363",
  "kind": "theorem",
  "lexical_name": "inv_subset_closure",
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
  "slug": "inv-subset-closure--9cd17dcda297c7b7ce0a1d8c",
  "source": {
    "blob": "f107b1cd49f3c5a0651b5c71058acd35815ddc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cd17dcda297c7b7ce0a1d8cb290e2962b1cf649f4305eebf4c468844c8eb7ef",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c7890f-7595-06ca-15ed-c97feff68363`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_subset_closure (S : Set G) : S⁻¹ ⊆ closure S := fun s hs => by
  rw [SetLike.mem_coe, ← Subgroup.inv_mem_iff]
  exact subset_closure (mem_inv.mp hs)
#align subgroup.inv_subset_closure Subgroup.inv_subset_closure
#align add_subgroup.neg_subset_closure AddSubgroup.neg_subset_closure

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantac76f5335e88538fe75937f1df7c1005c1882ae7e98e3a11ba0780f5aa3312b0.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f107b1cd49f3c5a0651b5c71058acd35815ddc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

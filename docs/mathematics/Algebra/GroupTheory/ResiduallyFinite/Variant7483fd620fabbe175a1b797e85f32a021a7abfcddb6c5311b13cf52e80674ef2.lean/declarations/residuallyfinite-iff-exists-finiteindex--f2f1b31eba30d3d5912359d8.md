# residuallyFinite_iff_exists_finiteIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "652487530cddcedd915c7b030adff26bb45340e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ed96f96-9b3f-e44d-9970-fca58f9d933c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a68624b-7143-fdb6-8f41-d34d7bcf3de4",
  "kind": "theorem",
  "lexical_name": "residuallyFinite_iff_exists_finiteIndex",
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
  "slug": "residuallyfinite-iff-exists-finiteindex--f2f1b31eba30d3d5912359d8",
  "source": {
    "blob": "652487530cddcedd915c7b030adff26bb45340e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f1b31eba30d3d5912359d82833096f96eee6d7ab8bf5211bd859c5551dcd24",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a68624b-7143-fdb6-8f41-d34d7bcf3de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residuallyFinite_iff_exists_finiteIndex :
    ResiduallyFinite G ↔ ∀ g : G, g ≠ 1 → ∃ (H : Subgroup G), H.FiniteIndex ∧ g ∉ H := by
  simp_rw [residuallyFinite_iff_forall_finiteIndex, ← Classical.not_imp, ← not_forall,
    not_imp_not]

/-- If `G` is residually finite, for every pair of distinct elements `g`, `h` there exists a finite
index normal subgroup `H` such that `g` and `h` differ in the quotient `G ⧸ H`. -/
@[to_additive /-- If `G` is residually finite, for every pair of distinct elements `g`, `h` there
exists a finite index normal additive subgroup `H` such that `g` and `h` differ in the quotient
`G ⧸ H`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652487530cddcedd915c7b030adff26bb45340e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# finiteType_iff_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2b7949afab00be25bf3fa03f0f7bb848514e9dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d79932a7-9014-b0cf-a323-84194e6f2d35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12233e5c-1940-7fdf-71fa-72e408dc165c",
  "kind": "theorem",
  "lexical_name": "finiteType_iff_fg",
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
  "slug": "finitetype-iff-fg--b729cf4fca820bfa1c860804",
  "source": {
    "blob": "d2b7949afab00be25bf3fa03f0f7bb848514e9dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 460,
    "path": "GRWTSK/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b729cf4fca820bfa1c86080479458d5ec2902304d5708245646b0d146431129f",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12233e5c-1940-7fdf-71fa-72e408dc165c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteType_iff_fg [CommRing R] [Nontrivial R] :
    FiniteType R (AddMonoidAlgebra R M) ↔ AddMonoid.FG M := by
  refine' ⟨fun h => _, fun h => @AddMonoidAlgebra.finiteType_of_fg _ _ _ _ h⟩
  obtain ⟨S, hS⟩ := @exists_finset_adjoin_eq_top R M _ _ h
  refine' AddMonoid.fg_def.2 ⟨S, (eq_top_iff' _).2 fun m => _⟩
  have hm : of' R M m ∈ Subalgebra.toSubmodule (adjoin R (of' R M '' ↑S)) := by
    simp only [hS, top_toSubmodule, Submodule.mem_top]
  rw [adjoin_eq_span] at hm
  exact mem_closure_of_mem_span_closure hm
#align add_monoid_algebra.finite_type_iff_fg AddMonoidAlgebra.finiteType_iff_fg

/-- If `AddMonoidAlgebra R M` is of finite type then `M` is finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b7949afab00be25bf3fa03f0f7bb848514e9dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

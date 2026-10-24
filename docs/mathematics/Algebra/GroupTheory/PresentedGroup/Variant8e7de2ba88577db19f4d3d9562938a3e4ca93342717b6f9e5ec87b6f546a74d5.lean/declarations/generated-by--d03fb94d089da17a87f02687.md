# generated_by

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76b69e1a328268fca3eaa8c1e900c9b465526387",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef46202d-f038-edef-28e9-46e7a7089d6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c2338d4-05a0-fd42-95a4-84b9ff9ede77",
  "kind": "theorem",
  "lexical_name": "generated_by",
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
  "slug": "generated-by--d03fb94d089da17a87f02687",
  "source": {
    "blob": "76b69e1a328268fca3eaa8c1e900c9b465526387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d03fb94d089da17a87f02687c4bedad8e742805c1a4ffe58b8030b226550cc4c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c2338d4-05a0-fd42-95a4-84b9ff9ede77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generated_by (rels : Set (FreeGroup α)) (H : Subgroup (PresentedGroup rels))
    (h : ∀ j : α, PresentedGroup.of j ∈ H) (x : PresentedGroup rels) : x ∈ H := by
  obtain ⟨z⟩ := x
  induction z
  · exact one_mem H
  · exact h _
  · exact (Subgroup.inv_mem_iff H).mpr (by assumption)
  rename_i h1 h2
  change QuotientGroup.mk _ ∈ H.carrier
  rw [QuotientGroup.mk_mul]
  exact Subgroup.mul_mem _ h1 h2

section ToGroup

/-
Presented groups satisfy a universal property. If `G` is a group and `f : α → G` is a map such that
the images of `f` satisfy all the given relations, then `f` extends uniquely to a group homomorphism
from `PresentedGroup rels` to `G`.
-/
variable {G : Type*} [Group G] {f : α → G} {rels : Set (FreeGroup α)}

local notation "F" => FreeGroup.lift f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76b69e1a328268fca3eaa8c1e900c9b465526387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

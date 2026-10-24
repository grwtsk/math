# truncate_zero_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f79ff3e521956a45c84342dd1cf5b96187dc336a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 691,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dec95c24-0b3d-3cac-5260-a74f516df635",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5aa88891-2124-4846-400e-2e7901f6be0e",
  "kind": "theorem",
  "lexical_name": "truncate_zero_one",
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
  "slug": "truncate-zero-one--6eb75f9eae511c3bbdc67b6b",
  "source": {
    "blob": "f79ff3e521956a45c84342dd1cf5b96187dc336a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 691,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb75f9eae511c3bbdc67b6b8cf057beff4bb5041e1e3c84e2a2f4623cd7ee93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa88891-2124-4846-400e-2e7901f6be0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncate_zero_one {X : Type*} [TopologicalSpace X] {a b : X} (γ : Path a b) :
    γ.truncate 0 1 = γ.cast (by simp [zero_le_one, extend_zero]) (by simp) := by
  ext x
  rw [cast_coe]
  have : ↑x ∈ (Icc 0 1 : Set ℝ) := x.2
  rw [truncate, coe_mk_mk, max_eq_left this.1, min_eq_left this.2, extend_extends']
#align path.truncate_zero_one Path.truncate_zero_one

/-! #### Reparametrising a path -/


/-- Given a path `γ` and a function `f : I → I` where `f 0 = 0` and `f 1 = 1`, `γ.reparam f` is the
path defined by `γ ∘ f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f79ff3e521956a45c84342dd1cf5b96187dc336a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

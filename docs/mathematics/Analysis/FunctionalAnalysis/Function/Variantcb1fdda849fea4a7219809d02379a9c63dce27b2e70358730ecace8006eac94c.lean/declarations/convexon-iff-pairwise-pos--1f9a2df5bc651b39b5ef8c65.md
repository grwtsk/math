# convexOn_iff_pairwise_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eff3cc8b250c1ea04a24f506915ef8fe4d7a624",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb1fdda849fea4a7219809d02379a9c63dce27b2e70358730ecace8006eac94c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94a9c6db-99a3-da30-2ace-4f7e38b9a42b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eef827f6-4f72-6264-2a8c-6931fe3c1a6b",
  "kind": "theorem",
  "lexical_name": "convexOn_iff_pairwise_pos",
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
  "slug": "convexon-iff-pairwise-pos--1f9a2df5bc651b39b5ef8c65",
  "source": {
    "blob": "7eff3cc8b250c1ea04a24f506915ef8fe4d7a624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 328,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variantcb1fdda849fea4a7219809d02379a9c63dce27b2e70358730ecace8006eac94c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f9a2df5bc651b39b5ef8c65d6be54f6cc2eb83d74170de199c39e16d1f03cd2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variantcb1fdda849fea4a7219809d02379a9c63dce27b2e70358730ecace8006eac94c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef827f6-4f72-6264-2a8c-6931fe3c1a6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_iff_pairwise_pos {s : Set E} {f : E → β} :
    ConvexOn 𝕜 s f ↔
      Convex 𝕜 s ∧
        s.Pairwise fun x y =>
          ∀ ⦃a b : 𝕜⦄, 0 < a → 0 < b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y := by
  rw [convexOn_iff_forall_pos]
  refine
    and_congr_right'
      ⟨fun h x hx y hy _ a b ha hb hab => h hx hy ha hb hab, fun h x hx y hy a b ha hb hab => ?_⟩
  obtain rfl | hxy := eq_or_ne x y
  · rw [Convex.combo_self hab, Convex.combo_self hab]
  exact h hx hy hxy ha hb hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variantcb1fdda849fea4a7219809d02379a9c63dce27b2e70358730ecace8006eac94c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variantcb1fdda849fea4a7219809d02379a9c63dce27b2e70358730ecace8006eac94c.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eff3cc8b250c1ea04a24f506915ef8fe4d7a624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

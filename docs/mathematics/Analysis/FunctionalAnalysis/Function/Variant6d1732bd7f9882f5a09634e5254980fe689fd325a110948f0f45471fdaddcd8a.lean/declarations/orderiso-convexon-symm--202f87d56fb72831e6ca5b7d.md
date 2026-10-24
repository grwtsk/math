# OrderIso.convexOn_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "245e37c93cfa28d0715590564baf77813d46a79a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1062,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d1732bd7f9882f5a09634e5254980fe689fd325a110948f0f45471fdaddcd8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e68b25e4-17fd-cd8e-417e-9570ca0f2b7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9792ba17-845f-d023-37ed-b85ffd585d6e",
  "kind": "theorem",
  "lexical_name": "OrderIso.convexOn_symm",
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
  "slug": "orderiso-convexon-symm--202f87d56fb72831e6ca5b7d",
  "source": {
    "blob": "245e37c93cfa28d0715590564baf77813d46a79a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1070,
    "line": 1062,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variant6d1732bd7f9882f5a09634e5254980fe689fd325a110948f0f45471fdaddcd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:202f87d56fb72831e6ca5b7d3ac54f0b840a98bce34760f74c0385f15cc0a894",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variant6d1732bd7f9882f5a09634e5254980fe689fd325a110948f0f45471fdaddcd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9792ba17-845f-d023-37ed-b85ffd585d6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1062–1070.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrderIso.convexOn_symm (f : α ≃o β) (hf : ConcaveOn 𝕜 univ f) :
    ConvexOn 𝕜 univ f.symm := by
  refine ⟨convex_univ, fun x _ y _ a b ha hb hab => ?_⟩
  obtain ⟨x', hx''⟩ := f.surjective.exists.mp ⟨x, rfl⟩
  obtain ⟨y', hy''⟩ := f.surjective.exists.mp ⟨y, rfl⟩
  simp only [hx'', hy'', OrderIso.symm_apply_apply]
  rw [← f.le_iff_le, OrderIso.apply_symm_apply]
  exact hf.2 (by simp : x' ∈ univ) (by simp : y' ∈ univ) ha hb hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variant6d1732bd7f9882f5a09634e5254980fe689fd325a110948f0f45471fdaddcd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variant6d1732bd7f9882f5a09634e5254980fe689fd325a110948f0f45471fdaddcd8a.lean#L1062).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245e37c93cfa28d0715590564baf77813d46a79a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

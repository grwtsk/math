# hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a439370033e454429967ca213bef25c993f7df57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc4bb55f-8a05-7f71-4896-4506c383736f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ea3bc32-0147-ce45-2f5d-293c353c1c5d",
  "kind": "theorem",
  "lexical_name": "hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne",
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
  "slug": "hasderivwithinat-forall-lt-or-forall-gt-of-forall-ne--97821f5104562f01897bd094",
  "source": {
    "blob": "a439370033e454429967ca213bef25c993f7df57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97821f5104562f01897bd0946e8a791583a6a73e92d4a12a4525be262d988019",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ea3bc32-0147-ce45-2f5d-293c353c1c5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne {s : Set ℝ} (hs : Convex ℝ s)
    (hf : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) {m : ℝ} (hf' : ∀ x ∈ s, f' x ≠ m) :
    (∀ x ∈ s, f' x < m) ∨ ∀ x ∈ s, m < f' x := by
  contrapose! hf'
  rcases hf' with ⟨⟨b, hb, hmb⟩, ⟨a, ha, hma⟩⟩
  exact (hs.ordConnected.image_hasDerivWithinAt hf).out (mem_image_of_mem f' ha)
    (mem_image_of_mem f' hb) ⟨hma, hmb⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a439370033e454429967ca213bef25c993f7df57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

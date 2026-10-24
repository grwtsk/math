# Algebra.TensorProduct.includeLeft_map_center_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a8a6fc042fd1cb9ba3018c468742de4f942e6d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76b87bba9b4f8464003b1dd0028c1db008c114a2e4a6f000cee89ff36db0bccf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc3bc020-dca3-b593-0266-a7fb2cc3da08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bebfc1a-d574-15e0-7282-e3aa48252986",
  "kind": "lemma",
  "lexical_name": "Algebra.TensorProduct.includeLeft_map_center_le",
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
  "slug": "algebra-tensorproduct-includeleft-map-center-le--da4584680b7c900ca8af9247",
  "source": {
    "blob": "7a8a6fc042fd1cb9ba3018c468742de4f942e6d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant76b87bba9b4f8464003b1dd0028c1db008c114a2e4a6f000cee89ff36db0bccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4584680b7c900ca8af9247b5e5568e8b0276be6d95c5c9ac8a25b31c905f06",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant76b87bba9b4f8464003b1dd0028c1db008c114a2e4a6f000cee89ff36db0bccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bebfc1a-d574-15e0-7282-e3aa48252986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.TensorProduct.includeLeft_map_center_le :
    (Subalgebra.center K B).map includeLeft ≤ Subalgebra.center K (B ⊗[K] C) := by
  intro x hx
  simp only [Subalgebra.mem_map, Subalgebra.mem_center_iff] at hx ⊢
  obtain ⟨b, hb0, rfl⟩ := hx
  intro bc
  induction bc using TensorProduct.inductionOn with
  | tmul b' c => simp [hb0]
  | add _ _ _ _ => simp_all [add_mul, mul_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant76b87bba9b4f8464003b1dd0028c1db008c114a2e4a6f000cee89ff36db0bccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant76b87bba9b4f8464003b1dd0028c1db008c114a2e4a6f000cee89ff36db0bccf.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8a6fc042fd1cb9ba3018c468742de4f942e6d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

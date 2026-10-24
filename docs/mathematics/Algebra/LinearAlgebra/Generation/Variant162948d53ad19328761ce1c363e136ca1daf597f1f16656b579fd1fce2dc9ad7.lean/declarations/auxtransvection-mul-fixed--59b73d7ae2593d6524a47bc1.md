# auxTransvection_mul_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09ebf517eda0c3de8a5828a1bbe938f71e700f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41b86eb9-96c6-eebe-b8c0-963ac41316a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86578b0d-a857-4acd-a0ed-eeb5525e6c67",
  "kind": "theorem",
  "lexical_name": "auxTransvection_mul_fixed",
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
  "slug": "auxtransvection-mul-fixed--59b73d7ae2593d6524a47bc1",
  "source": {
    "blob": "c09ebf517eda0c3de8a5828a1bbe938f71e700f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 170,
    "path": "GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59b73d7ae2593d6524a47bc197cbc6a89f3104727b45b1c705d5e6880b0513cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86578b0d-a857-4acd-a0ed-eeb5525e6c67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem auxTransvection_mul_fixed {f : Dual K V} {u : V}
    {hf : e.fixedSubmodule ⊔ K ∙ (e u - u) ≤ LinearMap.ker f} (hfu : f u = 1) :
    (auxTransvection hf * e).fixedSubmodule = e.fixedSubmodule ⊔ K ∙ u := by
  apply fixedSubmodule_transvection_mul
  · intro hu'
    replace hu' := hf (mem_sup_left hu')
    rw [mem_ker] at hu'
    simp [hu'] at hfu
  · rw [eq_bot_iff]
    rw [gc_map_comap, Submodule.comap_bot]
    exact le_trans le_sup_left hf
  · rw [← hfu, ← sub_eq_zero, ← map_sub, ← mem_ker]
    refine hf (mem_sup_right ?_)
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Generation/Variant162948d53ad19328761ce1c363e136ca1daf597f1f16656b579fd1fce2dc9ad7.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ebf517eda0c3de8a5828a1bbe938f71e700f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

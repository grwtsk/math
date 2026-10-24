# preVal_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "557787c8f32425dd40b7442d9826510c08600c5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf6f70c8-8fa3-3c74-ce3a-653c2fb20edf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0b48da6-9be3-95fa-04d2-2b7cc616f078",
  "kind": "theorem",
  "lexical_name": "preVal_add",
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
  "slug": "preval-add--31ea0109d10b1dd4b874b3a6",
  "source": {
    "blob": "557787c8f32425dd40b7442d9826510c08600c5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 388,
    "path": "GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31ea0109d10b1dd4b874b3a68089055248dea7df99905e8504de5d2d046fe4d9",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0b48da6-9be3-95fa-04d2-2b7cc616f078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preVal_add (x y : ModP O p) :
    preVal K v O p (x + y) ≤ max (preVal K v O p x) (preVal K v O p y) := by
  by_cases hx0 : x = 0
  · rw [hx0, zero_add]; exact le_max_right _ _
  by_cases hy0 : y = 0
  · rw [hy0, add_zero]; exact le_max_left _ _
  by_cases hxy0 : x + y = 0
  · rw [hxy0, preVal_zero]; exact zero_le _
  obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective x
  obtain ⟨s, rfl⟩ := Ideal.Quotient.mk_surjective y
  rw [← map_add (Ideal.Quotient.mk (Ideal.span {↑p})) r s] at hxy0 ⊢
  rw [preVal_mk hv hx0, preVal_mk hv hy0, preVal_mk hv hxy0, RingHom.map_add]; exact v.map_add _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `557787c8f32425dd40b7442d9826510c08600c5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

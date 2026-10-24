# le_comap_single_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e60bf5fb2621cad6e6988bde409a14016462c3b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:569528e2-b6a9-4509-f005-cd8d024fb4eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78f4a401-766d-48b6-c8cc-8624f32a2e6e",
  "kind": "theorem",
  "lexical_name": "le_comap_single_pi",
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
  "slug": "le-comap-single-pi--1a79fb5de0f5e2fd1a7e8dc2",
  "source": {
    "blob": "e60bf5fb2621cad6e6988bde409a14016462c3b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 390,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a79fb5de0f5e2fd1a7e8dc2556ba236e5c12586d728f7de386c64384913b450",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78f4a401-766d-48b6-c8cc-8624f32a2e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_comap_single_pi [DecidableEq ι] (p : (i : ι) → Submodule R (φ i)) {I i} :
    p i ≤ Submodule.comap (LinearMap.single R φ i : φ i →ₗ[R] _) (Submodule.pi I p) := by
  intro x hx
  rw [Submodule.mem_comap, Submodule.mem_pi]
  rintro j -
  rcases eq_or_ne j i with rfl | hne <;> simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60bf5fb2621cad6e6988bde409a14016462c3b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

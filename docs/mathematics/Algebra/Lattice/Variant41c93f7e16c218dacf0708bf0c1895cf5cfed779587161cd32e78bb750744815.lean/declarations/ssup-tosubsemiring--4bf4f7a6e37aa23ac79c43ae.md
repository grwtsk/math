# sSup_toSubsemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49b32bd83e8a3d594078fad84215f0c3e76463cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9c8244e-de60-69a8-5454-5ccbc18b3b7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5b83032-c9dd-e348-76ae-a80fde094991",
  "kind": "theorem",
  "lexical_name": "sSup_toSubsemiring",
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
  "slug": "ssup-tosubsemiring--4bf4f7a6e37aa23ac79c43ae",
  "source": {
    "blob": "49b32bd83e8a3d594078fad84215f0c3e76463cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bf4f7a6e37aa23ac79c43ae7465460303765e7b7ffb7165f2c5f74109f47547",
  "verification": {
    "reference": "docs/verification/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5b83032-c9dd-e348-76ae-a80fde094991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_toSubsemiring (S : Set (Subalgebra R A)) (hS : S.Nonempty) :
    (sSup S).toSubsemiring = sSup (toSubsemiring '' S) := by
  have h : toSubsemiring '' S = Subsemiring.closure '' (SetLike.coe '' S) := by
    rw [Set.image_image]
    congr! with x
    exact x.toSubsemiring.closure_eq.symm
  rw [h, sSup_image, ← Subsemiring.closure_sUnion, sSup_def, adjoin_toSubsemiring]
  congr 1
  rw [Set.union_eq_right]
  rintro _ ⟨x, rfl⟩
  obtain ⟨y, hy⟩ := hS
  simp only [Set.mem_sUnion, Set.mem_image, exists_exists_and_eq_and, SetLike.mem_coe]
  exact ⟨y, hy, algebraMap_mem y x⟩

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b32bd83e8a3d594078fad84215f0c3e76463cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mem_adjoin_of_map_mul

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
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80034eee-8993-e082-de63-0cb77f34560d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e3d32d2-5366-7428-68cd-cc935351a2f4",
  "kind": "theorem",
  "lexical_name": "mem_adjoin_of_map_mul",
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
  "slug": "mem-adjoin-of-map-mul--8157804f9b7f706a5446ada7",
  "source": {
    "blob": "49b32bd83e8a3d594078fad84215f0c3e76463cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 621,
    "path": "GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8157804f9b7f706a5446ada7a48dad4973b854337bcbd2be569011abc5d71954",
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

Occurrence: `result:5e3d32d2-5366-7428-68cd-cc935351a2f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_adjoin_of_map_mul {s} {x : A} {f : A →ₗ[R] B} (hf : ∀ a₁ a₂, f (a₁ * a₂) = f a₁ * f a₂)
    (h : x ∈ adjoin R s) : f x ∈ adjoin R (f '' (s ∪ {1})) := by
  induction h using adjoin_induction with
  | mem a ha => exact subset_adjoin ⟨a, ⟨Set.subset_union_left ha, rfl⟩⟩
  | algebraMap r =>
    have : f 1 ∈ adjoin R (f '' (s ∪ {1})) :=
      subset_adjoin ⟨1, ⟨Set.subset_union_right <| Set.mem_singleton 1, rfl⟩⟩
    convert Subalgebra.smul_mem (adjoin R (f '' (s ∪ {1}))) this r
    rw [algebraMap_eq_smul_one]
    exact f.map_smul _ _
  | add y z _ _ hy hz => simpa [hy, hz] using Subalgebra.add_mem _ hy hz
  | mul y z _ _ hy hz => simpa [hf, hy, hz] using Subalgebra.mul_mem _ hy hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b32bd83e8a3d594078fad84215f0c3e76463cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

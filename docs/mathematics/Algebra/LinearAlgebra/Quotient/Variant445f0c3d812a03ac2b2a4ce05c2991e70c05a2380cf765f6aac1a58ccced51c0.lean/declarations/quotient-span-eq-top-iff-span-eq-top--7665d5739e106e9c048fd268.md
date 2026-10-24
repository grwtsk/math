# quotient_span_eq_top_iff_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d89557a8f308c99a1d8257a53a6ba59b645b6cea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7280fcb-7eb7-b6d1-26d6-7aadb82d306b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f6f7046-a675-16d9-b921-baabcc479cf8",
  "kind": "theorem",
  "lexical_name": "quotient_span_eq_top_iff_span_eq_top",
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
  "slug": "quotient-span-eq-top-iff-span-eq-top--7665d5739e106e9c048fd268",
  "source": {
    "blob": "d89557a8f308c99a1d8257a53a6ba59b645b6cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7665d5739e106e9c048fd268d5a5df239939bfd8e60a99b72249f4ee902459f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f6f7046-a675-16d9-b921-baabcc479cf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_span_eq_top_iff_span_eq_top (s : Set S) :
    span (R ⧸ p) ((Ideal.Quotient.mk (I := pS)) '' s) = ⊤ ↔ span R s = ⊤ := by
  have H : (span (R ⧸ p) ((Ideal.Quotient.mk (I := pS)) '' s)).restrictScalars R =
      (span R s).map (IsScalarTower.toAlgHom R S (S ⧸ pS)) := by
    rw [map_span, ← restrictScalars_span R (R ⧸ p) Ideal.Quotient.mk_surjective,
      IsScalarTower.coe_toAlgHom', Ideal.Quotient.algebraMap_eq]
  constructor
  · intro hs
    rw [← top_le_iff]
    apply le_of_le_smul_of_le_jacobson_bot
    · exact Module.finite_def.mp ‹_›
    · exact (jacobson_eq_maximalIdeal ⊥ bot_ne_top).ge
    · rw [Ideal.smul_top_eq_map]
      rintro x -
      have : LinearMap.ker (IsScalarTower.toAlgHom R S (S ⧸ pS)) =
          restrictScalars R pS := by
        ext; simp [Ideal.Quotient.eq_zero_iff_mem]
      rw [← this, ← comap_map_eq, mem_comap, ← H, hs, restrictScalars_top]
      exact mem_top
  · intro hs
    rwa [hs, Submodule.map_top, LinearMap.range_eq_top.mpr,
      restrictScalars_eq_top_iff] at H
    rw [IsScalarTower.coe_toAlgHom', Ideal.Quotient.algebraMap_eq]
    exact Ideal.Quotient.mk_surjective

attribute [local instance] Ideal.Quotient.field

variable [Module.Free R S] {ι : Type*}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d89557a8f308c99a1d8257a53a6ba59b645b6cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

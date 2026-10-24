# surjective_ofLocalizationSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b92a432ad4121357050d828084461ed0f16ca534",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b04e2480-2a3a-0aed-eb25-7300fc91e688",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54b149a0-82ef-5f9b-a8c8-f0c650170dc7",
  "kind": "theorem",
  "lexical_name": "surjective_ofLocalizationSpan",
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
  "slug": "surjective-oflocalizationspan--3b49c4ee52d6f20fc18a4d32",
  "source": {
    "blob": "b92a432ad4121357050d828084461ed0f16ca534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 51,
    "path": "GRWTSK/Algebra/Surjective/Variant9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b49c4ee52d6f20fc18a4d32b56a18080d2c9ab7fc119ddb0452ed4e287b0f54",
  "verification": {
    "reference": "docs/verification/Algebra/Surjective/Variant9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54b149a0-82ef-5f9b-a8c8-f0c650170dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_ofLocalizationSpan : OfLocalizationSpan surjective := by
  introv R hs H
  skip
  letI := f.toAlgebra
  show Function.Surjective (Algebra.ofId R S)
  rw [← Algebra.range_top_iff_surjective, eq_top_iff]
  rintro x -
  obtain ⟨l, hl⟩ :=
    (Finsupp.mem_span_iff_total R s 1).mp (show _ ∈ Ideal.span s by rw [hs]; trivial)
  fapply
    Subalgebra.mem_of_finset_sum_eq_one_of_pow_smul_mem _ l.support (fun x : s => f x) fun x : s =>
      f (l x)
  · dsimp only; simp_rw [← _root_.map_mul, ← map_sum, ← f.map_one]; exact f.congr_arg hl
  · exact fun _ => Set.mem_range_self _
  · exact fun _ => Set.mem_range_self _
  · intro r
    obtain ⟨y, hy⟩ := H r (IsLocalization.mk' _ x (1 : Submonoid.powers (f r)))
    obtain ⟨z, ⟨_, n, rfl⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (r : R)) y
    erw [IsLocalization.map_mk', IsLocalization.eq] at hy
    obtain ⟨⟨_, m, rfl⟩, hm⟩ := hy
    refine' ⟨m + n, _⟩
    dsimp at hm ⊢
    simp_rw [_root_.one_mul, ← _root_.mul_assoc, ← map_pow, ← f.map_mul, ← pow_add, map_pow] at hm
    exact ⟨_, hm⟩
#align ring_hom.surjective_of_localization_span RingHom.surjective_ofLocalizationSpan

end RingHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Surjective/Variant9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Surjective/Variant9fce1d94f8a51654d629a2040783a6432e8efa38e50cc2d3d537bbce959ee8b6.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92a432ad4121357050d828084461ed0f16ca534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

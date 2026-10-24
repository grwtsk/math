# norm_eq_of_equiv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69260dc47ccc1474018e7f79593145a8bb6a2a7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2f15a39-5ce5-04ef-3b7d-bf20c878076d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c758e5e4-0c4d-1790-7c5c-51b423415310",
  "kind": "theorem",
  "lexical_name": "norm_eq_of_equiv_aux",
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
  "slug": "norm-eq-of-equiv-aux--8ffdecc10049358d6c600a09",
  "source": {
    "blob": "69260dc47ccc1474018e7f79593145a8bb6a2a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 296,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ffdecc10049358d6c600a09aabc04c0a5f06a9534569088af8830fd8e8cb665",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c758e5e4-0c4d-1790-7c5c-51b423415310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem norm_eq_of_equiv_aux {f g : PadicSeq p} (hf : ¬f ≈ 0) (hg : ¬g ≈ 0) (hfg : f ≈ g)
    (h : padicNorm p (f (stationaryPoint hf)) ≠ padicNorm p (g (stationaryPoint hg)))
    (hlt : padicNorm p (g (stationaryPoint hg)) < padicNorm p (f (stationaryPoint hf))) :
    False := by
  have hpn : 0 < padicNorm p (f (stationaryPoint hf)) - padicNorm p (g (stationaryPoint hg)) :=
    sub_pos_of_lt hlt
  obtain ⟨N, hN⟩ := hfg _ hpn
  let i := max N (max (stationaryPoint hf) (stationaryPoint hg))
  have hi : N ≤ i := le_max_left _ _
  have hN' := hN _ hi
  -- Porting note: originally `padic_index_simp [N, hf, hg] at hN' h hlt`
  rw [lift_index_left hf N (stationaryPoint hg), lift_index_right hg N (stationaryPoint hf)]
    at hN' h hlt
  have hpne : padicNorm p (f i) ≠ padicNorm p (-g i) := by rwa [← padicNorm.neg (g i)] at h
  rw [CauSeq.sub_apply, sub_eq_add_neg, add_eq_max_of_ne hpne, padicNorm.neg, max_eq_left_of_lt hlt]
    at hN'
  have : padicNorm p (f i) < padicNorm p (f i) := by
    apply lt_of_lt_of_le hN'
    apply sub_le_self
    apply padicNorm.nonneg
  exact lt_irrefl _ this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69260dc47ccc1474018e7f79593145a8bb6a2a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

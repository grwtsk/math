# PrimeSpectrum.isHomeomorph_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7cd15c759d891c9cb71a71037426618ae6cc2bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96460e4e-3879-7cde-30ca-ee68308d5c4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb9ddc6d-6dff-edc8-5dc9-dc60644db60a",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.isHomeomorph_comap",
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
  "slug": "primespectrum-ishomeomorph-comap--c3478910c8368fdd1122a670",
  "source": {
    "blob": "d7cd15c759d891c9cb71a71037426618ae6cc2bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 35,
    "path": "GRWTSK/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3478910c8368fdd1122a670ea96f960cc582174933911e9a93fc5e1568a7392",
  "verification": {
    "reference": "docs/verification/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb9ddc6d-6dff-edc8-5dc9-dc60644db60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.isHomeomorph_comap (f : R →+* S) (H : ∀ (x : S), ∃ n > 0, x ^ n ∈ f.range)
    (hker : RingHom.ker f ≤ nilradical R) : IsHomeomorph (comap f) := by
  have h1 : Function.Injective (comap f) := by
    intro q q' hqq'
    ext x
    obtain ⟨n, hn, y, hy⟩ := H x
    rw [← q.2.pow_mem_iff_mem _ hn, ← q'.2.pow_mem_iff_mem _ hn, ← hy]
    rw [PrimeSpectrum.ext_iff, SetLike.ext_iff] at hqq'
    apply hqq'
  have hint : f.kerLift.IsIntegral := fun x ↦
    have ⟨n, hn, y, hy⟩ := H x
    let _ := f.kerLift.toAlgebra
    IsIntegral.of_pow hn (hy ▸ f.kerLift.isIntegralElem_map (x := ⟦y⟧))
  have hbij : Function.Bijective (comap f) :=
    ⟨h1, (comap_quotientMk_bijective_of_le_nilradical hker).2.comp <|
      hint.specComap_surjective f.kerLift_injective⟩
  refine ⟨(comap f).continuous, ?_, h1, hbij.2⟩
  rw [isTopologicalBasis_basic_opens.isOpenMap_iff]
  rintro - ⟨s, rfl⟩
  obtain ⟨n, hn, r, hr⟩ := H s
  have : (comap f) '' (basicOpen s) = basicOpen r :=
    (Set.eq_preimage_iff_image_eq hbij).mp <| by rw [← basicOpen_pow _ n hn, ← hr]; rfl
  exact this ▸ isOpen_basicOpen

/-- Purely inseparable field extensions are universal homeomorphisms. -/
@[stacks 0BRA "Special case for purely inseparable field extensions"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7cd15c759d891c9cb71a71037426618ae6cc2bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

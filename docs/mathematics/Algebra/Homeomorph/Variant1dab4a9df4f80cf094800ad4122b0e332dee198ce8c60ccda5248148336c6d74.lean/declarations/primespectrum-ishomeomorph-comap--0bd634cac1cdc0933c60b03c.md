# PrimeSpectrum.isHomeomorph_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e7e5002-9149-02a2-add7-c018d3b1b7c2",
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
  "slug": "primespectrum-ishomeomorph-comap--0bd634cac1cdc0933c60b03c",
  "source": {
    "blob": "c82bc15aabdf28c0b1cb60e6304533c79851d986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 43,
    "path": "GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd634cac1cdc0933c60b03c75ba0ea0675c564009b8ceb03be8f54b5d96fd90",
  "verification": {
    "reference": "docs/verification/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e7e5002-9149-02a2-add7-c018d3b1b7c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–68.

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

[Verification target and public status](../../../../../verification/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82bc15aabdf28c0b1cb60e6304533c79851d986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

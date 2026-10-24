# HenselianLocalRing.TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:619164f5-c0b5-4151-74e6-78b83753f9ac",
  "kind": "theorem",
  "lexical_name": "HenselianLocalRing.TFAE",
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
  "slug": "henselianlocalring-tfae--5163d4ebc473f2cff8462449",
  "source": {
    "blob": "4674ab1d89067d1c4ed36a6ba90f70bfa6b0efda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 129,
    "path": "GRWTSK/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5163d4ebc473f2cff846244979f5f7b756127c11fc13cd8ad5b6a267fe4228ea",
  "verification": {
    "reference": "docs/verification/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:619164f5-c0b5-4151-74e6-78b83753f9ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HenselianLocalRing.TFAE (R : Type u) [CommRing R] [LocalRing R] :
    TFAE
      [HenselianLocalRing R,
        ∀ (f : R[X]) (_ : f.Monic) (a₀ : ResidueField R) (_ : aeval a₀ f = 0)
          (_ : aeval a₀ (derivative f )≠ 0), ∃ a : R, f.IsRoot a ∧ residue R a = a₀,
        ∀ {K : Type u} [Field K],
          ∀ (φ : R →+* K) (_ : Surjective φ) (f : R[X]) (_ : f.Monic) (a₀ : K)
            (_ : f.eval₂ φ a₀ = 0) (_ : f.derivative.eval₂ φ a₀ ≠ 0),
            ∃ a : R, f.IsRoot a ∧ φ a = a₀] := by
  tfae_have _3_2 : 3 → 2;
  · intro H
    exact H (residue R) Ideal.Quotient.mk_surjective
  tfae_have _2_1 : 2 → 1
  · intro H
    constructor
    intro f hf a₀ h₁ h₂
    specialize H f hf (residue R a₀)
    have aux := flip mem_nonunits_iff.mp h₂
    simp only [aeval_def, ResidueField.algebraMap_eq, eval₂_at_apply, ←
      Ideal.Quotient.eq_zero_iff_mem, ← LocalRing.mem_maximalIdeal] at H h₁ aux
    obtain ⟨a, ha₁, ha₂⟩ := H h₁ aux
    refine' ⟨a, ha₁, _⟩
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    rwa [← sub_eq_zero, ← RingHom.map_sub] at ha₂
  tfae_have _1_3 : 1 → 3
  · intro hR K _K φ hφ f hf a₀ h₁ h₂
    obtain ⟨a₀, rfl⟩ := hφ a₀
    have H := HenselianLocalRing.is_henselian f hf a₀
    simp only [← ker_eq_maximalIdeal φ hφ, eval₂_at_apply, RingHom.mem_ker φ] at H h₁ h₂
    obtain ⟨a, ha₁, ha₂⟩ := H h₁ (by
      contrapose! h₂
      rwa [← mem_nonunits_iff, ← LocalRing.mem_maximalIdeal, ← LocalRing.ker_eq_maximalIdeal φ hφ,
        RingHom.mem_ker] at h₂)
    refine' ⟨a, ha₁, _⟩
    rwa [φ.map_sub, sub_eq_zero] at ha₂
  tfae_finish
#align henselian_local_ring.tfae HenselianLocalRing.TFAE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Henselian/Varianta1e426cce041426c9b7443040ab5bc6951e28c693ff0d920d6ec22c68ab5587d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4674ab1d89067d1c4ed36a6ba90f70bfa6b0efda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

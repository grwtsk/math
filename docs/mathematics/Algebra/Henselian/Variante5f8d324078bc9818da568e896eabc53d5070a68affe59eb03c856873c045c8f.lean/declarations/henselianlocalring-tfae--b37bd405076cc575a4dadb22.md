# HenselianLocalRing.TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c78d7f8f-d79e-739b-b30b-fcf535a6b33e",
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
  "slug": "henselianlocalring-tfae--b37bd405076cc575a4dadb22",
  "source": {
    "blob": "c89fdd348e34eae47fae017a254675e8780bdea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 122,
    "path": "GRWTSK/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37bd405076cc575a4dadb224b5567f60813d7f6f3f9bd9e689814d7a4bce3f4",
  "verification": {
    "reference": "docs/verification/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c78d7f8f-d79e-739b-b30b-fcf535a6b33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HenselianLocalRing.TFAE (R : Type u) [CommRing R] [IsLocalRing R] :
    TFAE
      [HenselianLocalRing R,
        ∀ f : R[X], f.Monic → ∀ a₀ : ResidueField R, aeval a₀ f = 0 →
          aeval a₀ (derivative f) ≠ 0 → ∃ a : R, f.IsRoot a ∧ residue R a = a₀,
        ∀ {K : Type u} [Field K],
          ∀ (φ : R →+* K), Surjective φ → ∀ f : R[X], f.Monic → ∀ a₀ : K,
            f.eval₂ φ a₀ = 0 → f.derivative.eval₂ φ a₀ ≠ 0 → ∃ a : R, f.IsRoot a ∧ φ a = a₀] := by
  tfae_have 3 → 2
  | H => H (residue R) Ideal.Quotient.mk_surjective
  tfae_have 2 → 1
  | H => by
    constructor
    intro f hf a₀ h₁ h₂
    specialize H f hf (residue R a₀)
    have aux := flip mem_nonunits_iff.mp h₂
    simp only [aeval_def, ResidueField.algebraMap_eq, eval₂_at_apply, ←
      Ideal.Quotient.eq_zero_iff_mem, ← IsLocalRing.mem_maximalIdeal] at H h₁ aux
    obtain ⟨a, ha₁, ha₂⟩ := H h₁ aux
    refine ⟨a, ha₁, ?_⟩
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    rwa [← sub_eq_zero, ← RingHom.map_sub] at ha₂
  tfae_have 1 → 3
  | hR, K, _K, φ, hφ, f, hf, a₀, h₁, h₂ => by
    obtain ⟨a₀, rfl⟩ := hφ a₀
    have H := HenselianLocalRing.is_henselian f hf a₀
    simp only [← ker_eq_maximalIdeal φ hφ, eval₂_at_apply, RingHom.mem_ker] at H h₁ h₂
    obtain ⟨a, ha₁, ha₂⟩ := H h₁ (by
      contrapose! h₂
      rwa [← mem_nonunits_iff, ← mem_maximalIdeal, ← ker_eq_maximalIdeal φ hφ,
        RingHom.mem_ker] at h₂)
    refine ⟨a, ha₁, ?_⟩
    rwa [φ.map_sub, sub_eq_zero] at ha₂
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Henselian/Variante5f8d324078bc9818da568e896eabc53d5070a68affe59eb03c856873c045c8f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c89fdd348e34eae47fae017a254675e8780bdea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

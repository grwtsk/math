# Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4249ba9-2848-d97e-c4f8-b9072a907227",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective",
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
  "slug": "ideal-exists-comap-eq-of-mem-minimalprimes-of-injective--13439eb3bb62222cb3bee694",
  "source": {
    "blob": "d8fda48eef7d03fb60c2504b6ed42f32ac11305f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 107,
    "path": "GRWTSK/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13439eb3bb62222cb3bee694ada96a5d5ce0964389b752bc0c4ed9953895f7ff",
  "verification": {
    "reference": "docs/verification/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4249ba9-2848-d97e-c4f8-b9072a907227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective {f : R →+* S}
    (hf : Function.Injective f) (p) (H : p ∈ minimalPrimes R) :
    ∃ p' : Ideal S, p'.IsPrime ∧ p'.comap f = p := by
  have := H.1.1
  have : Nontrivial (Localization (Submonoid.map f p.primeCompl)) := by
    refine' ⟨⟨1, 0, _⟩⟩
    convert (IsLocalization.map_injective_of_injective p.primeCompl (Localization.AtPrime p)
        (Localization <| p.primeCompl.map f) hf).ne one_ne_zero
    · rw [map_one]
    · rw [map_zero]
  obtain ⟨M, hM⟩ := Ideal.exists_maximal (Localization (Submonoid.map f p.primeCompl))
  refine' ⟨M.comap (algebraMap S <| Localization (Submonoid.map f p.primeCompl)), inferInstance, _⟩
  rw [Ideal.comap_comap, ← @IsLocalization.map_comp _ _ _ _ _ _ _ _ Localization.isLocalization
      _ _ _ _ p.primeCompl.le_comap_map _ Localization.isLocalization,
    ← Ideal.comap_comap]
  suffices _ ≤ p by exact this.antisymm (H.2 ⟨inferInstance, bot_le⟩ this)
  intro x hx
  by_contra h
  apply hM.ne_top
  apply M.eq_top_of_isUnit_mem hx
  apply IsUnit.map
  apply IsLocalization.map_units _ (show p.primeCompl from ⟨x, h⟩)
#align ideal.exists_comap_eq_of_mem_minimal_primes_of_injective Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8fda48eef7d03fb60c2504b6ed42f32ac11305f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

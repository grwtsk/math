# stabilizer_ρ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a7e6b24-d6a6-4995-fadb-efe0435867d5",
  "kind": "lemma",
  "lexical_name": "stabilizer_ρ",
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
  "slug": "stabilizer--70c06ef955ecf57fe3ffe937",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 756,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c06ef955ecf57fe3ffe937addabd1ffb69d354bd6a83bedd97c0c58390493d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a7e6b24-d6a6-4995-fadb-efe0435867d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 756–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stabilizer_ρ :
    g • ρ = ρ ↔ g ∈ ({1, -1, S * T, -(S * T), T⁻¹ * S, -(T⁻¹ * S)} : Finset SL(2, ℤ)) := by
  constructor
  · intro hg
    have neS : g ≠ S ∧ g ≠ -S := by
      have : S • ρ ≠ ρ := by
        rw [ne_eq, UpperHalfPlane.ext_iff, modular_S_smul, coe_mk, Complex.ext_iff]
        norm_num [ρ, ← pow_two, div_pow]
      grind [SL_neg_smul]
    have neT : g ≠ T ∧ g ≠ -T ∧ g ≠ T⁻¹ ∧ g ≠ -T⁻¹ := by
      have : T • ρ ≠ ρ := by
        rw [ne_eq, UpperHalfPlane.ext_iff, modular_T_smul, coe_vadd]
        norm_num
      have : T⁻¹ • ρ ≠ ρ := by rwa [ne_eq, inv_smul_eq_iff, eq_comm]
      grind [SL_neg_smul]
    have neTST : g ≠ T * S * T ∧ g ≠ -(T * S * T) := by
      have : (T * S * T) • ρ ≠ ρ := by
        simp only [mul_smul, modular_T_smul, modular_S_smul,
          ne_eq, UpperHalfPlane.ext_iff, Complex.ext_iff]
        norm_num [ρ, ← pow_two, div_pow, normSq]
      grind [SL_neg_smul]
    have := cases_of_mem_fd_smul_mem_fd ρ_mem_fd (hg ▸ ρ_mem_fd)
    norm_num [UpperHalfPlane.ext_iff, Complex.ext_iff, norm_ρ, ρ, neS, neT, neTST] at this
    grind
  · suffices (S * T) • ρ = ρ ∧ (T⁻¹ * S) • ρ = ρ by simp +contextual [-sl_moeb, or_imp, this]
    rw [mul_smul T⁻¹, inv_smul_eq_iff, ← eq_inv_smul_iff (g := S), S_inv, SL_neg_smul,
      mul_smul, eq_comm, and_self, modular_T_smul, modular_S_smul, UpperHalfPlane.ext_iff]
    norm_num [ρ, Complex.ext_iff, normSq, ← pow_two, div_pow]

/-- Second Fundamental Domain Lemma: if `z ∈ 𝒟ᵒ` and `g • z ∈ 𝒟`, then `g = ± 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L756).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
